package com.artisan.sdstorage;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.storage.DiskInfo;
import android.os.storage.StorageManager;
import android.os.storage.VolumeInfo;
import android.util.Log;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/**
 * ArtisanROM: switch the microSD card between portable storage and adoptable
 * (internal, encrypted) storage. Lives inside SecSettings (system uid).
 */
public class SdStorageModeActivity extends Activity {
    private static final String TAG = "ArtisanSdStorage";
    private static final int MOVE_SUCCEEDED = -100;

    private StorageManager mSm;
    private PackageManager mPm;
    private Handler mUi;
    private boolean mDe;
    private ProgressDialog mProgress;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mSm = getSystemService(StorageManager.class);
        mPm = getPackageManager();
        mUi = new Handler(Looper.getMainLooper());
        mDe = "de".equals(Locale.getDefault().getLanguage());
        showMain();
    }

    private String t(String de, String en) {
        return mDe ? de : en;
    }

    private int dialogTheme() {
        int night = getResources().getConfiguration().uiMode & Configuration.UI_MODE_NIGHT_MASK;
        return night == Configuration.UI_MODE_NIGHT_YES
                ? android.R.style.Theme_DeviceDefault_Dialog_Alert
                : android.R.style.Theme_DeviceDefault_Light_Dialog_Alert;
    }

    private AlertDialog.Builder builder() {
        AlertDialog.Builder b = new AlertDialog.Builder(this, dialogTheme());
        b.setCancelable(false);
        return b;
    }

    // ---- state -------------------------------------------------------------

    private DiskInfo findSdDisk() {
        List<DiskInfo> disks = mSm.getDisks();
        if (disks == null) return null;
        for (DiskInfo d : disks) {
            if (d != null && d.isSd()) return d;
        }
        return null;
    }

    private VolumeInfo findVolume(DiskInfo disk, int type) {
        List<VolumeInfo> vols = mSm.getVolumes();
        if (vols == null || disk == null) return null;
        for (VolumeInfo v : vols) {
            if (v != null && v.getType() == type && disk.getId().equals(v.getDiskId())) return v;
        }
        return null;
    }

    // ---- main dialog -------------------------------------------------------

    private void showMain() {
        final DiskInfo disk = findSdDisk();
        if (disk == null) {
            builder().setTitle(t("SD-Karte", "SD card"))
                    .setMessage(t("Es ist keine SD-Karte eingelegt.", "No SD card inserted."))
                    .setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { @Override public void onClick(DialogInterface d, int w) { finish(); } })
                    .show();
            return;
        }
        final VolumeInfo priv = findVolume(disk, VolumeInfo.TYPE_PRIVATE);
        final boolean isInternal = priv != null;

        String msg;
        String action;
        if (isInternal) {
            msg = t("Die SD-Karte wird aktuell als interner Speicher genutzt (verschlüsselt, nur in diesem Gerät lesbar).\n\n"
                    + "Als tragbaren Speicher einrichten? Apps auf der Karte werden vorher auf den internen Speicher verschoben. "
                    + "Danach wird die Karte formatiert, alle Daten darauf werden gelöscht.",
                    "The SD card is currently used as internal storage (encrypted, readable only on this device).\n\n"
                    + "Set it up as portable storage? Apps on the card are moved back to internal storage first. "
                    + "The card is then formatted and all data on it is erased.");
            action = t("Als tragbar einrichten", "Use as portable");
        } else {
            msg = t("Die SD-Karte wird aktuell als tragbarer Speicher genutzt.\n\n"
                    + "Als internen Speicher einrichten? Die Karte wird formatiert und verschlüsselt. "
                    + "Alle Daten darauf werden gelöscht, und sie ist danach nur noch in diesem Gerät lesbar.",
                    "The SD card is currently used as portable storage.\n\n"
                    + "Set it up as internal storage? The card is formatted and encrypted. "
                    + "All data on it is erased and it will only be readable on this device.");
            action = t("Als intern einrichten", "Use as internal");
        }
        builder().setTitle(t("SD-Karte als internen Speicher nutzen", "Use SD card as internal storage"))
                .setMessage(msg)
                .setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() { @Override public void onClick(DialogInterface d, int w) { finish(); } })
                .setPositiveButton(action, new DialogInterface.OnClickListener() { @Override public void onClick(DialogInterface d, int w) { if (isInternal) toPortable(disk, priv); else confirmToInternal(disk); } })
                .show();
    }

    // ---- portable -> internal ----------------------------------------------

    private void confirmToInternal(final DiskInfo disk) {
        builder().setTitle(t("Alle Daten löschen?", "Erase all data?"))
                .setMessage(t("Alle Daten auf der SD-Karte werden unwiderruflich gelöscht.",
                        "All data on the SD card will be permanently erased."))
                .setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() { @Override public void onClick(DialogInterface d, int w) { finish(); } })
                .setPositiveButton(t("Löschen und einrichten", "Erase and set up"), new DialogInterface.OnClickListener() { @Override public void onClick(DialogInterface d, int w) { 
                        runWork(t("SD-Karte wird formatiert und verschlüsselt…", "Formatting and encrypting SD card…"), new Work() {
                            @Override public String run() throws Exception {
                                mSm.partitionPrivate(disk.getId());
                                return null;
                            }
                        }, t("Die SD-Karte wird jetzt als interner, verschlüsselter Speicher genutzt.",
                                "The SD card is now used as encrypted internal storage."));
                    } })
                .show();
    }

    // ---- internal -> portable ----------------------------------------------

    private void toPortable(final DiskInfo disk, final VolumeInfo priv) {
        final String fsUuid = priv.getFsUuid();
        final List<String> pkgs = new ArrayList<>();
        final List<String> labels = new ArrayList<>();
        for (ApplicationInfo ai : mPm.getInstalledApplications(0)) {
            if (fsUuid != null && fsUuid.equals(ai.volumeUuid)) {
                pkgs.add(ai.packageName);
                labels.add(String.valueOf(ai.loadLabel(mPm)));
            }
        }
        final boolean primaryOnSd = fsUuid != null && fsUuid.equals(mSm.getPrimaryStorageUuid());

        StringBuilder sb = new StringBuilder();
        if (primaryOnSd) {
            sb.append(t("• Fotos, Downloads und andere Dateien liegen auf der Karte und werden zurück auf den internen Speicher verschoben.\n",
                    "• Photos, downloads and other files are on the card and will be moved back to internal storage.\n"));
        }
        if (!pkgs.isEmpty()) {
            sb.append(t("• Diese Apps werden zurück auf den internen Speicher verschoben:\n",
                    "• These apps will be moved back to internal storage:\n"));
            for (String l : labels) sb.append("   – ").append(l).append('\n');
        }
        sb.append('\n').append(t("Danach wird die SD-Karte formatiert. Alle restlichen Daten darauf werden gelöscht.",
                "The SD card is then formatted. All remaining data on it is erased."));

        builder().setTitle(t("Als tragbar einrichten?", "Use as portable?"))
                .setMessage(sb.toString())
                .setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() { @Override public void onClick(DialogInterface d, int w) { finish(); } })
                .setPositiveButton(t("Fortfahren", "Continue"), new DialogInterface.OnClickListener() { @Override public void onClick(DialogInterface d, int w) { 
                        runWork(t("Daten werden verschoben…", "Moving data…"), new Work() { @Override public String run() throws Exception {
                            VolumeInfo internal = mSm.findVolumeById(VolumeInfo.ID_PRIVATE_INTERNAL);
                            if (internal == null) return t("Interner Speicher nicht gefunden.", "Internal storage not found.");
                            if (primaryOnSd) {
                                setProgressText(t("Dateien werden verschoben…", "Moving files…"));
                                String err = waitMove(mPm.movePrimaryStorage(internal));
                                if (err != null) return err;
                            }
                            for (int i = 0; i < pkgs.size(); i++) {
                                setProgressText(t("App wird verschoben: ", "Moving app: ") + labels.get(i)
                                        + " (" + (i + 1) + "/" + pkgs.size() + ")");
                                String err = waitMove(mPm.movePackage(pkgs.get(i), internal));
                                if (err != null) return labels.get(i) + ": " + err;
                            }
                            setProgressText(t("SD-Karte wird formatiert…", "Formatting SD card…"));
                            mSm.partitionPublic(disk.getId());
                            if (fsUuid != null) {
                                try {
                                    mSm.forgetVolume(fsUuid);
                                } catch (Exception e) {
                                    Log.w(TAG, "forgetVolume failed", e);
                                }
                            }
                            return null;
                        } }, t("Die SD-Karte wird jetzt als tragbarer Speicher genutzt.",
                                "The SD card is now used as portable storage."));
                    } })
                .show();
    }

    /** Waits for a PackageManager move; returns null on success or an error text. */
    private String waitMove(int moveId) throws InterruptedException {
        long deadline = System.currentTimeMillis() + 60L * 60L * 1000L;
        while (System.currentTimeMillis() < deadline) {
            int s = mPm.getMoveStatus(moveId);
            if (s == MOVE_SUCCEEDED) return null;
            if (s < 0) return t("Verschieben fehlgeschlagen (Code ", "Move failed (code ") + s + ")";
            Thread.sleep(500);
        }
        return t("Zeitüberschreitung beim Verschieben.", "Move timed out.");
    }

    // ---- background work -----------------------------------------------------

    private interface Work {
        /** @return null on success, otherwise an error message */
        String run() throws Exception;
    }

    @SuppressWarnings("deprecation")
    private void runWork(String title, final Work work, final String okMessage) {
        mProgress = new ProgressDialog(this, dialogTheme());
        mProgress.setIndeterminate(true);
        mProgress.setCancelable(false);
        mProgress.setMessage(title);
        mProgress.show();
        new Thread(new Runnable() { @Override public void run() {
            String err;
            try {
                err = work.run();
            } catch (Throwable e) {
                Log.e(TAG, "SD storage mode switch failed", e);
                err = String.valueOf(e.getMessage() != null ? e.getMessage() : e);
            }
            final String result = err;
            mUi.post(new Runnable() { @Override public void run() {
                if (mProgress != null) mProgress.dismiss();
                builder().setTitle(result == null ? t("Fertig", "Done") : t("Fehler", "Error"))
                        .setMessage(result == null ? okMessage : result)
                        .setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { @Override public void onClick(DialogInterface d, int w) { finish(); } })
                        .show();
            } });
        } }, "ArtisanSdStorage").start();
    }

    private void setProgressText(final String text) {
        mUi.post(new Runnable() { @Override public void run() {
            if (mProgress != null) mProgress.setMessage(text);
        } });
    }
}

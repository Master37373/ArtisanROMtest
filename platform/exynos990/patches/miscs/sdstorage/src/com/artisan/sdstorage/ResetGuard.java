package com.artisan.sdstorage;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.storage.DiskInfo;
import android.os.storage.StorageManager;
import android.os.storage.VolumeInfo;
import android.util.Log;

import com.android.settings.MainClearConfirm;

import java.util.List;
import java.util.Locale;

/**
 * ArtisanROM: called first thing in MainClearConfirm.onResetButtonClick().
 * If the SD card is used as (encrypted) internal storage, the factory reset would
 * destroy its key and leave an unreadable card behind. Warn the user and only
 * continue once he agrees that the card is formatted as portable storage as part
 * of the reset (EXTRA_WIPE_EXTERNAL_STORAGE -> StorageManager.wipeAdoptableDisks()).
 */
public final class ResetGuard {
    private static final String TAG = "ArtisanResetGuard";
    private static final int MATCH_ANY_USER = 0x00400000;
    private static MainClearConfirm sAllowOnce;

    private ResetGuard() { }

    /** @return true if the click was handled here and the caller must return. */
    public static boolean intercept(final MainClearConfirm f) {
        try {
            if (sAllowOnce == f) {
                sAllowOnce = null;
                return false;
            }
            final Activity a = f.getActivity();
            if (a == null) return false;
            StorageManager sm = a.getSystemService(StorageManager.class);
            VolumeInfo priv = findAdoptedSd(sm);
            if (priv == null) return false;

            boolean de = "de".equals(Locale.getDefault().getLanguage());
            String fsUuid = priv.getFsUuid();
            boolean filesOnSd = fsUuid != null && fsUuid.equals(sm.getPrimaryStorageUuid());
            int apps = 0;
            PackageManager pm = a.getPackageManager();
            List<ApplicationInfo> list = pm.getInstalledApplications(MATCH_ANY_USER);
            if (list != null && fsUuid != null) {
                for (ApplicationInfo ai : list) {
                    if (fsUuid.equals(ai.volumeUuid)) apps++;
                }
            }

            StringBuilder sb = new StringBuilder();
            sb.append(de
                    ? "Die SD-Karte wird als interner Speicher genutzt. Sie ist verschlüsselt und an dieses Gerät gebunden. "
                      + "Beim Zurücksetzen wird der Schlüssel gelöscht – die Daten auf der Karte sind danach nicht mehr lesbar.\n\n"
                    : "The SD card is used as internal storage. It is encrypted and tied to this device. "
                      + "Resetting deletes the key – the data on the card can no longer be read afterwards.\n\n");
            if (filesOnSd || apps > 0) {
                sb.append(de ? "Auf der Karte liegen:\n" : "Stored on the card:\n");
                if (filesOnSd) sb.append(de ? "• Fotos, Videos, Downloads und andere Dateien\n" : "• Photos, videos, downloads and other files\n");
                if (apps > 0) sb.append(de ? "• " + apps + (apps == 1 ? " App\n" : " Apps\n") : "• " + apps + (apps == 1 ? " app\n" : " apps\n"));
                sb.append('\n');
            }
            sb.append(de
                    ? "Sichere wichtige Dateien vorher, z. B. auf einen PC oder in die Cloud.\n\n"
                      + "Damit die Karte danach sofort wieder nutzbar ist, wird sie beim Zurücksetzen mit gelöscht "
                      + "und als tragbarer Speicher formatiert."
                    : "Back up important files first, e.g. to a PC or the cloud.\n\n"
                      + "So that the card can be used again right away, it is erased as part of the reset "
                      + "and formatted as portable storage.");

            int night = a.getResources().getConfiguration().uiMode & Configuration.UI_MODE_NIGHT_MASK;
            int theme = night == Configuration.UI_MODE_NIGHT_YES
                    ? android.R.style.Theme_DeviceDefault_Dialog_Alert
                    : android.R.style.Theme_DeviceDefault_Light_Dialog_Alert;
            AlertDialog.Builder b = new AlertDialog.Builder(a, theme)
                    .setTitle(de ? "SD-Karte wird mit gelöscht" : "SD card will be erased too")
                    .setMessage(sb.toString())
                    .setNegativeButton(android.R.string.cancel, null)
                    .setPositiveButton(de ? "Karte mit löschen" : "Erase card too", new DialogInterface.OnClickListener() {
                        @Override public void onClick(DialogInterface d, int w) {
                            f.mEraseSdCard = true;                  // -> EXTRA_WIPE_EXTERNAL_STORAGE
                            f.mCanEraseExternalOnFuseSystem = false; // skip the portable-card format wizard
                            sAllowOnce = f;
                            f.onResetButtonClick();
                        }
                    });
            final Intent files = a.getPackageManager().getLaunchIntentForPackage("com.sec.android.app.myfiles");
            if (files != null) {
                b.setNeutralButton(de ? "Eigene Dateien" : "My Files", new DialogInterface.OnClickListener() {
                    @Override public void onClick(DialogInterface d, int w) {
                        try { a.startActivity(files); } catch (Exception e) { Log.w(TAG, "My Files", e); }
                    }
                });
            }
            b.show();
            return true;
        } catch (Throwable t) {
            // never block the reset because of this helper
            Log.e(TAG, "SD card check failed", t);
            return false;
        }
    }

    private static VolumeInfo findAdoptedSd(StorageManager sm) {
        List<VolumeInfo> vols = sm.getVolumes();
        if (vols == null) return null;
        for (VolumeInfo v : vols) {
            if (v == null || v.getType() != VolumeInfo.TYPE_PRIVATE || v.getDiskId() == null) continue;
            DiskInfo d = sm.findDiskById(v.getDiskId());
            if (d != null && d.isSd()) return v;
        }
        return null;
    }
}

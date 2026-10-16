package com.masterrom.sdstorage;

import android.content.Context;
import android.content.Intent;
import android.os.storage.DiskInfo;
import android.os.storage.StorageManager;
import android.os.storage.VolumeInfo;

import androidx.preference.Preference;

import com.android.settings.core.BasePreferenceController;
import com.samsung.android.settings.cube.ControlResult;
import com.samsung.android.settings.cube.ControlValue;
import com.samsung.android.settings.cube.Controllable;

import java.util.List;
import java.util.Locale;

/** MasterROM: state-dependent title/summary for the SD card storage mode entry. */
public class SdStoragePreferenceController extends BasePreferenceController {

    public SdStoragePreferenceController(Context context, String key) {
        super(context, key);
    }

    private static String t(String de, String en) {
        return "de".equals(Locale.getDefault().getLanguage()) ? de : en;
    }

    @Override
    public int getAvailabilityStatus() {
        return 0; // AVAILABLE
    }

    @Override
    public void updateState(Preference preference) {
        super.updateState(preference);
        if (preference == null) return;
        try {
            StorageManager sm = mContext.getSystemService(StorageManager.class);
            DiskInfo disk = null;
            List<DiskInfo> disks = sm.getDisks();
            if (disks != null) {
                for (DiskInfo d : disks) {
                    if (d != null && d.isSd()) { disk = d; break; }
                }
            }
            if (disk == null) {
                preference.setTitle(t("SD-Karte", "SD card"));
                preference.setSummary(t("Keine SD-Karte eingelegt", "No SD card inserted"));
                return;
            }
            VolumeInfo priv = null;
            List<VolumeInfo> vols = sm.getVolumes();
            if (vols != null) {
                for (VolumeInfo v : vols) {
                    if (v != null && v.getType() == VolumeInfo.TYPE_PRIVATE && disk.getId().equals(v.getDiskId())) {
                        priv = v; break;
                    }
                }
            }
            if (priv != null) {
                String u = priv.getFsUuid();
                boolean filesOnSd = u != null && u.equals(sm.getPrimaryStorageUuid());
                preference.setTitle(t("SD-Karte wieder tragbar machen", "Make SD card portable again"));
                preference.setSummary(t("Intern, verschlüsselt · Dateien: ", "Internal, encrypted · Files: ")
                        + (filesOnSd ? t("SD-Karte", "SD card") : t("Interner Speicher", "Internal storage")));
            } else {
                preference.setTitle(t("SD-Karte als internen Speicher nutzen", "Use SD card as internal storage"));
                preference.setSummary(t("Tragbar, nicht verschlüsselt", "Portable, not encrypted"));
            }
        } catch (Throwable e) {
            // keep the static title/summary from the XML
        }
    }

    // Samsung "cube" (Controllable) plumbing: not used for this entry.
    @Override public Intent getLaunchIntent() { return null; }
    @Override public String getStatusText() { return null; }
    @Override public ControlValue getValue() { return null; }
    @Override public boolean isControllable() { return false; }
    @Override public Controllable.ControllableType needUserInteraction(Object o) { return null; }
    @Override public boolean runDefaultAction() { return false; }
    @Override public int getSliceHighlightMenuRes() { return 0; }
    @Override public ControlResult setValue(ControlValue v) { return null; }
}

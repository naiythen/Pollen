#!/bin/bash

if [ $(id -u) -ne 0 ]; then
    echo "Please run this script as root. You can do so by using 'sudo su'."
    exit
fi

echo "+##############################################+"
echo "| Welcome to Pollen!                           |"
echo "| The User Policy Editor                       |"
echo "| -------------------------------------------- |"
echo "| Developers:                                  |"
echo "| - OlyB                                       |"
echo "| - Rafflesia                                  |"
echo "| - r58Playz                                   |"
echo "+##############################################+"
echo "May Ultrablue rest in peace, o7."


sleep 1

mkdir -p /tmp/overlay/etc/opt/chrome/policies/managed
echo '{
  "URLBlocklist": [],
  "SystemFeaturesDisableList": [],
  "EditBookmarksEnabled": true,
  "ChromeOsMultiProfileUserBehavior": "unrestricted",
  "DeveloperToolsAvailability": 1,
  "DefaultPopupsSetting": 1,
  "AllowDeletingBrowserHistory": true,
  "AllowDinosaurEasterEgg": true,
  "IncognitoModeAvailability": 0,
  "AllowScreenLock": true,
  "ExtensionAllowedTypes": null,
  "ExtensionInstallAllowlist": null,
  "ExtensionInstallBlocklist": null,
  "ExtensionInstallForcelist": [
  "donbapingkdboklmjcfmpagmdohkgphg;https://clients2.google.com/service/update2/crx",
  "highjifikhjfbmofamfiheofilpcmmfg;https://clients2.google.com/service/update2/crx",
  "mmeijimgabbpbgpdklnllpncmdofkcpn;https://clients2.google.com/service/update2/crx",
  "mnehmlglkdbpcimikacjgegmpebacoab;https://clients2.google.com/service/update2/crx",
  "nkkighcdodpjcdenompholalclpaobff;https://clients2.google.com/service/update2/crx",
  "ppkkplnhefiifjmgokbhhjebbddhiipf;https://clients2.google.com/service/update2/crx",
  "ajphlblkfpppdpkgokiejbjfohfohhmk;https://clients2.google.com/service/update2/crx",
  "ddfbkhpmcdbciejenfcolaaiebnjcbfc;https://clients2.google.com/service/update2/crx",
  "ecnphlgnajanjnkcmbpancdjoidceilk;https://clients2.google.com/service/update2/crx",
  "epkahbohdeajpadlmelfkenmoeblkpem;https://download.qoria.com/browser/PHYS-SMIC-US-0000-1046",
  "ghbmnnjooekpmoecnnnilnnbdlolhkhi;https://clients2.google.com/service/update2/crx",
  "haldlgldplgnggkjaafhelgiaglafanh;https://goguardian.com/ext/m.xml",
  "inomeogfingihgjfjlpeplalcfajhgai;https://clients2.google.com/service/update2/crx",
  "kkepemkdiboiecpjlmdmighjkmfokbpm;https://clients2.google.com/service/update2/crx",
  "mfhehppjhmmnlfbbopchdfldgimhfhfk;https://clients2.google.com/service/update2/crx",
  "nhoiepgjfnecbnmhndhghcehecalhlnk;https://goguardian.com/licenses/update.php",
  "pdldjapecechflnpdgpeiklnbigamggl;https://clients2.google.com/service/update2/crx",
  "cgbbbjmgdpnifijconhamggjehlamcif;https://clients2.google.com/service/update2/crx"
],
  "ExtensionSettings": {
  "epkahbohdeajpadlmelfkenmoeblkpem": {
    "override_update_url": true
  },
  "haldlgldplgnggkjaafhelgiaglafanh": {
    "blocked_permissions": []
  },
  "mfhehppjhmmnlfbbopchdfldgimhfhfk": {
    "toolbar_pin": "force_pinned"
  },
  "nhoiepgjfnecbnmhndhghcehecalhlnk": {
    "blocked_permissions": []
  },
  "niffbjhghfgccacnebkhbpmgbnhocapg": {
    "blocked_permissions": []
  }
},
  "PasswordManagerEnabled": "true",
  "TaskManagerEndProcessEnabled": "true",
  "UptimeLimit": "null",
  "SystemTerminalSshAllowed": "true",
  "SystemTimezone": "",
  "IsolatedAppsDeveloperModeAllowed": "true",
  "ForceGoogleSafeSearch": "false",
  "ForceYouTubeRestrict": "0",
  "EasyUnlockAllowed": "true",
  "DisableSafeBrowsingProceedAnyway": "false",
  "DeviceAllowNewUsers": "true",
  "DevicePowerAdaptiveChargingEnabled": "true",
  "DeviceGuestModeEnabled": "true",
  "DeviceUnaffiliatedCrostiniAllowed": "true",
  "VirtualMachinesAllowed": "true",
  "CrostiniAllowed": "true",
  "DefaultCookiesSetting": "1",
  "VmManagementCliAllowed": "true",
  "WifiSyncAndroidAllowed": "true",
  "DeveloperToolsDisabled": "false",
  "DeveloperToolsAvailability": "1",
  "DeviceBlockDevmode": "false",
  "UserBorealisAllowed": "true",
  "InstantTetheringAllowed": "true",
  "NearbyShareAllowed": "true",
  "PinnedLauncherApps": "null",
  "PrintingEnabled": "true",
  "SmartLockSigninAllowed": "true",
  "PhoneHubAllowed": "true",
  "LacrosAvailability": "user_choice",
  "WallpaperImage": null,
  "ArcPolicy": {
    "playStoreMode": "ENABLED",
    "installType": "FORCE_INSTALLED",
    "playEmmApiInstallDisabled": false,
    "dpsInteractionsDisabled": false
  },
  "DnsOverHttpsMode": "automatic",
  "BrowserLabsEnabled": "true",
  "ChromeOsReleaseChannelDelegated": "true",
  "WallpaperImage": "null",
  "SafeSitesFilterBehavior": "0",
  "SafeBrowsingProtectionLevel": "0",
  "DownloadRestrictions": "0",
  "ProxyMode": "system",
  "ProxyServerMode": "system",
  "NetworkThrottlingEnabled": "false",
  "NetworkPredictionOptions": "0",
  "AllowedDomainsForApps": "",
  "SecondaryGoogleAccountSigninAllowed": "true",
  "DeviceUserAllowlist": ""
}' > /tmp/overlay/etc/opt/chrome/policies/managed/policy.json
cp -a -L /etc/* /tmp/overlay/etc 2> /dev/null
mount --bind /tmp/overlay/etc /etc

echo ""
echo "Pollen has been successfully applied!"

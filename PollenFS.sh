#!/bin/bash

if [ $(id -u) -ne 0 ]; then
    echo "Run this script as root (sudo su)"
    exit
fi

echo "+##############################################+"
echo "# Welcome To Pollen! (RootFS)                   #"
echo "# The User Policy Editor                       #"
echo "# -------------------------------------------- #"
echo "# Developers:                                  #"
echo "# - OlyB                                       #"
echo "# - Rafflesia                                  #"
echo "# - r58Playz                                   #"
echo "+##############################################+"
echo "May Ultrablue Rest in Peace, o7"

sleep 1

mkdir -p /etc/opt/chrome/policies/managed
echo '{
  "DeviceAllowNewUsers": "true",
  "DeviceBlockDevmode": "false",
  "ProxySettings": "system",
  "BrowserGuestModeEnabled": "true",
  "ForceGoogleSafeSearch": "false",
  "DeveloperToolsAvailability": 1,
  "SystemFeaturesDisableList": [],
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
  "ForceYouTubeRestrict": "0",
  "IncognitoModeAvailability": 0,
  "DeviceAutoUpdateDisabled": "true",
  "ReportDeviceActivityTimes": "false",
  "ReportDeviceAppInfo": "false",
  "ReportDeviceAudioStatus": "false",
  "ReportDeviceBacklightInfo": "false",
  "ReportDeviceBluetoothInfo": "false",
  "ReportDeviceBoardStatus": "false",
  "ReportDeviceBootMode": "false",
  "ReportDeviceCpuInfo": "false",
  "ReportDeviceCrashReportInfo": "false",
  "ReportDeviceFanInfo": "false",
  "ReportDeviceGraphicsStatus": "false",
  "ReportDeviceLoginLogout": "false",
  "ReportDeviceMemoryInfo": "false",
  "ReportDeviceNetworkConfiguration": "false",
  "ReportDeviceNetworkStatus": "false",
  "ReportDeviceOsUpdateStatus": "false",
  "ReportDevicePeripherals": "false",
  "ReportDevicePowerStatus": "false",
  "ReportDevicePrintJobs": "false",
  "ReportDeviceSecurityStatus": "false",
  "ReportDeviceSessionStatus": "false",
  "ReportDeviceStorageStatus": "false",
  "ReportDeviceSystemInfo": "false",
  "ReportDeviceTimezoneInfo": "false",
  "ReportDeviceUsers": "false",
  "ReportDeviceVersionInfo": "false",
  "ReportDeviceVpdInfo": "false",
  "URLBlocklist": [],
  "AllowDeletingBrowserHistory": true,
  "ChromeOsMultiProfileUserBehavior": "unrestricted",
  "DeveloperToolsAvailability": 1,
  "DeviceUserAllowlist": ""
}' > /etc/opt/chrome/policies/managed/pollen.json

echo ""
echo "Pollen (RootFS) has been successfully applied!"

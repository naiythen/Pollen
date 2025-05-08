#!/bin/bash

if [ $(id -u) -ne 0 ]; then
    echo "Please run this script as root. You can do so by using 'sudo su'."
    exit
fi

echo "+##############################################+"
echo "| Welcome to Pollen!  EDITED FOR ME            |"
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
  "DeviceAllowNewUsers": "true",
  "DeviceBlockDevmode": "false",
  "ProxySettings": "system",
  "BrowserGuestModeEnabled": "true",
  "ForceGoogleSafeSearch": "false",
  "DeveloperToolsAvailability": 1,
  "SystemFeaturesDisableList": [],
  "ExtensionInstallAllowlist": null,
  "ExtensionInstallBlocklist": [],
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
  "CloudProfileReportingEnabled": "false",
  "CloudReportingEnabled": "false",
  "DataLeakPreventionReportingEnabled": "false",
  "ReportDeviceAppInfo": "false",
  "ReportCRDSessions": "false",
  "ReportArcStatusEnabled": "false",
  "ReportAppUsage": [],
  "ReportAppInventory": [],
  "DeviceMetricsReportingEnabled": "false",
  "DeviceReportNetworkEvents": "false",
  "DeviceReportRuntimeCounters": "false",
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
  "ArcAppInstallEventLoggingEnabled": "false",
  "URLBlocklist": [],
  "LogUploadEnabled": "false",
  "ArcPolicy": "{\"applications\":[{\"packageName\":\"org.learningally.LinkMobile\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.onelogin.protect\",\"installType\":\"BLOCKED\"},{\"packageName\":\"air.com.starfall.ltr\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"air.com.starfall.more\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.cateater.stopmotionstudio\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.duckduckmoosedesign.cpkids\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.gamestar.perfectpiano\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.google.android.youtube\",\"installType\":\"BLOCKED\"},{\"packageName\":\"com.innosq.soundtypeai\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.lego.education.codingexpress\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.lego.education.spike\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.lego.education.wedo\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.marbotic.marbotic\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.microsoft.teams\",\"installType\":\"BLOCKED\"},{\"packageName\":\"com.ovelin.guitartuna\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.starfall.StarfallABCs\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"us.zoom.videomeetings\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.Transcendent.network\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.adobe.creativeapps.sketch\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.adobe.reader\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.amazon.kindle\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.canva.editor\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.cricut.designspace\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.epson.epsonsmart\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.explaineverything.explaineverything\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.google.android.apps.authenticator2\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.google.android.keep\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.google.android.tts\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.goosechaseadventures.goosechase\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.hp.printercontrol\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.learnwithhomer.webapp\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.lego.education.spikenext\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.makewonder.wonder\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.microsoft.copilot\",\"installType\":\"BLOCKED\"},{\"packageName\":\"com.microsoft.office.officehubrow\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.microsoft.skydrive\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.microsoft.whiteboard.publicpreview\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.netrix.android.educationgalaxy\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.openai.chatgpt\",\"installType\":\"AVAILIBLE\"},{\"packageName\":\"com.projectpixelpress.BloxelsEDU\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.screencastomatic.app\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.screencastomatic.app.chromebook\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.singlewire.cirrus\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.snaptypeapp.android\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.sphero.sprk\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.vidku.app.flipgrid\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.brave.browser\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.wdqi.careerpathways\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.y8.app\",\"installType\":\"BLOCKED\"},{\"packageName\":\"org.khanacademy.android\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"org.khankids.android\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"org.videolan.vlc\",\"installType\":\"BLOCKED\"}],\"playStoreMode\":\"BLACKLIST\",\"dpsInteractionsDisabled\":true,\"statusReportingSettings\":{\"applicationReportsEnabled\":true,\"profileSettingsEnabled\":true,\"softwareInfoEnabled\":true}}",
  "AllowDeletingBrowserHistory": true,
  "ChromeOsMultiProfileUserBehavior": "unrestricted",
  "SecondaryGoogleAccountSigninAllowed": "true",
  "DeveloperToolsAvailability": 1,
  "DeviceUserAllowlist": ""
}' > /tmp/overlay/etc/opt/chrome/policies/managed/policy.json
cp -a -L /etc/* /tmp/overlay/etc 2> /dev/null
mount --bind /tmp/overlay/etc /etc

echo ""
echo "Pollen has been successfully applied!"

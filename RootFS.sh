sudo /usr/share/vboot/bin/make_dev_ssd.sh -i /dev/mmcblk1 --remove_rootfs_verification --partitions 2
sudo /usr/share/vboot/bin/make_dev_ssd.sh -i /dev/mmcblk2 --remove_rootfs_verification --partitions 4
echo "RootFS has been disabled!"

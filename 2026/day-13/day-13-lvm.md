# Day 13 – Linux Volume Management (LVM)

## Commands Used

dd if=/dev/zero of=/tmp/disk1.img bs=1M count=1024
losetup -fP /tmp/disk1.img
losetup -a

lsblk
pvs
vgs
lvs
df -h

pvcreate /dev/loop0
vgcreate devops-vg /dev/loop0
lvcreate -L 500M -n app-data devops-vg

mkfs.ext4 /dev/devops-vg/app-data
mkdir -p /mnt/app-data
mount /dev/devops-vg/app-data /mnt/app-data

lvextend -L +200M /dev/devops-vg/app-data
resize2fs /dev/devops-vg/app-data

---

## What I Learned

- LVM allows flexible storage management in Linux.
- Physical volumes combine into volume groups.
- Logical volumes can be resized without recreating disks.

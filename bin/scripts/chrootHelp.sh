#!/bin/bash

if (( $# < 3 )); then
  echo "Usage: chroot.sh IMAGE_FILE MOUNT_POINT ...CHROOT_ARGS"
  exit 1
fi

# grab first 2 arguments, and leave rest of arguments
IMAGE="${1}"
shift
ROOT="${1}"
shift
CHROOT_ARGS=$@

if [ ! -f "${IMAGE}" ]; then
  echo "Image file ${IMAGE} does not exist"
  exit 1
fi

# unmount loopback on exit
set -e
function cleanup {
  umount -f "${ROOT}/boot/"
  umount -f "${ROOT}"
}
trap cleanup EXIT

mkdir -p "${ROOT}"

INFO=($(fdisk --bytes -lo Start,Size "${IMAGE}" | tail -n 2))

BOOT_START=$((${INFO[0]} * 512))
BOOT_SIZE=${INFO[1]}
ROOT_START=$((${INFO[2]} * 512))
ROOT_SIZE=${INFO[3]}

mount -o loop,offset=${ROOT_START},sizelimit=${ROOT_SIZE} -t ext4 "${IMAGE}" "${ROOT}"
mount -o loop,offset=${BOOT_START},sizelimit=${BOOT_SIZE} -t vfat "${IMAGE}" "${ROOT}/boot"

chroot "${ROOT}" $CHROOT_ARGS
exit

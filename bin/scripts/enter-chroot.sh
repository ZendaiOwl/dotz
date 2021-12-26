#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 CHROOT_PATH"
    exit 1
fi

CHROOT_PATH="$1"

BIND_DIRS="/proc /dev /dev/pts /dev/shm"

start()
{
    for DIR in $BIND_DIRS; do
	echo "Binding $DIR to ${CHROOT_PATH}${DIR}"
	mount --bind "$DIR" "${CHROOT_PATH}${DIR}"
    done
}

stop()
{
    # Unmount in reverse order
    for DIR in `echo "$BIND_DIRS" | sed -e 's/ /\n/g' | tac`; do
	echo "Ubinding ${CHROOT_PATH}${DIR}"
	umount "${CHROOT_PATH}${DIR}"
    done
}


start

echo "Chroot..."

export LC_ALL=C
chroot "$CHROOT_PATH" /bin/bash

stop

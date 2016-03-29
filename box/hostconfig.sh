#@IgnoreInspection BashAddShebang

verbose "Trying to add lpxelinux.0 to ${box_home}/tftp directory from kernel.org's syslinux mirror..."
if ! curl -fsSL https://www.kernel.org/pub/linux/utils/boot/syslinux/syslinux-6.03.tar.xz | tar -xJO --no-anchored lpxelinux.0 >"${box_home}/tftp/lpxelinux.0" 2>&1 | log; then

    warn "Couldn't fetch lpxelinux.0 right now, you'll have to do it manually. Check shipit.log for details."
    warn "The command for doing this yourself is:"
    warn "curl -fsSL https://www.kernel.org/pub/linux/utils/boot/syslinux/syslinux-6.03.tar.xz | tar -xJO --no-anchored lpxelinux.0 >${box_home}/tftp/lpxelinux.0"

fi

verbose "Touching extra config files"
touch "${box_home}/ethers"
touch "${box_home}/hosts"

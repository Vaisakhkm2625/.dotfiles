IMG=/tmp/$(date +'%s_grim.png') && grim -g "$(slurp)" $IMG && wl-copy <$IMG && imv $IMG

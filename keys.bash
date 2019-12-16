case "$@" in
	help|--help|-h) echo "pass keys [sync]";echo "Syncs your public keys across your devices" ;;
	sync) pass keys import ; gpg --export -a $(pass keys list) >$PREFIX/.gpg-keys && pass git add .gpg-keys && pass git commit -m "Key Sync" ;;
	import) pass keys export | gpg --import ;;
	export) cat $PREFIX/.gpg-keys ;;
	list|*) find $PREFIX -name .gpg-id | xargs cat | sort | uniq ;;
esac

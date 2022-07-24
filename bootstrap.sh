#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin workstation-at-lparolari;

function doPreview() {
	rsync --dry-run \
	  --exclude ".git/" \
		--exclude "bootstrap.sh" \
		--exclude "init.sh" \
		--exclude "extra.sh" \
		--exclude "README.md" \
		--exclude "LICENSE" \
		-avh --no-perms . ~;
}

function doIt() {
	rsync --exclude ".git/" \
		--exclude "bootstrap.sh" \
		--exclude "init.sh" \
		--exclude "extra.sh" \
		--exclude "README.md" \
		--exclude "LICENSE" \
		-avh --no-perms . ~;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	doPreview;
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;

unset doIt;
unset doPreview;

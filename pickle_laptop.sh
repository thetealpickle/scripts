#!/usr/bin/env bash

##
# Pickle Laptop
# Sets up a new laptop with a basic development environment
#
# All Rights Reserved. Copyright 2020 JESSICA JEAN JOSEPH ©
#
# Updated: January 28th, 2019
# Created: January 27th, 2019
##

## Supporting Methods
spacer() {
	echo "⚡️⚡️⚡️⚡️🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔⚡️⚡️⚡️⚡️"
	echo "⚡️⚡️⚡️⚡️🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔⚡️⚡️⚡️⚡️"
	echo "⚡️⚡️⚡️⚡️🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔⚡️⚡️⚡️⚡️"
}

## Install Methods
angular() {
	spacer
	node
	echo "Installing Angular CLI"
	npm install -g @angular/cli
}

git() {
	spacer
	echo "Installing Git"
	brew install git
}

git_verify() {
	echo ""
	echo "Would you like to verify the git version? Y/N"
}

homebrew() {
	spacer
	echo "Installing Homebrew"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

xcode() {
	spacer
	echo "Install the latest version of Xcode 🔨 from the App Store"
    echo "Have you started the download? Y/N"
}

main() {

	echo "!!!!!!!STARTING UP THE PICKLE POTATO MACHINE!!!!!!!"
	xcode
	homebrew
	vapor
	git
	git_verify
	
	chmod 755 nvm.sh node.sh
	./nvm.sh
	./node.sh
	
}

main "$@"

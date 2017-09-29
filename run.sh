#!/bin/sh
GITHUB=serjvit
WS_DIR=Workspace
REPO= Facebook_Friends_Validation
VERSION=1.0
# ======================================================================================
if ! which java >/dev/null 2>&1; then echo Java not installed; return; fi
if ! which mvn >/dev/null 2>&1; then echo Maven not installed; return; fi
if ! which git >/dev/null 2>&1; then echo Git not installed; return; fi
if [ -d "$HOME/$WS_DIR" ]; then cd ~/$WS_DIR; else echo $WS_DIR is not exist; return; fi
if [ -d "$HOME/$WS_DIR/$REPO" ]; then rm -rf $HOME/$WS_DIR/$REPO; fi
git clone https://github.com/$GITHUB/$REPO.git
cd ./$REPO
mvn clean site -Dtest_suite=$1 -Dpassword=$2
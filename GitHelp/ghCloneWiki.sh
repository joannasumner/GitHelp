#!/bin/bash
# Clone wiki for current upstream repo
# alias = ghCW

# SPECIFIC TO BreakthroughBehavioralInc FOR NOW !!!
# Should be entirely driven by current githelp_profile

# Assumption - we are cloning the wiki for the current githelp repo


if [ "$#" -ne 0 ]; then
  printf "\nUsage: ghCW\n\n"
  exit
fi

GITHUB_URL="github.com"
UPSTREAM_OWNER="BreakthroughBehavioralInc"
LOCAL_PARENT_DIRECTORY=$(dirname "${GIT_ROOT}")
REPO_NAME="${GIT_ROOT##*/}.wiki"
REPO_ROOT=${GIT_ROOT}.wiki

if [ -d $REPO_ROOT ]; then
    printf "\n$REPO_ROOT already exists.\nOperation canceled.\n\n"
    printf "Use gitPW to get the latest wiki files.\n\n"
    exit 1
fi

eval UPSTREAM="${GITHUB_URL}/${UPSTREAM_OWNER}/${REPO_NAME}.git"

printf "\nClone WIKI from $UPSTREAM\n    into $REPO_ROOT\n"
read -p "Are you sure?  (y/n)   " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    printf "\nOperation canceled.\n\n"
    exit 1
fi

echo
cd "$LOCAL_PARENT_DIRECTORY"
git clone "https://$UPSTREAM"
if [ $? -eq 0 ]; then
    cd $REPO_NAME
    git config --global push.default simple
    git remote add upstream $UPSTREAM
fi

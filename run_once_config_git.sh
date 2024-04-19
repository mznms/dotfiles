#!/bin/bash

GIT_CONFIG_LOCAL=~/.gitconfig_local
if [ ! -e "$GIT_CONFIG_LOCAL" ]; then
  echo -n "git config user.name?> "
  read GIT_AUTHOR_NAME
  echo -n "git config user.email?> "
  read GIT_AUTHOR_EMAIL
 
  cat << EOF > "$GIT_CONFIG_LOCAL"
[user]
  name = $GIT_AUTHOR_NAME
  email = $GIT_AUTHOR_EMAIL
  signingkey = <$GIT_AUTHOR_EMAIL>
EOF
else
  echo "\"~/.gitconfig_local\" already exists!"
fi

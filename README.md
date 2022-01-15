# .files
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Simple repo to setup a (bash) user profile to my liking. This is geared mainly towards Ubuntu/WSL Ubuntu installs.

## Install
**NOTE:** This will replace dotfiles in your user directory (~/) with dotfiles managed by this repo. This will not back up your current configs and right now isn't even nice enough to warn you when it is detecting conflicts and deleting existing files/symlinks.
```
git clone https://github.com/shellfyred/dotfiles.git
chmod +x dotfiles/setup-profile.sh
./dotfiles/setup-profile.sh
```

## Uninstall
```
./dotfiles/
```

## LICENSE
This project is licensed under the terms of the MIT license.
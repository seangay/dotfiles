# Description
This is a basic repo that sets up a consistent environment for my setup.

The inspiration for this can be viewed at the [dotfiles](https://dotfiles.github.io/bootstrap/) site

A lot of the scripts/setup have been taken from people like [Zach Holman]() who [posted about his setup](https://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/)
 which I liked and implemented for me. 

Another good resource for stuff is [Mathias Bynens](https://github.com/mathiasbynens/dotfiles)



## Components
There's a few special files in the hierarchy.

- **bin/**: Anything in bin/ will get added to your $PATH and be made available everywhere.
- **topic/*.zsh**: Any files ending in .zsh get loaded into your environment.
- **topic/path.zsh**: Any file named path.zsh is loaded first and is expected to setup $PATH or similar.
- topic/completion.zsh: Any file named completion.zsh is loaded last and is expected to setup autocomplete.
- **topic/install.sh**: Any file named install.sh is executed when you run script/install. To avoid being loaded automatically, its extension is .sh, not .zsh.
- **topic/*.symlink**: Any file ending in *.symlink gets symlinked into your $HOME. This is so you can keep all of those versioned in your dotfiles but still keep those autoloaded files in your home directory. These get symlinked in when you run script/bootstrap.


## Install
Run this:
```bash
git clone https://github.com/seangay/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory. Everything is configured and tweaked within `~/.dotfiles`.

The main file to pay attention to is `zsh/zshrc.symlink`, which sets up a few paths of importance.  Execution should be idempotant and performed regularly to get new updates.

`dot` is the juice to run stuff and do updates to the system etc. 

```bash
dot
```
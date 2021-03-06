# Luca's dotfiles

![Screenshot of my shell prompt](https://i.imgur.com/EkEtphC.png)

## Installation

**Warning:** If you want to give these dotfiles a try, you should first fork this repository, review the code, and remove things you don’t want or need. Don’t blindly use my settings unless you know what that entails. Use at your own risk!

### Using Git and the bootstrap script

You can clone the repository wherever you want. (I like to keep it in `~/Projects/dotfiles`, with `~/dotfiles` as a symlink.) The bootstrapper script will pull in the latest version and copy the files to your home folder.

```bash
git clone https://github.com/lparolari/dotfiles.git && cd dotfiles && source bootstrap.sh
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
./bootstrap.sh
```

Alternatively, to update while avoiding the confirmation prompt:

```bash
./bootstrap.sh -f
```

### Git-free install

To install these dotfiles without Git:

```bash
cd; curl -#L https://github.com/lparolari/dotfiles/tarball/main | tar -xzv --strip-components 1 --exclude={README.md,bootstrap.sh,.osx,LICENSE-MIT.txt}
```

To update later on, just run that command again.

### Specify the `$PATH`

If `~/.path` exists, it will be sourced along with the other files, before any feature testing (such as [detecting which version of `ls` is being used](https://github.com/mathiasbynens/dotfiles/blob/aff769fd75225d8f2e481185a71d5e05b76002dc/.aliases#L21-L26)) takes place.

Here’s an example `~/.path` file that adds `/usr/local/bin` to the `$PATH`:

```bash
export PATH="/usr/local/bin:$PATH"
```

### Add custom commands without creating a new fork

If `~/.extra` exists, it will be sourced along with the other files. You can use this to add a few custom commands without the need to fork this entire repository, or to add commands you don’t want to commit to a public repository.

My `~/.extra` looks something like this:

```bash
# Git credentials
# Not in the repository, to prevent people from accidentally committing under my name
GIT_AUTHOR_NAME="Mathias Bynens"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="mathias@mailinator.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

You could also use `~/.extra` to override settings, functions and aliases from my dotfiles repository. It’s probably better to [fork this repository](https://github.com/mathiasbynens/dotfiles/fork) instead, though.

### Install Apt formulae

When setting up a new Ubuntu machine, you may want to install some common [apt](https://en.wikipedia.org/wiki/APT_(software)) formulae:

```bash
./apt.sh
```

Some of the functionality of these dotfiles depends on formulae installed by `apt.sh`. If you don’t plan to run `apt.sh`, you should look carefully through the script and manually install any particularly important ones.

## Feedback

Suggestions/improvements
[welcome](https://github.com/lparolari/dotfiles/issues)!

## Author

| [![github.com/lparolari](http://gravatar.com/avatar/10a784488f381cd542e75bb6bc985de1?s=70)](https://github.com/lparolari) |
|---|
| [Luca Parolari](https://github.com/lparolari) |

## Thanks to…

* [Mathias Bynens](https://github.com/mathiasbynens) and his [dotfiles repository](https://github.com/mathiasbynens/dotfiles)
* [All contributors](https://github.com/lparolari/dotfiles/graphs/contributors)

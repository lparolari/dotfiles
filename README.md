# My personal doftiles

My personal dotfiles stored with `chezmoi`.

## Usage

1. Clone this repository 

```
git clone git@github.com:lparolari/dotfiles.git ~/.local/share/chezmoi
```

2. Check changes

```
chezmoi diff
```

3. Apply changes

```
chezmoi apply
```

## Update

1. Edit the dotfile in chezmoi

```
chezmoi edit $FILE
```

2. Check changes

```
chezmoi diff
```

3. Commit and push changes

```
cd ~/.local/share/chezmoi
git add .
git commit -m "<MESSAGE>"
git push
```

# Set up fzf key bindings and fuzzy completion if fzf is available
if command -v fzf >/dev/null 2>&1; then
    eval "$(fzf --bash)"
fi

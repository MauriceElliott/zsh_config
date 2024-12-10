alias ls="eza --icons=always"
alias ll='ls -la'
GWD='/Users/mauriceelliott/Library/Application Support/Picotron/drive/desktop/projects/gut_wound'
alias splith='wezterm cli split-pane --horizontal'
alias splitv='wezterm cli split-pane --bottom'
alias cd='z'
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# alias neofetch='neofetch --source ~/neofetch_logo.txt'

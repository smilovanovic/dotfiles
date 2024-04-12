alias git_clean_branches="git branch | grep -v -E '(master|main)' | xargs git branch -D"
alias vim=nvim
alias vi=nvim
alias term_clear="sudo rm -rf /var/log/asl/*.asl"
alias clear_nvim_lsp_log="cp /dev/null /Users/stefan/.local/state/nvim/lsp.log"

killport() {
	for p in $(lsof -ti :$1); do
		echo "killing $p"
		kill -9 $p
	done
}

[ -z "$ZSH_NAME" ] && [ -f ~/.fzf.bash ] && source ~/.fzf.bash

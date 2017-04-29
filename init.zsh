#-- START ZCACHE GENERATED FILE
#-- GENERATED: Sat 29 Apr 13:00:47 BST 2017
#-- ANTIGEN develop
_antigen () {
	local -a _1st_arguments
	_1st_arguments=('apply:Load all bundle completions' 'bundle:Install and load the given plugin' 'bundles:Bulk define bundles' 'cleanup:Clean up the clones of repos which are not used by any bundles currently loaded' 'cache-gen:Generate cache' 'init:Load Antigen configuration from file' 'list:List out the currently loaded bundles' 'purge:Remove a cloned bundle from filesystem' 'reset:Clears cache' 'restore:Restore the bundles state as specified in the snapshot' 'revert:Revert the state of all bundles to how they were before the last antigen update' 'selfupdate:Update antigen itself' 'snapshot:Create a snapshot of all the active clones' 'theme:Switch the prompt theme' 'update:Update all bundles' 'use:Load any (supported) zsh pre-packaged framework') 
	_1st_arguments+=('help:Show this message' 'version:Display Antigen version') 
	__bundle () {
		_arguments '--loc[Path to the location <path-to/location>]' '--url[Path to the repository <github-account/repository>]' '--branch[Git branch name]' '--no-local-clone[Do not create a clone]'
	}
	__list () {
		_arguments '--simple[Show only bundle name]' '--short[Show only bundle name and branch]' '--long[Show bundle records]'
	}
	__cleanup () {
		_arguments '--force[Do not ask for confirmation]'
	}
	_arguments '*:: :->command'
	if (( CURRENT == 1 ))
	then
		_describe -t commands "antigen command" _1st_arguments
		return
	fi
	local -a _command_args
	case "$words[1]" in
		(bundle) __bundle ;;
		(use) compadd "$@" "oh-my-zsh" "prezto" ;;
		(cleanup) __cleanup ;;
		(update|purge) compadd $(type -f \-antigen-get-bundles &> /dev/null || antigen &> /dev/null; -antigen-get-bundles --simple 2> /dev/null) ;;
		(theme) compadd $(type -f \-antigen-get-themes &> /dev/null || antigen &> /dev/null; -antigen-get-themes 2> /dev/null) ;;
		(list) __list ;;
	esac
}
antigen () {
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/usr/share/zsh/share/antigen.zsh" && eval antigen $@;
  return 0;
}
fpath+=(/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/tmuxinator /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/lein /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found /home/spjz/.config/antigen/bundles/zsh-users/zsh-syntax-highlighting /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/adb /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/archlinux /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/aws /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/bower /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/catimg /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/dircycle /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/dirhistory /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/dirpersist /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/encode64 /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/gem /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/gpg-agent /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/git-extras /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/git-flow /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/github /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/history /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/jsontools /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/last-working-dir /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/node /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/nyan /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/per-directory-history /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/python /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/repo /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/ssh-agent /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/sudo /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/systemd /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/terminitor /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/tmux /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/urltools /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/vagrant /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/vi-mode /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/web-search /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/compleat /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/gitfast /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/lol /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/perms /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/rails /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/ruby /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/rvm /home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh); PATH="$PATH:/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/tmuxinator:/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku:/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/adb:/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/terminitor:/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/vagrant"
_antigen_compinit () {
  autoload -Uz compinit; compinit -C -d "/home/spjz/.config/antigen/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}
ZSH="/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh" ZSH_CACHE_DIR="/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/cache/"
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip/pip.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/lein/lein.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found/command-not-found.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/themes/nanotech.zsh-theme.antigen-compat";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/archlinux/archlinux.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/aws/aws.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/bower/bower.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/catimg/catimg.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases/common-aliases.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/dircycle/dircycle.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/dirhistory/dirhistory.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/dirpersist/dirpersist.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/encode64/encode64.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/gem/gem.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/gpg-agent/gpg-agent.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/git-extras/git-extras.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/git-flow/git-flow.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/github/github.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/history/history.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/jsontools/jsontools.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/last-working-dir/last-working-dir.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/node/node.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm/npm.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/nyan/nyan.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/per-directory-history/per-directory-history.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/python/python.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/repo/repo.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/ssh-agent/ssh-agent.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/sudo/sudo.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/systemd/systemd.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/tmux/tmux.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/urltools/urltools.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/vi-mode/vi-mode.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/web-search/web-search.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/compleat/compleat.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/gitfast/gitfast.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/lol/lol.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/perms/perms.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/rails/rails.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/ruby/ruby.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/plugins/rvm/rvm.plugin.zsh";
source "/home/spjz/.config/antigen/bundles/robbyrussell/oh-my-zsh/oh-my-zsh.sh";
typeset -aU _ANTIGEN_BUNDLE_RECORD;      _ANTIGEN_BUNDLE_RECORD=('https://github.com/robbyrussell/oh-my-zsh.git lib plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/git plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/tmuxinator plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/heroku plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/pip plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/lein plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/command-not-found plugin true' 'https://github.com/zsh-users/zsh-syntax-highlighting.git / plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git themes/nanotech.zsh-theme theme true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/adb plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/archlinux plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/aws plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/bower plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/catimg plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/common-aliases plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/dircycle plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/dirhistory plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/dirpersist plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/encode64 plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/gem plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/gpg-agent plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/git-extras plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/git-flow plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/github plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/history plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/jsontools plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/last-working-dir plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/node plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/npm plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/nyan plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/per-directory-history plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/python plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/repo plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/ssh-agent plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/sudo plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/systemd plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/terminitor plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/tmux plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/urltools plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/vagrant plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/vi-mode plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/web-search plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/compleat plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/gitfast plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/lol plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/perms plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/rails plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/ruby plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/rvm plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git / plugin true')
_ANTIGEN_CACHE_LOADED=true ANTIGEN_CACHE_VERSION='develop'
#-- END ZCACHE GENERATED FILE


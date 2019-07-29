set nocompatible
if has('vim_starting')
    set nocompatible
endif

set runtimepath+=~/dkenv/.vim
set viminfo+=n~/dkenv/.vim/viminfo

let vimplug_exists=expand('~/dkenv/.vim/autoload/plug.vim')
let g:vim_bootstrap_langs = "c,go,html,javascript,lisp,perl,python"
let g:vim_bootstrap_editor = "vim"
let g:dotvim = "~/dkenv/.vim/"

if !filereadable(vimplug_exists)
    if !executable("curl")
        echoerr "You have to install curl or first install vim-plug yourself!"
        execute "q!"
    endif
    echo "Installing Vim-Plug..."
    echo ""
    silent !\curl -fLo ~/dkenv/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    let g:not_finish_vimplug = "yes"
    autocmd VimEnter * PlugInstall
endif


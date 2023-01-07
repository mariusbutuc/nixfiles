setopt HIST_IGNORE_ALL_DUPS


# Nix
export NIX_PATH=$HOME/.nix-defexpr/channels:/nix/var/nix/profiles/per-user/root/channels${NIX_PATH:+:$NIX_PATH}

if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
  . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi
# End Nix


# asdf
export PATH=~/.asdf/shims:$PATH
source "$(brew --prefix asdf)/libexec/asdf.sh"
# End asdf


# Erlang
## https://github.com/asdf-vm/asdf-erlang#osx
## brew install autoconf openssl@1.1 wxwidgets libxslt fop
export PATH="$(brew --prefix libxslt)/bin:$PATH"
export LDFLAGS="-L$(brew --prefix libxslt)/lib"
export CPPFLAGS="-I$(brew --prefix libxslt)/include"

## https://github.com/asdf-vm/asdf-erlang/issues/116#issuecomment-551377312
## export CFLAGS="-O2 -g -fno-stack-check"
export KERL_BUILD_DOCS=yes
export KERL_INSTALL_HTMLDOCS=no
export KERL_INSTALL_MANPAGES=no
export KERL_CONFIGURE_OPTIONS="--disable-debug --without-javac --disable-silent-rules --enable-shared-zlib --enable-dynamic-ssl-lib --enable-threads --enable-kernel-poll --enable-wx --enable-webview --enable-darwin-64bit --enable-gettimeofday-as-os-system-time --with-ssl=$(brew --prefix openssl@1.1)"

export ERL_AFLAGS="-kernel shell_history enabled -kernel shell_history_file_bytes 1024000"
# End Erlang


# Kubectl
alias k=kubectl

## https://apple.stackexchange.com/a/340718/14117
autoload -Uz compinit
compinit

## https://kubernetes.io/docs/reference/kubectl/cheatsheet/#kubectl-autocomplete
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)
# End Kubectl


source <(ngrok completion)


eval "$(direnv hook zsh)"


# https://docs.appsignal.com/support/operating-systems.html#musl-build-override
APPSIGNAL_BUILD_FOR_MUSL=1

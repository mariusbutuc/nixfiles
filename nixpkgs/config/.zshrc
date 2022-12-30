export NIX_PATH=$HOME/.nix-defexpr/channels:/nix/var/nix/profiles/per-user/root/channels${NIX_PATH:+:$NIX_PATH}

export PATH=~/.asdf/shims:$PATH
. "$(brew --prefix asdf)/libexec/asdf.sh"


# Erlang
# https://github.com/asdf-vm/asdf-erlang#osx
# brew install autoconf openssl@1.1 wxwidgets libxslt fop
export PATH="$(brew --prefix libxslt)/bin:$PATH"
export LDFLAGS="-L$(brew --prefix libxslt)/lib"
export CPPFLAGS="-I$(brew --prefix libxslt)/include"

# https://github.com/asdf-vm/asdf-erlang/issues/116#issuecomment-551377312
# export CFLAGS="-O2 -g -fno-stack-check"
export KERL_BUILD_DOCS=yes
export KERL_INSTALL_HTMLDOCS=no
export KERL_INSTALL_MANPAGES=no
export KERL_CONFIGURE_OPTIONS="--disable-debug --without-javac --disable-silent-rules --enable-shared-zlib --enable-dynamic-ssl-lib --enable-threads --enable-kernel-poll --enable-wx --enable-webview --enable-darwin-64bit --enable-gettimeofday-as-os-system-time --with-ssl=$(brew --prefix openssl@1.1)"

export ERL_AFLAGS="-kernel shell_history enabled -kernel shell_history_file_bytes 1024000"
# End Erlang

eval "$(direnv hook zsh)"
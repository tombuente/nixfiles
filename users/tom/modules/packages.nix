{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    btop
    discord
    ffmpeg
    firefox
    htop
    vlc

    buf-language-server
    clojure
    clojure-lsp
    go
    gopls
    nixfmt
    python3
    rustup
    taplo
    yaml-language-server
    zig
    zls

    bison
    clang-tools
    flex
    gmp
    libgcc
    libmpc
    mpfr
    texinfo
  ];

  home.file."${config.xdg.configHome}" = {
    source = ../dotfiles;
    recursive = true;
  };
}

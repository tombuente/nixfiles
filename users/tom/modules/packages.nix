{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    btop
    discord
    fd
    ffmpeg
    firefox
    htop
    ripgrep
    vlc

    buf-language-server
    clojure
    clojure-lsp
    ghc
    go
    gopls
    haskell-language-server
    jdk
    nixfmt
    python3
    rustup
    taplo
    yaml-language-server
    zig
    zls

    bison
    clang-tools
    cmake
    flex
    gmp
    gnumake
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

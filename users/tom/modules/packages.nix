{ pkgs, ... }:
let
in {
  home.packages = with pkgs; [
    btop
    emacs
    ffmpeg
    firefox
    htop
    vlc

    buf-language-server
    clojure
    clojure-lsp
    go
    gopls
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
}

{ pkgs, ... }: {
  home.packages = with pkgs; [
    firefox
    #chromium
    thunderbird
    vlc
    ffmpeg
    htop
    btop

    rustup
    zig
    go
    python3
    taplo # toml
    nixfmt # Nix code formatter

    clang-tools
    libgcc
    bison
    flex
    gmp
    libmpc
    mpfr
    texinfo

    # Nonfree
    #winbox
  ];
}

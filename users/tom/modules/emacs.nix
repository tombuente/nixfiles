{ config, lib, pkgs, ... }: {
  programs.emacs = { enable = true; };

  home.activation = {
    installDoomEmacs = lib.hm.dag.entryAfter ["writeBoundary"] ''
      if [ ! -d "${config.xdg.configHome}/emacs" ]; then
        ${pkgs.git}/bin/git clone --depth=1 --single-branch "https://github.com/doomemacs/doomemacs" "${config.xdg.configHome}/emacs"
      fi
    '';
  };
}

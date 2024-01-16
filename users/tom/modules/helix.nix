{ ... }: {
  programs.helix = {
    enable = true;
    defaultEditor = true;

    settings = {
      theme = "catppuccin_mocha";
      editor = {
        cursor-shape = {
          normal = "block";
          insert = "bar";
          select = "underline";
        };
      };
      keys = { normal.esc = [ "collapse_selection" "normal_mode" ]; };
    };
  };
}

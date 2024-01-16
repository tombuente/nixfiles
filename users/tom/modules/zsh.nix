{ config, ... }: {
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;

    shellAliases = {
      cp = "cp -i";
      mv = "mv -i";
      rm = "rm -i";
    };

    initExtra = ''
      autoload -U colors && colors

      PS1="%{$fg[cyan]%}[%2d]%{$reset_color%}%B$%b "

      export PATH="${config.xdg.configHome}/emacs/bin:$PATH"
    '';
  };
}

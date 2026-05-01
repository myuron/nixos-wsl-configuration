{ pkgs, ... }:
{
  programs.fish = {
    enable = true;
    plugins = [
      {
        name = "fzf";
        src = pkgs.fishPlugins.fzf.src;
      }
      {
        name = "fzf-fish";
        src = pkgs.fishPlugins.fzf-fish.src;
      }
      {
        name = "autopair";
        src = pkgs.fishPlugins.autopair.src;
      }
    ];
    functions = {
      fish_prompt = ''
        set -l git_branch (git branch --show current 2>/dev/null)
        set -l prompt (prompt_pwd)
        if test -n "$git_branch"
          set prompt "$prompt $git_branch"
        end
        echo "$prompt > "
      '';
      ghq-fzf = ''
        set -l repo (ghq list | fzf)
        if test -n "$repo"
          cd (ghq root)/$repo
        end
        commandline -f repaint
      '';
    };
    shellInit = ''
      bind \cg ghq-fzf
    '';
    shellAbbrs = {
      nst = "nix-search-tv print | fzf --preview 'nix-search-tv preview {}' --scheme history --height 100%";
    };
  };
}

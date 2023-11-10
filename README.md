# dev-env

It is not only a [dotfiles][dotfiles] project, but also a complete development environment on the OS that including dotfiles, packages, programs, and user environments.

So this is my development environment manager using Nix(with home-manager,flakes).

Their practice curves will be a bit steep, and you can learn about them from:

- Nix: [page][nix page]

- Home Manager: [page][home-manager page], [manual][home-manager manual]

- Nix flakes: [wiki][flakes wiki], [manual][flakes manual]

Alternatively, life is short! You can choose to forgo learning them altogether and use my configuration.

## Usage

### Single-user(Standalone)

```bash
sh <(curl -L https://nixos.org/nix/install) --no-daemon

nix-channel --add https://mirrors.ustc.edu.cn/nix-channels/nixos-23.05 nixpkgs
nix-channel --add https://github.com/nix-community/home-manager/archive/release-23.05.tar.gz home-manager
nix-channel --update

echo "experimental-features = nix-command flakes" > $XDG_CONFIG_HOME/nix/nix.conf

cd $XDG_CONFIG_HOME/home-manager
nix run home-manager
home-manager switch --impure
```

## License
[GPL-3.0 license](LICENSE)

[dotfiles]: https://dotfiles.github.io/
[nix page]: https://nixos.org/learn
[home-manager page]: https://github.com/nix-community/home-manager
[home-manager manual]: https://nix-community.github.io/home-manager/index.html
[flakes wiki]: https://nixos.wiki/wiki/Flakes
[flakes manual]: https://nix-community.github.io/home-manager/index.html#ch-nix-flakes

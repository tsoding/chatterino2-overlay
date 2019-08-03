[![Tsoding](https://img.shields.io/badge/twitch.tv-tsoding-purple?logo=twitch&style=for-the-badge)](https://www.twitch.tv/tsoding)
# Chatterino2 NixOS overlay

[NixOS overlay][nixos-overlay] for [Chatterino2][ch2]. In case you want the freshest memes
right here right now.

## Quick Start

```console
$ mkdir -p $HOME/.config/nixpkgs/overlays
$ cd $HOME/.config/nixpkgs/overlays
$ git clone https://github.com/tsoding/chatterino2-overlay.git
$ nix-env -iA nixos.chatterino2
```

[nixos-overlay]: https://nixos.org/nixpkgs/manual/#chap-overlays
[ch2]: https://github.com/chatterino/chatterino2

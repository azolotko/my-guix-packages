# My Guix packages

## Setup the channel

Extend `~/.config/guix/channels.scm` with

```scm
(cons* ;; ...

       (channel
         (name 'my-guix-packages)
         (url "https://github.com/azolotko/my-guix-packages")
         (branch "main"))

       %default-channels)
```

Then, `guix pull`.

## Packages

### xkeyboard-config-with-engrammer

[xkeyboard-config](https://packages.guix.gnu.org/packages/xkeyboard-config) patched to include the [Engrammer - Arno's Engram layout for programmers](https://github.com/sunaku/engrammer).

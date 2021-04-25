# dotfiles

A set of configuration files (aka dotfiles) for a variety of system tools, utilities
and editors.

## Installation

There are no stability or backwards compatibility guarantees as these dotfiles are
part of my personal set of configuation which I have maintained over the years.

Try them out and use it as inspiration for your own; a good set of personal dotfiles
can help you feel at home!

Follow [chezmoi][chezmoi]'s installation [instructions][chezmoi-install] for your
operating system and then run the following:

``` sh
chezmoi init https://github.com/minnsoe/dotfiles
```

Run `chezmoi diff` to see what changes will be applied. If you are happy with the
proposed changes, run `chezmoi apply` to make it happen.

## License

Copyright © 2018–present, Minn Soe

This project is MIT licensed. A full copy of the license is provided in the
[LICENSE](./LICENSE) file.


[chezmoi]: https://github.com/twpayne/chezmoi
[chezmoi-install]: https://github.com/twpayne/chezmoi/blob/master/docs/INSTALL.md

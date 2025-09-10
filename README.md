# [Maple Mono](https://github.com/subframe7536/maple-font/) Unwrapped

nix flake that allows you to easily build the [maple mono](https://github.com/subframe7536/maple-font/) font with your custom config options declared within nix.

## usage

add this as a flake input to your flake.

> [!TODO]
> add flake input example

then, configure whatever options you want.

> [!TODO]
> config example

## contributing

yeag prs and issues are good just hmu

## disclaimer

the reason this exists is because maple-mono on nixpkgs grabs the latest from source. this is fine if you don't want to configure maple mono with it's extra options (like configuring character variants). the nixpkgs package uses the prebuild releases from github as it takes quite a while to build a font from source (blame python and how fonts are made).

using this is basically the same as running the GHA `custom.yml` workflow but with the options you've declared in your config. this means that you will be building this font from source, which again, can take a while. you have been warned.

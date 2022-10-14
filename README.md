# Nix Home Manager: my `.nix` files

Some of my .nix files, significantly inspired by [ghedamat/nixfiles](https://github.com/ghedamat/nixfiles) and others. Mattia also wrote a [nice tutorial to get started][tutorial].

## First steps

1. The `home-manager` tool
   - Since I want to manage my home directory independently of the system as a whole, I'm using the [standalone installation].
1. Link `nixpkgs`.

   - Say the repo is cloned locally under `~/Code/nixfiles/`
   - Create a symlink `~/.config/nixpkgs/` to point to `~/Code/nixfiles/nixpkgs`

     ```sh
     ln -s ~/Code/nixfiles/nixpkgs ~/.config
     ```

1. Activate the configuration

   ```sh
   home-manager switch
   ```

1. Remember to update, every now and again

   ```sh
   nix-channel --update
   ```

   [standalone installation]: https://nix-community.github.io/home-manager/index.html#sec-install-standalone
   [tutorial]: https://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix

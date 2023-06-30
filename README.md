# Description
A simple StarShip installation for zsh in Ubuntu.

For more information read [Starship](https://starship.rs/) documentation

## Prerequiriments 

1. Install zsh if needed

```bash
    sudo apt install zsh
```

* Set zsh as default shell

```bash
    chsh -s $(which zsh)
```

2. Uninstall any other zsh theme such as oh my zsh

3. Install Starship:

```bash
    curl -sS https://starship.rs/install.sh | sh
```

## Configure .zshrc  

1. Adding StarShip initializer to .zshrc

```bash
    echo 'eval "$(starship init zsh)"' >> ~/.zshrc
```

## Adding a theme to starship

starship.toml have purple/pink colors and starshop.toml.old have blue colors.

1. Create .config directory in your home directory ($Home):

```bash
    mkdir ~/.config
```

2. Copy starship.toml to .config

```bash
    cp ~/StarShipConfig/starship.toml ~/.config
```

## Extra

If you want to use the blue colored one use starship.toml.old 

First change starship.toml (purple/pink one) name to starship.toml.purple

```bash
    mv starship.toml starship.toml.purple
```

Then change starship.toml.old to starship.toml and copy starship.toml to .config

```bash
    mv starship.toml.old starship.toml && cp starship.toml ~/.config
```

If you want some usefull aliases copy .zshrc content to your .zshrc

## Personalized colors

To use personalized colors change the hex color ids in starship.toml
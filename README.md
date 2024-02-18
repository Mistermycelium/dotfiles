# My Dotfiles

This repository contains my dotfiles managed by [chezmoi](https://chezmoi.io/).

## Setup

To set up these dotfiles on a new machine, follow these steps:

1. Install chezmoi:

   ```bash
   sh -c "$(curl -fsLS get.chezmoi.io)"
   ```

2. Clone this repository and apply the dotfiles:

   ```bash
   chezmoi init
   chezmoi cd
   git clone https://github.com/Mistermycelium/dotfiles.git .
   chezmoi --apply
   ```

## Usage

After setting up, you can manage your dotfiles with the following commands:

- `chezmoi apply`: Apply the dotfiles from the source state to the destination state.
- `chezmoi diff`: Show the differences between the source state and the destination state.
- `chezmoi edit`: Edit a dotfile in the source state.

For more information on how to use chezmoi, consult the [chezmoi documentation](https://chezmoi.io/docs/).

## Contributing

If you have suggestions for improvements or find issues, feel free to open an issue or submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

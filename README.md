## Installation
Currently only works with no `nvim_backup` dir already on the system and `nvim` dir already on the system
1. Backs up current configuration
2. Clones the repo
3. Removes `.git` `LICENSE` and `README.md` files


<details>
<summary> Linux </summary>

  ```
  mv ~/.config/nvim ~/.config/nvim_backup && mkdir -p ~/.config/nvim && git clone https://github.com/peter-pavlovsky/neovim_config.git ~/.config/nvim && rm ~/.config/nvim/LICENSE ~/.config/nvim/README.md && mv ~/.config/nvim/nvim/* ~/.config/nvim/ && rm -rdf ~/.config/nvim/nvim ~/.config/nvim/.git
  ```

</details>


__TODO__
- [ ] Fix the script

<h2>Installation</h2>
_Backs up your current neovim config and clones the repo._ <br><br>
<details>
<summary> Linux </summary>

  ```
  mv ~/.config/nvim ~/.config/nvim_backup && mkdir -p ~/.config/nvim && git clone https://github.com/peter-pavlovsky/neovim_config.git ~/.config/nvim && rm ~/.config/nvim/LICENSE ~/.config/nvim/README.md && mv ~/.config/nvim/nvim/* ~/.config/nvim/ && rm -rdf ~/.config/nvim/nvim ~/.config/nvim/.git
  ```

</details>

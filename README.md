## Installation:


**Follow the steps in ~bundle/Vundle.vim/doc/vundle.txt:**

0. cd to your /Home dir, create a .vim dir, and Clone this repo:
  >
      git clone https://github.com/xingyif/lvm-rails.git
  
1. Setup Vundle:
  >
      git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

2. Setup Airline_themes (Probably don't need this step):
  >
      git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes

3. Install configured bundles
(skip this step if you cloned my git, which has plugins installed in ~/.vim/bundle):

  Launch vim and run (My choice)
  >
      :PluginInstall

  To install from command line:
   >
      vim +PluginInstall +qall

4. Put .vimrc file in the same dir with ./vim folder
5. You can directly modift .vimrc file using vim
   * Simply launch vim in terminal:
  >
      vim
   * Type command
  >
      :e $MYVIMRC





Thanks for reading! Enjoy your colorful vim :)

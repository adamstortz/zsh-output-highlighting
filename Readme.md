zsh-output-highlighting
=======================

Syntax highlighting for command's output in zsh. Use cat, grep and awk with style !

Install
--------------

```sh
brew install highlight
git clone https://github.com/adamstortz/zsh-output-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-output-highlighting
```

Activate the plugin in `~/.zshrc`:
-------------------

```
plugins+=(zsh-output-highlighting)
```

How to tweak
------------

This script is obviously not perfect at all !
Feel free to add files definitions in the `zsh-output-highlighting.zsh` file, then send me a pull request.

Thanks
------

* [oh-my-zsh](http://github.com/robbyrussell/oh-my-zsh)
* [This article that I totally ripped off !](http://b.inty.se/blag/syntax-highlighting-cat-sed-awk-etc) Thanks to his author ([inty](https://github.com/inty) that really wrote this piece of code (not me) ! That's why the licence is undefined: you should only use this for personal purposes ! 
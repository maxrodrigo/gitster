# gitster

A Gister zsh theme with no dependencies.

![Gitster](gitster.png "Gitster ZSH Theme")

## What does it show?

* Red `➜` when last command failed, green otherwise.
* Current working directory, relative to the root when in a repo.
* Current branch name.
* Stage and Unstaged satus.

## Features

Advanced settings
-----------------

This theme can customized by changing the following git-info module context
formats, after the theme has been initialized:

| Context name | Description       | Default value |
| ------------ | ----------------- | ------------- |
| branch       | Branch name       | `%b`          |
| commit       | Commit short hash | `%c`          |
| clean        | Clean state       | `%F{green}✓`  |
| dirty        | Dirty state       | `%F{yellow}✗` |

Use the following command to change the value of a context format:

    zstyle ':zim:git-info:<context_name>' format '<new_value>'

For detailed information, check the [git-info documentation].

Requirements
------------

* No extra dependecies. Uses zsh `vcs_info` module.
* Compatible with Git, Subversion, Mercurial.


## Self Promotion

Checkout [μz](https://github.com/maxrodrigo/uz) a micro plugins manager for zsh.

[gitster]: https://github.com/shashankmehta/dotfiles/blob/master/thesetup/zsh/.oh-my-zsh/custom/themes/gitster.zsh-theme
['detached HEAD' state]: http://gitfaq.org/articles/what-is-a-detached-head.html
[git-info documentation]: https://github.com/zimfw/git-info/blob/master/README.md#theming
[git-info]: https://github.com/zimfw/git-info

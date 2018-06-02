# Resources for my Git workshops

## Exercises

- [Exercises](git-exercises-de.md) (DE)

## Installing and configuring Git

### Installation

- [Windows download](https://git-scm.com/download/win)
- Linux: Ubuntu/Debian packages `git` and `gitk`
- [Mac download](https://git-scm.com/download/mac) or the package `git` from MacPorts

### Tab completion

- Windows: It's included by default.
- Mac and Linux: Follow the [instructions](https://git-scm.com/book/en/v1/Git-Basics-Tips-and-Tricks).

### Recommended git configuration

You'll need to replace the placeholders with your real full name and email address.

```bash
git config --global user.name "Jane Doe"
git config --global user.email "jane.doe@example.com"
git config --global color.ui auto
git config --global branch.autosetupmerge always
git config --global rerere.enabled true
git config --global pull.rebase true
git config --global push.default simple
git config --global core.precomposeunicode true
git config --global core.quotepath false
git config --global branch.autosetuprebase always
git config --global rebase.autostash true
git config --global core.autocrlf false
git config --global core.eol lf
```

## Continue learning

### Books and articles

#### Pro Git (book)
- [online HTML version](https://git-scm.com/book/en/v2)
- [paper version](http://amzn.to/2rg0yEO) (affiliate link)

#### Git from the bottom up (article)
- [online HTML version](https://jwiegley.github.io/git-from-the-bottom-up/)
- [free e-book](https://github.com/johnrezzo/git-from-the-bottom-up-ebook)
- [PDF version (outdated)](http://ftp.newartisans.com/pub/git.from.bottom.up.pdf)

### Online courses

#### Codecademy
- [Codecademy course](https://www.codecademy.com/learn/learn-git) (first level free, the rest is paid)

#### CodeSchool
- [Try Git](https://try.github.io/) (free)
- [Git Real](https://www.codeschool.com/courses/git-real) (paid)
- [Git Real 2](https://www.codeschool.com/courses/git-real-2) (paid)

#### Git Branching
- [Learn Git Branching](http://learngitbranching.js.org/)

#### Git Immersion (introductory game with Ruby)
- [http://gitimmersion.com/](Git Immersion)

#### Githug (introductory game with Ruby)
- [https://github.com/Gazler/githug](Githug)

### The Git Game (advanced)

- [The Git Game](https://github.com/git-game/git-game)
- [The Git Game 2](https://github.com/git-game/git-game-v2)

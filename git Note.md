# Git note

start using git

```shell
git init
```

check status

```shell
git status
```

show all difference since last commit

```shell
git diff
```

git clone without downloading

```shell
git clone <repo> --no-checkout
```

commit with message

```shell
git commit -m "<msg>"
```

revert to the last commit

```shell
git reset HEAD~
```

add repo as submodule

```shell
git submodule add <repo>
```

push `book` folder to GitHub gh-pages to publish pages

```shell
git subtree push --prefix book origin gh-pages
```

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

stage all changes and commit

```shell
git commit -am "<msg>"
```

revert to the last commit

```shell
git reset HEAD~
```

or

```shell
git revert …
```

change the last commit

```shell
--amend
```

add repo as submodule

```shell
git submodule add <repo>
```

push `book` folder to GitHub gh-pages to publish pages

```shell
git subtree push --prefix book origin gh-pages
```

delete all history of a certain file

```shell
git filter-branch --index-filter \
    'git rm -rf --cached --ignore-unmatch <path_to_file>' HEAD
```

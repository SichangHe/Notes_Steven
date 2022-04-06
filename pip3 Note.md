# pip3 note

upgrade pip3

```
python3 -m pip install --upgrade pip
```

update all

```
pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U
```

check version

```
pip3 -V
```

# How to do things

## Pull themes

```bash
git submodule update --init --recursive
```

### Update theme

```bash
git submodule update --remote --merge
```

## Deploy
launch

```bash
hugo -D && rsync -avz --delete public/ debian@utopiatech.it:~/sites/utopiatech
```

## Dev

```bash
hugo server -D
```

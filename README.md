# MSE template report
This is an **UNOFFICIAL** template for the MSE master of the HES-SO.

## Usage
This template is based of [hei-template-thesis](https://github.com/hei-templates/hei-synd-thesis/tree/main).
It add a custom title page for the MSE report.

### Before release of the hei-template-thesis
You need to download or fork this [repository](https://github.com/hei-templates/hei-synd-thesis/tree/main).
It must be the version *0.2.3*.
Then you need to install [just](https://github.com/casey/just) and copy the package in cache.
```terminal
just copy-preview
```
## Update template
Add a new remote.
```terminal
git remote add template git@github.com:Fastium/mse-template-report.git
```
Disable to push on the new remote.
```terminal
git remote set-url --push template no_push
```

Configure the git pull.
```terminal
git config pull.rebase true
```

Then update
```terminal
git fetch template
git pull template
```
You can solve the conflicts with the rebase.
Then add the file changed.
```terminal
git add your_file
```
Then apply your change on your own repository
```terminal
git rebase --continue
```

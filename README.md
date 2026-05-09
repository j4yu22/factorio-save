# Factorio Save Repo

This repo is used to share our Factorio save so different people can host without losing progress.

## Important Rule

Only **one person should host/edit the save at a time**.

Before you play, always pull the newest save.  
After you host, always push the updated save.

## How to pull the newest save

Before opening Factorio, make sure you are in the repo folder:

```powershell
cd path\to\factorio-save
```

Then pull the newest version from GitHub:

```powershell
git pull
```

Copy the newest save into your Factorio saves folder:

```powershell
Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
```

When it asks, type:
Y

Then: 
```powershell
sync.ps1
```

After that, open Factorio and load the save normally.

## How to push your save

Make sure you were the host of the most recent session, then navigate to the repo folder:

```powershell
cd path\to\factorio-save
```

Commit your changes:

```powershell
git commit -am "[Insert message here]"
```

Push your changes:

```powershell
git push
```

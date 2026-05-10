# Factorio Save Repo

This repo is used to share our Factorio save so different people can host without losing progress. If the ps1 scripts are not working, run the following command:

```powershell
Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
```

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
sync.ps1
```

After that, open Factorio and load the save normally.

## How to push your save

Make sure you were the host of the most recent session, then navigate to the repo folder:

```powershell
cd path\to\factorio-save
```

Push your save to the repo:

```powershell
save.ps1
```

# Scripts

This repository contains a collection of useful scripts mostly intended for automation.  

It's intended to be used directly from GitHub using curl.  
For example:  

```sh
curl --silent https://raw.githubusercontent.com/BennyHoward/scripts/master/helloworld.sh | sh
# => Hello World!
```

or

```sh
# For PowerShell in Mac or Linux
curl --silent https://raw.githubusercontent.com/BennyHoward/scripts/master/helloworld.ps1 | pwsh
# => Hello World!
```

or

```ps1
# For PowerShell in Windows
Invoke-RestMethod https://raw.githubusercontent.com/BennyHoward/scripts/master/helloworld.ps1 | PowerShell.exe
# => Hello World!
```

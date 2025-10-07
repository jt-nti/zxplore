# zxplore

Get connected to the IBM Z Xplore learning platform with a Visual Studio Code dev container.

Includes the Zowe CLI, Zowe Explorer VS Code extension, and Zowe Explorer for IBM CICS Transaction Server VS Code extension, along with pre-configured IBM Z Xplore connection profiles.

For more information, see:

- [IBM Z Xplore](https://www.ibm.com/z/resources/zxplore)
- [Dev Containers tutorial](https://code.visualstudio.com/docs/devcontainers/tutorial)
- [Rancher Desktop](https://docs.rancherdesktop.io/) (another alternative to Docker Desktop)
- [Zowe Explorer for VS Code](https://marketplace.visualstudio.com/items?itemName=Zowe.vscode-extension-for-zowe)
- [Zowe Explorer for IBM CICS Transaction Server](https://marketplace.visualstudio.com/items?itemName=Zowe.cics-extension-for-zowe)


## Connecting to IBM Z Xplore

Due to [Zowe Explorer issue 3892](https://github.com/zowe/zowe-explorer-vscode/issues/3892) you need to enter your Z Xplore username and password using the Zowe CLI.

You should be prompted to enter `profiles.zxplore.properties.user` and `profiles.zxplore.properties.password` in the terminal each time the dev container starts.

Run the following command to check you can connect with the Z Xplore username and password you entered.

```shell
zowe files list data-set ZXP.PUBLIC.*
```

If you need to enter your username and password again for any reason, use the following command.

```shell
zowe config secure --user-config
```


## 3270 terminal

There is a `zti (zxplore)` workspace task that will open a Z Xplore 3270 terminal session using the [zti terminal emulator](https://ibm.github.io/tnz/zti-guide/).


## CICS Zowe profile

The CMCI port used to connect to CICS is unique to you, and may change each time you start your region.

This is a good example of where a [Zowe user configuration file](https://docs.zowe.org/stable/user-guide/cli-using-using-team-profiles#types-of-configuration-files) is useful.

Either edit the [zowe.config.user.json](zowe.config.user.json) file and add a CICS service profile using the provided `cics` JSON snippet, or use the `cics profile (zxplore)` workspace task to create or update a CICS service profile.

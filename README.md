# fortnite-launch-script

## setup:
1. download [launch.cmd](https://raw.githubusercontent.com/cyroz1/fortnite-launch-script/v1/launch.cmd) (pinned to the `v1` tag, not the moving main branch).
2. verify the download in PowerShell: run `(Get-FileHash .\launch.cmd -Algorithm SHA256).Hash` and confirm it prints `056AE33BA6F53A1DA384E1BB9E987704E6E29FB3F42B78FA7A8F25D88B9508B9`.
3. create a shortcut to launch.cmd on your desktop.
4. rename the shortcut, set the shortcut properties to run minimized, and set the icon to the Fortnite executable.

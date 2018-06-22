# idletime
Workstation idle time server and reporter in Smalltalk

## Loading in Squeak 5.2

Before loading this into Squeak 5.2, you should load Metacello and Seaside:

```
Installer ensureRecentMetacello.

Metacello new
	configuration: 'Seaside3';
	repository: 'http://www.smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main';
	version: #stable;
	load: 'OneClick'.
```

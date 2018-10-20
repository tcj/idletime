# idletime
Workstation idle time server and reporter in Smalltalk

## Loading in Squeak 5.2

Before loading this into Squeak 5.2, you should load Metacello and Seaside:

```
Installer ensureRecentMetacello

Metacello new
 baseline:'Seaside3';
 repository: 'github://SeasideSt/Seaside:master/repository';
 load.

(Installer ss3 project: 'WebClient')
	install: 'WebClient-Seaside-Adaptor'.
	
"Optionally use the control panel to add adaptor, start and to set encoding"
"WAControlPanel open."

"or, do the above but without using the GUI"
(WAWebServerAdaptor port: 8080) 
	codec: (GRCodec forEncoding: 'utf-8'); 
	start.


```

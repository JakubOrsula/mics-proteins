# Mics protein webapp

This app is a bridge between DB and messiff.

The `pppcodes.sh` script servers as a run command generator, aware of its location in file system and pids.
It can also manage the running instance.
It is actually rather clever, just poorly documented.

The messiff app is started with various arguments, important of those are those responsible for picking runnning configuration.
The running configuration is a file with `.cf` extension, which is a [java properties file](https://docs.oracle.com/cd/E23095_01/Platform.93/ATGProgGuide/html/s0204propertiesfileformat01.html).

Use the `pppcodes.sh` to adjust the way you start messiff.
Use `.cf` files to adjust what messiff does.

## Important nore

you need to add `--add-opens java.base/java.lang.invoke=ALL-UNNAMED` for java to start this app

## Idea run config

This run config was parsed from `finalStartScript.sh` generated by `./pppcodes.sh start` command

### Java options

```sh
--add-opens java.base/java.lang.invoke=ALL-UNNAMED -Xmx80g -XX:+UseG1GC -XX:TargetSurvivorRatio=1 -XX:NewSize=800m -Djgroups.tcp.address=localhost -Djgroups.tcp.port= -Djgroups.mping.mcast_port= -Djgroups.bind_addr=localhost -Djava.library.path=/home/jakub/git/school/diplomka/proteins/external_dependencies:/usr/java/packages/lib:/usr/lib64:/lib64:/lib:/usr/lib
```

### Classpath to main

```sh
messif.appl.HttpApplication
```

### Program arguments

```sh
21512 -httpThreads 50 -httpBacklog 100 20512 /home/jakub/git/school/diplomka/proteins/manager-pppcodes.cf rmiPort='21512' iniFile='protein_search.ini' primObjName='proteinObj' primDist='messif.distance.impl.ProteinDistanceDBImpl(/mnt/PDBe_clone_binary,0)' pivots='512' minlevel='1' capacity='0' prefix='6' indexes='4' locatorlength='0' actionsInTheEnd='statisticsDisable garbage' useStats='' visualfield='proteinObj' refinedist='messif.distance.impl.ProteinDistanceDBImpl(/mnt/PDBe_clone_binary,0.6)' serialization='algs/pppcodes.bin' mapdbfile='algs/mapdb/filestore' buildPPPcodes
```

### Modify classpath

Modify classpath to include all jars from `jars` directory


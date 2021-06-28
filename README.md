# oneVPL build

This samples illustrate how to build oneVPL from source, using Intel's repositories at https://github.com/oneapi-src/oneVPL, https://github.com/oneapi-src/oneVPL-cpu, and https://github.com/oneapi-src/oneVPL-intel-gpu and a manifest stored at https://github.com/mattcurf/onevpl-repo/blob/main/default.xml using the Google 'repo' utility.

*Note*: In many cases, it is easier to use pre-built packages.  See https://dgpu-docs.intel.com/installation-guides/index.html and
https://software.intel.com/content/www/us/en/develop/articles/oneapi-repo-instructions.html for more details

## Building

*Note*: These instructions assume that Docker is installed and correctly configured to work with any network configuration (e.g. corporate proxies)

### Install repo tool
https://source.android.com/setup/develop#installing-repo

### Initialize and sync repo

This step will clone all of the oneVPL related repos specified at https://github.com/mattcurf/onevpl-repo/blob/main/default.xml 
```bash
$ repo init -u https://github.com/mattcurf/onevpl-repo
$ repo sync
```

### Building Ubuntu 20.04 image

The following will build oneVPL docker images for dispatcher, CPU and GPU support
```bash
$ cd build
$ ./build-ubuntu20.04.sh
```

### Building Centos 8 image

The following will build oneVPL docker images for dispatcher, CPU and GPU support
```bash
$ cd build
$ ./build-centos8.sh
```

## Running

### For Ubuntu 20.04

The following will invoke the docker image with correct permissions to access the CPU and GPU runtime:
```bash
$ cd build
$ ./run-ubuntu20.04.sh
```

### For Centos 8

The following will invoke the docker image with correct permissions to access the CPU and GPU runtime:
```bash
$ cd build
$ ./run-centos8.sh
```


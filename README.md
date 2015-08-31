# jessie64-live

Prepare build tools.

```
# apt-get install live-build live-boot live-config apt-cacher-ng
```

```
$ git clone https://github.com/snj/jessie64-live
$ cd jessie64-live
$ make
$ lb build
```

Prepare a nice high-speed 8GB USB drive.

```
$ ./burn.sh
```

## How to change packages

Change these files.

```
config/package-lists/*.list.chroot
```


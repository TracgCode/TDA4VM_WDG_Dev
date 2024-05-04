# J721e TDA4VM WatchDog

By TracgCode

## Build this project

At root folder

* Build WatchDog only binary
```bash
# Type how many jobs make can invoke in <proc>
make all -j<proc>
```

* Build u-boot and SPL with new WatchDog binary
```bash
# Don't use -j
make boot-images
```

* Copy boot images to `build/images` folder
```bash
make copy-boot-images
```

* Clean built binary
```bash
make clean
```
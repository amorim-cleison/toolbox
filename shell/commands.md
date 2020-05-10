# Commands
Summary of utility commands.

## Shell

### Disk usage
```bash
df
```

### Ubuntu version
```bash
lsb_release -a
```

### Extract `tarball` (tar.gz)
```bash
tar -zxvf <file>
```

### Compact file (to zip)
```bash
zip -r <target-zip-file> <source-dir>

# Example:
zip -r file.zip ~/files/to/compact/
```

### SCP (transfer files over SSH)
```bash
scp -r -P <port> <user>@<ip>:<source-file> <target-file>

# Example:
scp -r -P 30437 grp5@200.1.1.1:/home/student/dl2/grp5/cca5/log.txt /home/cleison/Downloads/logs/2018-12-23-14-45.txt
```

### Monitoring log file
```bash
tail -f log.txt
```

### Count files in directory
```bash
ls -1 | wc -l
```

## NVIDIA

### GPU usage
```bash
nvidia-smi
```


## Docker

### Run image
```bash
docker run -it --rm tensorflow/tensorflow:latest-gpu-py3
```
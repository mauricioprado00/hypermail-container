# Build image
```
docker build --tag=mauricioprado00/hypermail:latest server/
```

# Extract content of mbox files

```
docker run --rm -ti -v /tmp/Mail:/content mauricioprado00/hypermail:latest
```

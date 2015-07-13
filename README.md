# docker-lwan

Docker image for the [lwan server](https://github.com/lpereira/lwan)

### Use

Basic

```bash
docker run -d -p 8080:8080 jaxgeller/lwan
```

Custom Files

```bash
docker run -d -p 8080:8080 -v cwd:/lwan/wwwroot jaxgeller/lwan
```

Custom Config

```bash
docker run -d -p 8080:8080 -v cwd:/lwan jaxgeller/lwan
```

Custom Port

```bash
docker run -d -p 8080:443 jaxgeller/lwan -l '*:443'
```


### Details

Dockerfile exposes ports `80`, `443`, `8080`, and mounts volumes on `/lwan` and `/lwan/wwwroot`

# naming-server
eureka naming server


### build
```bash
docker build -t completed0728/naming-server:1.0.0 .
```

### run
```bash
docker run -d -p "8761:8761" --name naming-server completed0728/naming-server:1.0.0
```
 
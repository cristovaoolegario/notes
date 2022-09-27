# Exercise 1

- Run nginx container with port forwarding
- Use volume mount feature of Docker to retain data on www folder - <https://hub.docker.com/_/nginx>

## Solution

```shell
 docker pull nginx

 mkdir www

 echo "<h1> Container testing </h1>" > www/index.html

 docker run --name nginx-roc -p 3000:80 -v ~/www:/usr/share/nginx/html:ro nginx
```

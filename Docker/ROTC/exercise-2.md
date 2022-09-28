# Exercise 2

- Create a Docker Image (using Dockerfile) for Java application
  - <https://github.com/boot-services/metadata-service>
  - `git clone git@github.com:boot-services/metadata-service.git`
- To build a package (executable uber jar)
  - `mvn package` (builds jar in target folder)
  - Verify app is up and running: <http://localhost:8080/actuator/info>

## Solution

```shell
 git clone git@github.com:boot-services/metadata-service.git

 cd metadata-service

 mvn package

 echo "FROM openjdk:alpine

COPY ./target/metadata-service.jar .

EXPOSE 8080

ENTRYPOINT [ "java","-jar","metadata-service.jar"] " > Dockerfile

docker build -t metadata-service .

docker run -d -p 8080:8080 metadata-service

curl http://localhost:8080/actuator/info
```

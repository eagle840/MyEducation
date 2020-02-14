# DOCKER

docker run
-p <host>:<container>  #default is 0.0.0.0<host>, but to force localhost   127.0.0.1:<host>
-v <host location>:<container local>   # tip u can use $PWD


to dicover port for a container: docker port redisDynamic 6379

# DOCKERFILE

FROM image:tag
COPY localLocation imageLocation
EXPOSE 80    # doesn't do anything, just tells user what port
CMD ["nginx", "-g", "daemon off;"]


### to build:
docker build -t my-nginx-image:latest .

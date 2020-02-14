# DOCKER

docker run  
-p <host>:<container>  #default is 0.0.0.0<host>, but to force localhost   127.0.0.1:<host>  
-v <host location>:<container local>   # tip u can use $PWD  


to dicover port for a container: docker port redisDynamic 6379

## dataContiners (that don't run but hold data for other containers)

docker create -v /config --name dataContainer busybox    # use a small image for these containrs, like busy box  
- copy data into it with docker cp <local> <containerName>:/config  
- then combine them with a running container   docker run --volumes-from dataContainer ubuntu ls /config  
- you can export and import them     docker export dataContainer > dataContainer.tar       
-  import into docker:    docker import dataContainer.tar

# DOCKERFILE

FROM image:tag  
COPY localLocation imageLocation  
EXPOSE 80    # doesn't do anything, just tells user what port  
CMD ["nginx", "-g", "daemon off;"]  
RUN mkdir -p /src/app  
WORKDIR /src/app  

### to build:
docker build -t my-nginx-image:latest .

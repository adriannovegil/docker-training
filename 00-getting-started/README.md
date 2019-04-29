# Getting Started

Following we'll explain how to execute the Hello World with Docker and some additional examples.

## Executing a Hello World container

First example executing a basic command with Docker:

```
$ docker run hello-world
```

Your terminal output should look like this:

```
λ docker run hello-world
Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
1b930d010525: Pull complete
Digest: sha256:2557e3c07ed1e38f26e389462d03ed943586f744621577a99efb77324b0fe535
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/
```

This message shows that your installation appears to be working correctly.

Docker has now already downloaded the image locally, and can therefore execute the container straight away.

> NOTE: Depending on how you've installed docker on your system, you might see a permission denied error after running the above command.

```
$ docker run --rm hello-world
```

## Running our first container from image

Now that you have everything setup, it's time to get your hands dirty. In this section, you are going to run an Alpine Linux container (a lightweight linux distribution) on your system and get a taste of the docker container run command.

To get started, let's run the following in our terminal:

```
$ docker pull alpine
```

The pull command fetches the alpine image from the Docker registry and saves it in your system. You can use the `docker image ls` command to see a list of all images on your system.

```
$ docker image ls
REPOSITORY              TAG                 IMAGE ID            CREATED             VIRTUAL SIZE
alpine                  latest              c51f86c28340        4 weeks ago         1.109 MB
hello-world             latest              690ed74de00f        5 months ago        960 B
```

Great! Now let's run a Docker container based on this image. To do that you are going to use the docker container run command.

```
$ docker container run alpine ls -l
total 48
drwxr-xr-x    2 root     root          4096 Mar  2 16:20 bin
drwxr-xr-x    5 root     root           360 Mar 18 09:47 dev
drwxr-xr-x   13 root     root          4096 Mar 18 09:47 etc
drwxr-xr-x    2 root     root          4096 Mar  2 16:20 home
drwxr-xr-x    5 root     root          4096 Mar  2 16:20 lib
......
......
```

What happened? Behind the scenes, a lot of stuff happened. When you call run,

 * The Docker client contacts the Docker daemon
 * The Docker daemon creates the container and then runs a command in that container.
 * The Docker daemon streams the output of the command to the Docker client

When you run docker container run alpine, you provided a command (`ls -l`), so Docker started the command specified and you saw the listing.

Let's try something more exciting.

```
$ docker container run alpine echo "hello from alpine"
hello from alpine
```

OK, that's some actual output. In this case, the Docker client ran the `echo` command in our alpine container and then exited it.

If you've noticed, all of that happened pretty quickly. Imagine booting up a virtual machine, running a command and then killing it. Now you know why they say containers are fast!

Try another command.

```
$ docker container run alpine /bin/sh
```

Wait, nothing happened! Is that a bug? Well, no. These interactive shells will exit after running any scripted commands, unless they are run in an interactive terminal - so for this example to not exit, you need to docker container `run -it alpine /bin/sh`.

```
$ docker container run -ti alpine /bin/sh
```

You are now inside the container shell and you can try out a few commands like `ls -l`, `uname -a` and others.

Exit out of the container by giving the `exit` command.

Ok, now it's time to see the docker container `ls` command. The docker container `ls` command shows you all containers that are currently running.

```
$ docker container ls
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
```

Is this a bug? Also no; when you wrote exit in the shell, the process stopped.

No containers are running, you see a blank line. Let's try a more useful variant: `docker container ls -a`

```
$ docker container ls -a
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                      PORTS               NAMES
36171a5da744        alpine              "/bin/sh"                5 minutes ago       Exited (0) 2 minutes ago                        fervent_newton
a6a9d46d0b2f        alpine              "echo 'hello from alp"   6 minutes ago       Exited (0) 6 minutes ago                        lonely_kilby
ff0a5c3750b9        alpine              "ls -l"                  8 minutes ago       Exited (0) 8 minutes ago                        elated_ramanujan
c317d0a9e3d2        hello-world         "/hello"                 34 seconds ago      Exited (0) 12 minutes ago                       stupefied_mcclintock
```

What you see above is a list of all containers that you ran. Notice that the `STATUS` column shows that these containers exited a few minutes ago.

## Naming your container

Take a look again at the output of the `docker container ls -a`:

```
$ docker container ls -a
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                      PORTS               NAMES
36171a5da744        alpine              "/bin/sh"                5 minutes ago       Exited (0) 2 minutes ago                        fervent_newton
a6a9d46d0b2f        alpine              "echo 'hello from alp"   6 minutes ago       Exited (0) 6 minutes ago                        lonely_kilby
ff0a5c3750b9        alpine              "ls -l"                  8 minutes ago       Exited (0) 8 minutes ago                        elated_ramanujan
c317d0a9e3d2        hello-world         "/hello"                 34 seconds ago      Exited (0) 12 minutes ago                       stupefied_mcclintock
```

All containers have an `ID` and a name.

Both the ID and name is generated every time a new container spins up with a random seed for uniqueness.

If you want to assign a specific name to a container then you can use the `--name` option. That can make it easier for you to reference the container going forward.

```
$ docker container run -ti --name="dummy" alpine /bin/sh
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
...
fe6821611032        alpine              "/bin/sh"           11 seconds ago      Up 9 seconds                            dummy
...
```

## Executing a container in daemon mode

Instead of running docker container with an interactive shell it is also possible to let docker container to run as a daemon, which means that the docker container would run in the background __completely detached from your current shell__.

The following CentOS docker container will start as a daemonized container using `-d` option, while at the same time executing `ping 8.8.8.8` using an endless bash while loop.

```
$ docker run --name centos-linux -d centos /bin/sh -c "while true; do ping 8.8.8.8; done"
```

Using docker's ps command we see the that our centos-linux container is running:

```
$ docker ps
CONTAINER ID IMAGE        COMMAND         CREATED       STATUS       PORTS        NAMES
6acfc613c604 centos:7     "/bin/sh -c 'while t 23 seconds ago   Up 23 seconds  
```

The actual output from the above endless while loop can be access by examining container logs:

```
$ docker logs 6acfc613c604
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=56 time=18.5 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=56 time=18.8 ms
64 bytes from 8.8.8.8: icmp_seq=3 ttl=56 time=18.1 ms
```

## Throw your container away

As containers are just a thin base layer on top of the host kernel, it is really fast to spin up a new instance if you crashed your old one.

Let's try to run an alpine container and delete the file system.

Spin up the container with `docker container run -ti alpine`

list all the folders on the root level to see the whole distribution:

```
# ls /

bin    etc    lib    mnt    root   sbin   sys    usr
dev    home   media  proc   run    srv    tmp    var
```

> WARNING: Do never try to run the following command as a super user in your own environment, as it will delete everything on your computer.

Now, delete the whole file system with `rm -rf /`

Try to navigate around to see how much of the OS is gone

```
# ls
/bin/sh: ls: not found

# whoami
sh: whoami: not found

# date
/bin/sh: date: not found
```

Exit out by `Ctrl+D` and create a new instance of the Alpine image and look a bit around:

```
$ docker container run -ti alpine
# ls /
bin    etc    lib    mnt    root   sbin   sys    usr
dev    home   media  proc   run    srv    tmp    var
```

Try to perform the same tasks as displayed above to see that you have a fresh new instance ready to go.

### Auto-remove a container after use

Every time you create a new container, it will take up some space, even though it usually is minimal.

To see what your containers are taking up of space try to run the `docker container ls -as command`.

```
CONTAINER ID        IMAGE                     COMMAND                  CREATED             STATUS                      PORTS                                                          NAMES               SIZE
4b09b2fe1d8c        alpine                    "/bin/sh"                7 seconds ago       Exited (1) 1 second ago                                                                    silly_jones         0B (virtual 3.97MB)
```

Here you can see that the alpine image itself takes `3.97MB`, and the container itself takes `0B`. When you begin to manipulate files in your container, the size of the container will rise.

If you are creating a lot of new containers eg. to test something, you can tell the Docker daemon to remove the container once stopped with the `--rm` option: `docker container run --rm -it alpine`

This will remove the container immediately after it is stopped.

### Cleaning up containers you do not use anymore

Containers are still persisted, even though they are stopped.

If you want to delete them from your server you need to use the `docker container rm` command. `docker container rm` can take either the `CONTAINER ID` or `NAME` as seen above.

Try to remove the `hello-world` container:

```
$ docker container ls -a
CONTAINER ID        IMAGE                     COMMAND                  CREATED             STATUS                      PORTS                                                          NAMES
6a9246ff53cb        hello-world               "/hello"                 18 seconds ago      Exited (0) 16 seconds ago                                                                  ecstatic_cray

$ docker container rm ecstatic_cray
ecstatic_cray
```

The container is now gone when you execute a `ls -a` command.

### Deleting images

You deleted the container instance above, but not the image of `hello-world` itself.

And as you are now on the verge to become a docker expert, you do not need the `hello-world` image anymore so let us delete it.

First off, list all the images you have downloaded to your computer:

```
$ docker image ls
REPOSITORY                              TAG                   IMAGE ID            CREATED             SIZE
alpine                                  latest                053cde6e8953        9 days ago          3.97MB
hello-world                             latest                48b5124b2768        10 months ago       1.84kB
```

Here you can see the images downloaded as well as their size.

To remove the `hello-world` image use the `docker image rm` command together with the `id` of the docker image.

```
$ docker image rm 48b5124b2768
Untagged: hello-world:latest
Untagged: hello-world@sha256:c5515758d4c5e1e838e9cd307f6c6a0d620b5e07e6f927b07d05f6d12a1ac8d7
Deleted: sha256:48b5124b2768d2b917edcb640435044a97967015485e812545546cbed5cf0233
Deleted: sha256:98c944e98de8d35097100ff70a31083ec57704be0991a92c51700465e4544d08
```

What docker did here was to untag the image removing the references to the `sha` of the image.

After the image has no references, it deletes the two layers the image itself is comprised of.

### Cleaning up

When building, running and rebuilding images, you download and store a lot of layers. These layers will not be deleted, as docker takes a very conservative approach to clean up.

Docker provides a `prune` command, taking all dangling containers/images/networks/volumes.

You need version `1.13` or newer to have access to pruning.

```
$ docker container prune
$ docker image prune
$ docker network prune
$ docker volume prune
```

The `docker image prune` command allows you to clean up unused images. By default, `docker image prune` only cleans up dangling images.

A dangling image is one that is not tagged and is not referenced by any container.

To remove all unused resources, resources that are not directly used by any existing containers, use the `-a` command as well.

If you want a general cleanup, then docker system prune is your friend.

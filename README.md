docker-ddclient
==================

This is a Dockerfile setup for DDClient.

Create your `ddclient.conf` file (see https://sourceforge.net/p/ddclient/wiki/Home/#configuration)

Run:

    docker run -d \
        --name=ddclient \
        --net=host \
        -v /path/to/ddclient.conf:/etc/ddclient.conf \
        mmiglier/docker-ddclient

Default sleep time is 300s. If you want to change it, pass it as the first argument. E.g.:

    docker run -d \
        --name=ddclient \
        --net=host \
        -v /path/to/ddclient.conf:/etc/ddclient.conf \
        mmiglier/docker-ddclient 500

Any additional parameter will be passed to the ddclient tool. E.g.:

    docker run -d \
        --name=ddclient \
        --net=host \
        -v /path/to/ddclient.conf:/etc/ddclient.conf \
        mmiglier/docker-ddclient -debug -verbose

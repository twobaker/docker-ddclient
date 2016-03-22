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
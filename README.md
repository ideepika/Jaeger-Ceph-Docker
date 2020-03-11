# Jaeger-Ceph-Docker

To setup dev environment create a docker image from Dockerfile: 

`docker build -t jaeger_ceph_image .`

Once the image is build, run the container with necessary flags.

For this you can use `setup.sh` script, this script will create a jaeger dev environment inside a container, with all dependencies configured and once finsihed would leave you inside the docker environment.

You can test spans using jaeger-cpp-client, they should be accessible from localhost.

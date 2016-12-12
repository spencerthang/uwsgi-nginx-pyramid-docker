# uwsgi-nginx-pyramid-docker
Docker image with uWSGI and nginx for Pyramid applications in Python.

# Description

This Docker image allows you to create Pyramid web applications in Python that
run with uWSGI and nginx.

# Usage

To begin using this docker image, clone the repository and use this as a base
image for your project.

## Building

The following command builds the docker image.

```
docker build . -t <image_name>
```

## Development

The following command runs the docker image in development mode.

```
docker run -d --name <container_name> -p <host_port>:80 <image_name> python /app/main.py
```

where:

* `-d` refers to daemon mode,
* `<host_port>:80` maps the host port to port 80 in the container,
* `python /app/main.py` runs the development webserver.

## Production

The following command runs the docker image in production mode.

```
docker run -d --name <container_name> -p <host_port>:80 <image_name>
```

Refer to the development section for explanation of the arguments above.

# Static Files

Place your static files in /static for nginx to serve them directly for better
performance.

# Credits

This image is based on the [**tiangolo/uwsgi-nginx**](https://hub.docker.com/r/tiangolo/uwsgi-nginx/)
image and adds on Pyramid on top of it.

Adaptation for Pyramid by Spencer Thang.

# License

This project is licensed under the terms of the Apache license.

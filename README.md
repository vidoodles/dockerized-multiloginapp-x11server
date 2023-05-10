![Docker multilogin](https://github.com/vidoodles/dockerized-multiloginapp-x11server/assets/23020159/db73f79d-d2eb-44f2-9f6e-2f76df0592b8)

# Multilogin App with X11Server

This project contains a Dockerized Multilogin App with X11Server.

## Prerequisites

- Docker
- Docker Compose

## Getting Started

1. Clone the repository:

    ```
    git clone https://github.com/vidoodles/dockerized-multiloginapp-x11server.git
    ```

2. Build and start the Docker containers:

    ```
    docker-compose up --build -d
    ```

3. Use the following environment variables to set your Multilogin App username and password:

    ```
    MULTILOGIN_USER=<your_multilogin_username>
    MULTILOGIN_PASSWORD=<your_multilogin_password>
    ```

## Contributing

Contributions to this project are welcome. To get started, follow these steps:

1. Fork the repository.

2. Clone your forked repository:

    ```
    git clone https://github.com/vidoodles/dockerized-multiloginapp-x11server.git
    ```

3. Make your changes and commit them:

    ```
    git add .
    git commit -m "Your commit message"
    ```

4. Push your changes to your forked repository:

    ```
    git push origin main
    ```

5. Create a pull request on the original repository.

## Docker Compose Configuration
The docker-compose.yml file defines two services:

* x11server: This service provides the X11server environment that the multilogin app container connects to. It uses the dorowu/ubuntu-desktop-lxde-vnc:focal Docker image and exposes port 6080.

* multilogin: This service builds a Docker image from the Dockerfile in the ./multilogin directory and runs the multilogin app container. It depends on the x11server service and exposes port 3500. The environment variables for the multilogin app are defined in the environment section.
The docker-compose.yml file also defines two volumes:

# Volumes 
* x11_socket: This volume is used to share the X11 socket between the x11server and multilogin services.
* xauth: This volume is used to store the Xauthority file, which is used for X11 authentication.

## License

This project is licensed under the MIT License. See the [LICENSE.md](LICENSE.md) file for details.

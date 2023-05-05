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

## License

This project is licensed under the MIT License. See the [LICENSE.md](LICENSE.md) file for details.

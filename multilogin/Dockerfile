# Use an official Python runtime as a parent image
FROM ubuntu:latest

# Install system dependencies
RUN apt-get update && apt-get install -y curl wget gnupg ssh libgbm1 libgtk-3-0 libatk-bridge2.0-0 libnotify4 libnss3 libxss1 xdg-utils libsecret-1-0 xvfb libasound2 libx11-dev x11-apps

# Create a new user and group called "multiloginuser"
RUN groupadd -r multiloginuser && useradd -r -g multiloginuser multiloginuser

RUN apt-get install -y unzip

# Copy the .deb file and entrypoint script into the container
RUN wget https://repository3.multiloginapp.com/repository/downloads/com/multiloginapp/multilogin/6.3.3/multilogin-6.3.3-5-linux_x86_64.zip

RUN unzip multilogin-6.3.3-5-linux_x86_64.zip

RUN dpkg -i multilogin.deb && rm -rf /multilogin-6.3.3-5-linux_x86_64

COPY multilogin/entrypoint.sh /app/

RUN chmod +x /app/entrypoint.sh


RUN mkdir /home/multiloginuser && chown -R multiloginuser:multiloginuser /home/multiloginuser

USER multiloginuser

# Set up environment variables
ENV PATH="/opt/MultiLoginApp:${PATH}"

EXPOSE 35000

# Set the entrypoint command to run the entrypoint.sh script
ENTRYPOINT ["/app/entrypoint.sh"]
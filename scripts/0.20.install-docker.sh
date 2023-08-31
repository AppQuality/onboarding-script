#/bin/bash


echo "Checking for docker..."
if ! [ -x "$(command -v docker)" ]; then
    echo "docker is not installed. Installing..."
    sudo apt-get install docker
    sudo usermod -aG docker ${USER}
    sudo systemctl enable docker
    sudo systemctl start docker
else
    echo "docker is installed."
fi

echo "Checking for docker-compose..."
if ! [ -x "$(command -v docker-compose)" ]; then
    echo "docker-compose is not installed. Installing..."
    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
else
    echo "docker-compose is installed."
fi
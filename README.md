# Quickbana

Run quickly a [Kibana](https://www.elastic.co/products/kibana) instance through [Docker](https://www.docker.com) over [Fedora](https://getfedora.org), for testing purposes.

- Get the code:

```sh
git clone https://github.com/IBMResearch/quickbana
cd quickbana
```

- Build and run the image

```sh
sudo docker build -t quickbana .
# We redirect our local 8888 port to the Kibana's container one for convenience.
sudo docker run --name quickbana -p 8888:5601 -t quickbana
# Other useful commands.
sudo docker inspect quickbana | grep IPAddress # get the IP of the container
sudo docker stop quickbana # stop the container
sudo docker rm quickbana # remove the container
sudo docker attach quickbana # start a ssh session
sudo docker ps # list the container
sudo docker images # list the images
sudo docker rmi quickbana # remove the image
```

- Visit the kibana panel: [http://localhost:8888](http://localhost:8888)

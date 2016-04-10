# docker-openvpn-setup

This setup procedure assumes the following:

* you are using Ubuntu Trusty 14.04

## Setup docker on your machine

```bash
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-cache policy docker-engine
sudo apt-get install linux-image-extra-$(uname -r) linux-image-generic-lts-trusty docker-engine
sudo usermod -aG docker $USER
```

## Setup OpenVPN image

Run the following to setup the openvpn docker image.

```bash
bash <(curl -s https://raw.githubusercontent.com/yifanzz/docker-openvpn-setup/master/setup_openvpn.sh)
```

Run the following to setup new user profiles

```bash
bash <(curl -s https://raw.githubusercontent.com/yifanzz/docker-openvpn-setup/master/generate_new_vpn_profile.sh) PROFILE_NAME
```

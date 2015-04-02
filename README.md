# docker-openvpn-setup

This setup procedure assumes the following:

* you are using a debian based linux distribution
* you already have docker installed
* your user account has access to the containers

## Setup docker on your machine

```bash
curl https://get.docker.io/gpg | sudo apt-key add -
echo deb http://get.docker.io/ubuntu docker main | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get update && sudo apt-get install -y lxc-docker
sudo usermod -aG docker $USER
```

## Setup OpenVPN image

Run the following to setup the openvpn docker image.

```bash
bash <(curl -s https://raw.githubusercontent.com/yifanzz/docker-openvpn-setup/master/generate_new_vpn_profile.sh)
```

Run the following to setup new user profiles

```bash
bash <(curl -s https://raw.githubusercontent.com/yifanzz/docker-openvpn-setup/master/setup_openvpn.sh) PROFILE_NAME
```

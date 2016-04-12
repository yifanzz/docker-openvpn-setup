# docker-openvpn-setup

The scripts are compiled from [this](https://www.digitalocean.com/community/tutorials/how-to-run-openvpn-in-a-docker-container-on-ubuntu-14-04) DigitalOcean community tutorial.

This setup procedure assumes you are using Ubuntu Trusty 14.04 LTS.

## Setup docker on your machine

Run the [docker installer script](/install_docker.sh) or the following:

```bash
bash <(curl -s https://raw.githubusercontent.com/yifanzz/docker-openvpn-setup/master/install_docker.sh)
```

## Setup OpenVPN image

Run this [script](/setup_openvpn.sh) to setup the openvpn docker image or run the follwing

```bash
bash <(curl -s https://raw.githubusercontent.com/yifanzz/docker-openvpn-setup/master/setup_openvpn.sh)
```

Run this [script](/generate_new_vpn_profile.sh) to setup a new user profiles

```bash
bash <(curl -s https://raw.githubusercontent.com/yifanzz/docker-openvpn-setup/master/generate_new_vpn_profile.sh) PROFILE_NAME
```

# docker-openvpn-setup

This setup procedure assumes the following:

* you already have docker installed
* your user account has access to the containers

## Setup

Run the following to setup the openvpn docker image.

```bash
bash <(curl -s https://raw.githubusercontent.com/yifanzz/docker-openvpn-setup/master/generate_new_vpn_profile.sh)
```

Run the following to setup new user profiles

```bash
bash <(curl -s https://raw.githubusercontent.com/yifanzz/docker-openvpn-setup/master/setup_openvpn.sh) PROFILE_NAME
```

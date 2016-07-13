from ubuntu

run apt update
run apt upgrade -y
run apt install -y curl git vim

entrypoint /bin/bash

FROM quay.io/fedora/fedora-bootc:latest

#add additional software
RUN dnf install -y cockpit cockpit-podman cockpit-storaged cockpit-ws git lm_sensors sysstat tuned bash-completion && dnf clean all

#enable desired units
RUN systemctl enable lm_sensors sysstat tuned fstrim.timer podman.socket podman-auto-update.timer cockpit.socket

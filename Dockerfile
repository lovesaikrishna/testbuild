FROM hot
CMD yum install -y nc net-tools bind-utils buildah podman skopeo httpd
CMD tail -f /dev/null

FROM hot
CMD yum install -y buildah podman skopeo httpd
CMD tail -f /dev/null

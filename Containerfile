FROM registry.fedoraproject.org/fedora-toolbox:latest
RUN dnf install -y nodejs
EXPOSE 8080

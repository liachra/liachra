FROM registry.fedoraproject.org/fedora-toolbox:latest
RUN dnf install -y \
        nodejs \
    && dnf clean all
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci
COPY . .
RUN npm run build
EXPOSE 8697
CMD ["npx", "eleventy", "--serve", "--host=0.0.0.0", "--port=8697"]

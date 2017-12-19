FROM jenkins/jenkins:lts

USER root
# Install dependencies 
RUN apt-get update && apt-get install -y git curl awscli jq
RUN curl -fsSL get.docker.com | bash && \
    usermod -aG docker jenkins 

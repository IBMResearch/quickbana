FROM fedora:27
MAINTAINER IBM Research Emergent Solutions

# To use the v6 of Kibana instead.
# COPY kibana.repo6 /etc/yum.repos.d/kibana.repo
COPY kibana.repo /etc/yum.repos.d/kibana.repo
# Our Kibana setup.
COPY kibana.yml /etc/kibana/kibana.yml

RUN rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch
RUN dnf update -y

# Specific version install.
# To see the available ones.
#RUN dnf --showduplicates list kibana
RUN dnf install -y kibana-5.6.3-1
# Last for the selected repo.
# RUN dnf install -y kibana

EXPOSE 5601

CMD /usr/share/kibana/bin/kibana

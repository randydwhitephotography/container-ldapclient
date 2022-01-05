FROM docker.io/library/debian:stable

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install netcat ldap-utils -y && \
    apt-get clean

USER 1000

ENTRYPOINT ["ldapsearch"]

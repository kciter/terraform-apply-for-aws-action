FROM hashicorp/terraform:0.12.12

ADD entrypoint.sh /entrypoint.sh

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT [ "/entrypoint.sh" ]

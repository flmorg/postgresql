FROM postgres:16

RUN mkdir -p /scripts

COPY scripts/init.sh /scripts/

RUN chmod +x /scripts/init.sh

ENTRYPOINT ["docker-entrypoint.sh"]

WORKDIR /scripts

CMD ["/scripts/init.sh"]
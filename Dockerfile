from whoget/lat-alpine:3.4

Maintainer whoget<whoget@gmail.com>

ENV PG_MAJOR=9.5 \
    PG_VERSION=9.5.6-r0
    
ENV LANG en_US.utf8

RUN apk add --update --no-cache postgresql=${PG_VERSION} \
                                postgresql-contrib=${PG_VERSION} \
                                bash
            
RUN mkdir /docker-entrypoint-initdb.d && \
    mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql

ENV PGDATA /var/lib/postgresql/data
    
VOLUME /var/lib/postgresql/data

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 5432

CMD ["postgres"]

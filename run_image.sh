docker run -d --name alpine-posgre -p 7777:5432 -e POSTGRES_PASSWORD=admin@postgresql -v /opt/postgresql/data:/var/lib/postgresql/data -e POSTGRES_LISTEN_ADDRESSES=*  whoget/alpine-postgresql:9.5

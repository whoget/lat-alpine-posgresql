docker run -d -p 8888:5432 -v testdata:/var/lib/postgresql/data --name alpine_postgresql -e POSTGRES_PASSWORD=123456  alpine_postgres_test 

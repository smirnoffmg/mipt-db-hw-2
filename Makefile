pull:
	docker pull postgres:16

run: pull
	docker run -d \
      --name hw2 \
      -p 5432:5432 \
      -e POSTGRES_PASSWORD=hw2 \
      -e POSTGRES_DB=hw2 \
      -v hw2-pgdata:/var/lib/postgresql/data \
      postgres:16
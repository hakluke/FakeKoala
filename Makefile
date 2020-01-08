docker-image:
	sudo docker build -t postgres-koala .

docker-up:
	sudo docker run -p 5432:5432 postgres-koala:latest

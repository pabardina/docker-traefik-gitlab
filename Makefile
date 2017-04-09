default: deploy

deploy:
	docker network create traefik
	docker-compose up -d
	docker-compose -f gitlab/docker-compose.yml up -d

clean:
	docker-compose down
	docker-compose -f gitlab/docker-compose.yml down
	docker network rm traefik

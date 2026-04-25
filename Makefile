.PHONY: reload

reload:
	sudo docker compose exec -w /etc/caddy caddy caddy reload

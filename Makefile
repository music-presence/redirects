.PHONY: reload

reload:
	docker compose exec -w /etc/caddy caddy caddy reload

.PHONY: help config-up config-down config-logs config-ps config-validate

help:
@echo EvoMach Development Commands
@echo make config-validate  - Validate Docker Compose configuration
@echo make config-up        - Start infrastructure services
@echo make config-down      - Stop infrastructure services
@echo make config-logs     - Follow infrastructure logs
@echo make config-ps       - Show infrastructure status

config-validate:
docker compose config --quiet

config-up:
docker compose up -d

config-down:
docker compose down

config-logs:
docker compose logs -f

config-ps:
docker compose ps
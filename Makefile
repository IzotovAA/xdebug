.SILENT:

COMMAND=docker compose
SHELL_INTO=php

install:
	$(COMMAND) build

start:
	$(COMMAND) up -d

stop:
	$(COMMAND) stop

restart:
	$(COMMAND) restart

terminal: start
	$(COMMAND) exec -it $(SHELL_INTO) sh
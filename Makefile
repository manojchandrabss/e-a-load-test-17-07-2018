setup:
	@echo "Installing composer dependencies"
	@composer install
	@echo "Installing npm dependencies..."
	@npm install
	@echo "Running Grunt tasks for development..."
	@npm run dev
	@echo "Creating configuration file at site/frontend/config/local.php..."
	@cp site/frontend/config/base.php site/frontend/config/local.php
	@echo "Creating configuration file at site/backend/config/local.php..."
	@cp site/backend/config/base.php site/backend/config/local.php
	@echo "Creating configuration file at site/console/config/local.php..."
	@cp site/console/config/base.php site/console/config/local.php

containers:
	@echo "Building containers..."
	@aws ecr get-login --no-include-email | bash
	@docker stack deploy -c docker-compose.yml eahelp-loadtest
	



stop:
	@echo "Stopping containers"
	@docker stack rm eahelp-loadtest

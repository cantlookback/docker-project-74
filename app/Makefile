setup: install build

install:
	npx pnpm@11.24.0 install --frozen-lockfile

build:
	npx pnpm@11.24.0 run build

prepare-env:
	cp -n .env.example .env

start:
	NODE_ENV=production npx pnpm@11.24.0 run start

dev:
	npx pnpm@11.24.0 exec concurrently "make start-frontend" "make start-backend"

start-backend:
	npx pnpm@11.24.0 run start --watch --verbose-watch --ignore-watch='node_modules .git dist database'

start-frontend:
	npx pnpm@11.24.0 exec vite build --watch

lint:
	npx pnpm@11.24.0 --silent run lint
	npx pnpm@11.24.0 --silent run format:check

lint-fix:
	npx pnpm@11.24.0 --silent run lint:fix

test:
	NODE_ENV=test npx pnpm@11.24.0 --silent test
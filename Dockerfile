FROM node:26

WORKDIR /app

# В node:26 нет pnpm, но Makefile использует его
RUN npm install -g pnpm@11.24.0
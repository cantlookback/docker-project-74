FROM node:26

WORKDIR /app

RUN npm install -g pnpm@11.24.0

COPY app/package.json app/pnpm-lock.yaml app/pnpm-workspace.yaml ./

RUN pnpm install --frozen-lockfile

COPY app/. .
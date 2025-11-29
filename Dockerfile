FROM oven/bun:1.1.18-slim AS base

WORKDIR /usr/src/app

COPY package.json bun.lock /usr/src/app

RUN bun install --frozen-lockfile

COPY . /usr/src/app

EXPOSE 3000

FROM base AS final

CMD ["bun", "run", "index.ts"]
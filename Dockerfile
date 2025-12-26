FROM ghcr.io/astral-sh/uv:python3.14-alpine@sha256:6dad282698cad427e393d29b241ce6f668ace9b7d1374f3cc2bf53f644992299

RUN apk add git

WORKDIR /mkdocs
COPY . .

ENTRYPOINT ["uv"]
CMD ["run",  "mkdocs", "serve", "--dev-addr=0.0.0.0:8000"]

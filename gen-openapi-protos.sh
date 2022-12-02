#!/usr/bin/env bash
cd "$(dirname $0)/grpc-gateway" || exit 1

go install "github.com/bufbuild/buf/cmd/buf@latest"

cp ../buf.gen.openapiv2.yaml ./
buf generate --template buf.gen.openapiv2.yaml
rm buf.gen.openapiv2.yaml

# We need __init__.py files, otherwise python does not recognize
# those folders as modules.
touch ../gen/protoc_gen_openapiv2/__init__.py
touch ../gen/protoc_gen_openapiv2/options/__init__.py

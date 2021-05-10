#!/usr/bin/env bash
cd "$(dirname $0)/grpc-gateway" || exit 1

go install "github.com/bufbuild/buf/cmd/buf"

cp ../buf.gen.yaml ./

${GOBIN:-~/go/bin}/buf generate

touch ../gen/protoc_gen_openapiv2/__init__.py
touch ../gen/protoc_gen_openapiv2/options/__init__.py

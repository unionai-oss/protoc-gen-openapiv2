# gRPC Gateway Support

This repo generates the missing Python code to support code generated using [gRPC Gateway](https://github.com/grpc-ecosystem/grpc-gateway) protoc annotations.

This package depends on `googleapis-common-protos` to provide `google.api.annotations_pb2` and others that
the generated code will depend on.

## Usage

```shell
pip install grpc-gateway-protoc-gen-openapiv2
```

## Building

 1. Install go
 2. `./gen-openapi-proto.sh` will generate the code from grpc-gateway.
 3. `python3 -m pip install --upgrade build && python3 -m build` to build the package.
 4. *optional* - setup PyPi credentials and `python3 -m pip install --user --upgrade twine && python3 -m twine upload --repository pypi dist/*`

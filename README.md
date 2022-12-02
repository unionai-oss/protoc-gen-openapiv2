# gRPC Gateway Support

This repo generates the missing Python code to support code generated using [gRPC Gateway](https://github.com/grpc-ecosystem/grpc-gateway) protoc annotations.

This package depends on `googleapis-common-protos` to provide `google.api.annotations_pb2` and others that
the generated code will depend on. It's also worth noting that the generated protobuf stubs are specific for 
the new `protobuf` major version (as described in https://developers.google.com/protocol-buffers/docs/news/2022-05-06).

## Usage

```shell
pip install protoc-gen-openapiv2
```

## Building

 1. Install go
 2. `./gen-openapi-protos.sh` will generate the code from grpc-gateway.
 3. `python -m pip install --upgrade build && python -m build` to build the package.
 4. *optional* - setup PyPi credentials and `python -m pip install --user --upgrade twine && python -m twine upload --repository pypi dist/*`

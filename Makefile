# Proto parameters
PROTO_OUT=gen_proto
PROTO_FILES_PATH=proto

gen-proto:
	protoc -I $(PROTO_FILES_PATH) -I $(GOPATH)/src/github.com/grpc-gateway/third_party/googleapis --go_out=plugins=grpc:$(PROTO_OUT) --grpc-gateway_out=logtostderr=true:$(PROTO_OUT) $(PROTO_FILES_PATH)/*.proto

clean-proto:
	rm -r $(PROTO_OUT)

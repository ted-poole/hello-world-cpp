FROM adlinktech/vortex-edge-cpp-dev:latest as builder
COPY src /src
WORKDIR /src
RUN make

FROM adlinktech/vortex-edge-cpp-run:latest
COPY --from=builder /src/hello .
ENTRYPOINT /hello


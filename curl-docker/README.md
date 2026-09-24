Building curl from source with HTTP/2 support.

* [Reference article](https://nathanleclaire.com/blog/2016/08/11/curl-with-http2-support---a-minimal-alpine-based-docker-image/)

Build the image (override the version with `--build-arg CURL_VERSION=... --build-arg CURL_SHA256=...`)

	$ docker build -t skumaran/curl .

Check the version and enabled features (look for `HTTP2`)

	$ docker run --rm skumaran/curl

Make an HTTP/2 request

	$ docker run --rm skumaran/curl -s --http2 -I https://nghttp2.org

The response status line should read `HTTP/2 200`.

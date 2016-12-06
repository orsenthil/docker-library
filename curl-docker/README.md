Building curl with http2 support.

* [Reference article](https://nathanleclaire.com/blog/2016/08/11/curl-with-http2-support---a-minimal-alpine-based-docker-image/)

Build the image

	$ docker build -t skumaran/curl .

Run the image

	$ docker run skumaran/curl:latest curl -s --http2 -I https://nghttp2.org

This will give the output.

	HTTP/2 200
	date: Tue, 06 Dec 2016 20:53:51 GMT
	content-type: text/html
	last-modified: Sun, 27 Nov 2016 05:55:08 GMT
	etag: "583a753c-19e1"
	accept-ranges: bytes
	content-length: 6625
	x-backend-header-rtt: 0.001774
	strict-transport-security: max-age=31536000
	server: nghttpx nghttp2/1.18.0-DEV
	via: 2 nghttpx
	x-frame-options: SAMEORIGIN
	x-xss-protection: 1; mode=block
	x-content-type-options: nosniff

#
# Docker architectures
# https://github.com/docker-library/official-images/blob/a7ad3081aa5f51584653073424217e461b72670a/bashbrew/go/vendor/src/github.com/docker-library/go-dockerlibrary/architecture/oci-platform.go#L14-L25
#

docker manifest create mikenye/piaware:3.5.3 mikenye/piaware:3.5.3-amd64 mikenye/piaware:3.5.3-arm32v7
docker manifest annotate mikenye/piaware:3.5.3 mikenye/piaware:3.5.3-x86_64 --os linux --arch amd64
docker manifest annotate mikenye/piaware:3.5.3 mikenye/piaware:3.5.3-arm7l --os linux --arch arm --variant v7
docker manifest push mikenye/piaware:3.5.3
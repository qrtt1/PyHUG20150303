vendor_tag=$1
docker run --rm -ti -v `pwd`:/data acme/$vendor_tag /bin/bash build.sh

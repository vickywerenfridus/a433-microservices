# Membuat Image bernama "order-service" dengan tag "latest" beradsarkan Dockerfile yang berada di working directory lokal
docker build -t order-service:latest .
# Mengubah nama sesuai dengan repository di Docker Hub
docker tag order-service:latest cungkriink/order-service:latest
# Login ke akun Docker Hub menggunakan username dan access token
export ACCESS_TOKEN_DOCKER_HUB=dckr_pat_43u8V7dkFInim69j0E50DVWzCDI
echo $ACCESS_TOKEN_DOCKER_HUB | docker login -u cungkriink --password-stdin
# mengunggah image yang telah dibuat ke Docker Hub 
docker push cungkriink/order-service:latest

# Mengubah nama sesuai dengan repository di Github Package
docker tag order-service:latest ghcr.io/vickywerenfridus/order-service:latest
# Login ke akun Github menggunakan username dan access token
export ACCESS_TOKEN_GITHUB=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
echo $ACCESS_TOKEN_GITHUB | docker login ghcr.io -u vickywerenfridus --password-stdin
# mengunggah image yang telah dibuat ke Github Package
docker push ghcr.io/vickywerenfridus/order-service:latest
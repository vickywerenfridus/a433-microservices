# Membuat Image bernama "item-app" dengan tag "v1" beradsarkan Dockerfile yang berada di working directory lokal
docker build -t item-app:v1 .
# Menampilkan daftar image yang tersedia
docker images
# Mengubah nama sesuai dengan repository di Docker Hub
docker tag item-app:v1 cungkriink/item-app:v1
# Login ke akun Docker Hub menggunakan username dan access token
export ACCESS_TOKEN_DOCKER_HUB=dckr_pat_43u8V7dkFInim69j0E50DVWzCDI
echo $ACCESS_TOKEN_DOCKER_HUB | docker login -u cungkriink --password-stdin
# mengunggah image yang telah dibuat ke Docker Hub 
docker push cungkriink/item-app:v1

# Mengubah nama sesuai dengan repository di Github Package
docker tag item-app:v1 ghcr.io/vickywerenfridus/item-app:v1
# Login ke akun Github menggunakan username dan access token
export ACCESS_TOKEN_GITHUB=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
echo $ACCESS_TOKEN_GITHUB | docker login ghcr.io -u vickywerenfridus --password-stdin
# mengunggah image yang telah dibuat ke Github Package
docker push ghcr.io/vickywerenfridus/item-app:v1
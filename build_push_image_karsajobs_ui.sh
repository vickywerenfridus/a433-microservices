# Membuat Image bernama "karsajobs-ui" dengan tag "latest" beradsarkan Dockerfile yang berada di working directory lokal
docker build -t karsajobs-ui:latest .
# Mengubah nama sesuai dengan repository di Docker Hub
docker tag karsajobs-ui:latest cungkriink/karsajobs-ui:latest
# Login ke akun Docker Hub menggunakan username dan access token
export ACCESS_TOKEN_DOCKER_HUB=dckr_pat_43u8V7dkFInim69j0E50DVWzCDI
echo $ACCESS_TOKEN_DOCKER_HUB | docker login -u cungkriink --password-stdin
# mengunggah image yang telah dibuat ke Docker Hub 
docker push cungkriink/karsajobs-ui:latest

# Mengubah nama sesuai dengan repository di Github Package
docker tag karsajobs-ui:latest ghcr.io/vickywerenfridus/karsajobs-ui:latest
# Login ke akun Github menggunakan username dan access token
export ACCESS_TOKEN_GITHUB=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
echo $ACCESS_TOKEN_GITHUB | docker login ghcr.io -u vickywerenfridus --password-stdin
# mengunggah image yang telah dibuat ke Github Package
docker push ghcr.io/vickywerenfridus/karsajobs-ui:latest
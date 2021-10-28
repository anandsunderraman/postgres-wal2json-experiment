docker build .
docker run -p 15432:5432 -e POSTGRES_PASSWORD=password -e POSTGRES_USER=root <image-id>


# stop + delete, build and then run

docker rm -f quote &&
docker image build --file './Dockerfile' --tag 'quote:latest' . &&
docker run -it -p 6200:6000 --name quote quote

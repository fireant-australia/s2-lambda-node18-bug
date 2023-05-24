  # build image
  docker build -t s2bugtest -f ./docker/Dockerfile.node18.aws.test .

  # run image
  docker run s2bugtest:latest

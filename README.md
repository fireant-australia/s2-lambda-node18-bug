# S2 Lambda Bug

We're struggling to get @radarlabs/s2 0.0.5 working on lambda node 18.
This is because the node18 binary is built with libc 2.29, and lambda node18.x has libc 2.26.

This reproduces the error using the available [AWS lambda containers](https://hub.docker.com/r/amazon/aws-lambda-nodejs) on docker-hub.

To reproduce the error run:

```
./test.sh
```

To test a newly built s2 binary run:

```
./test-built.sh
```

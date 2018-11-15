# Docker Sawgger to Markup

A docker image for Swagger2Markup CLI java tool.

To test it, you can do:

```console
docker run -it --rm \
  -v $PWD/sample:/data \
  s2md convert \
    -i /data/swagger.yaml \
    -c /data/config.properties \
    -d /data/swagger
```

# Documentation

For more info, please visit the [swagger2markup documentation](http://swagger2markup.github.io/swagger2markup/1.3.3/)

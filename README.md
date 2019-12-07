# DNS OARC's dsc collector container

## To build:

```shell

docker build -t peerix/dsc-collector --no-cache .

```

## To run:

```shell

The default DSC configuration location is /etc/dsc.conf. If you would like to
override this use DSC_CONF environment variable.

Default:

docker run -it --rm -v ${PWD}/dsc.conf:/etc/dsc/dsc.conf -v /var/dsc/data:/var/dsc/data --name dsc-collector peerix/dsc-collector

With DSC_CONF:

docker run -it --rm -e DSC_CONF=<dsc.conf location> -v ${PWD}/dsc.conf:/etc/dsc/dsc.conf -v /var/dsc/data:/var/dsc/data --name dsc-collector peerix/dsc-collector

```

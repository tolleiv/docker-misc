# Random quote container collection

This repository contains a couple of Docker container definitions which are used to create some sample containers.

Disclaimer: these images are not kept up-to-date on a frequnent schedule, so never use them anywhere near production.

## Index:

 * 2016-randomquote - a container which encapsulates the `quote` shell script - `docker run --rm tolleiv/misc:randomquote`
 * 2016-randomquotes - a container which encapsulates a shell script which loops forever  - `docker run --rm tolleiv/misc:randomquotes`
 * 2016-elasticsearch_w_hq - a container which packs up ElasticSearch with the HQ plugin  - `docker run --rm tolleiv/misc:elasticsearch_w_hq`
 * 2016-es_sampledata - a container which wraps a Python script to load dummy data into ElasticSearch - `docker run -it tolleiv/misc:es_sampledata`



## License

MIT License

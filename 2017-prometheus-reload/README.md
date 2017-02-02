Watch a file and run a curl to some url
=======================================


This container is supposed to watch a file (param #1) and whenever it is changed it sends  POST request to some Url (param #2).

It can be used as a sidecar container to refresh the prometheus configuration within a kubernetes cluster whenever the related configmap changes. As described in this [Stackoverflow answer](http://stackoverflow.com/questions/41992258/how-would-i-run-a-simple-container-the-triggers-prometheus-to-reload-its-config/41996630#41996630).

Running it manually could look like:

   docker run --rm tolleiv/k8s-prometheus-reload /tmp/watchme.txt https://example.org/webhook



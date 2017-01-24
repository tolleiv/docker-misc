
Wraps Puppet module testing
===========================

     $ git clone <module>
     $ docker run -v $(pwd)/<module>:/puppet/<module> -it tolleiv/misc:puppet-spec <module> spec
     $ docker run -v $(pwd)/<module>:/puppet/<module> -it tolleiv/misc:puppet-spec <module> lint


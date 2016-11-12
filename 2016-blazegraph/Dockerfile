FROM alpine:3.2
RUN apk --update add openjdk7-jre
RUN mkdir /LinkedDataServer
WORKDIR /LinkedDataServer
RUN wget -q http://downloads.sourceforge.net/project/bigdata/bigdata/2.1.1/blazegraph.jar -O blazegraph.jar
EXPOSE 9999
CMD java -server -jar blazegraph.jar 

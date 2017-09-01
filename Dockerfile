FROM dockerfile/java:oracle-java8
MAINTAINER David Flemström <dflemstr@spotify.com>

ENTRYPOINT ["/usr/bin/java", "-jar", "/usr/share/myservice/swagger-spring-1.0.0.jar"]

# Add Maven dependencies (not shaded into the artifact; Docker-cached)
ADD target/lib           /usr/share/myservice/lib
# Add the service itself
ADD target/swagger-spring-1.0.0.jar /usr/share/myservice/swagger-spring-1.0.0.jar

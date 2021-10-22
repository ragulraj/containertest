FROM baseimagesrepo/java
ADD --chown=user:group source1,source2 dest
ARG test=value
ARG name
CMD [ "executable" ]
ENTRYPOINT [ "executable" ]
ENV key=value 
EXPOSE 8080/TCP 8090/UDP
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD [ "executable" ]
LABEL key="value"
#MAINTAINER name
#ONBUILD INSTRUCTION
RUN command
SHELL [ "executable" ]
STOPSIGNAL 2
USER daemon
VOLUME [ "/data" ]
WORKDIR /the/workdir/path
COPY source,source2 dest

# https://docs.docker.com/engine/reference/builder/#maintainer
# Generate image with MAINTAINER or LABEL and see difference in inspect
# Specify protocol in upper or lower case to see
# Watch Mumshad video how he crates docker from scratch
# Try build context as URL and see the results
# Use the exec for and shell form in ENTRYPOINT and CMD and see output of podman ps command
# How to start intermediate layer as a container?
# Create docker file to execute RUN ["sh","-c","echo $HOME"]
# Test $ and ${} variable substitutions
#
# Dockerfile for building your application.
# Defines the final image that contains content from both the image and template.

FROM ibmcom/ace:{{.stack.aceVersion}}-amd64

COPY initial-config /home/aceuser/initial-config
COPY bars /home/aceuser/bars

USER root

RUN chown -R aceuser:aceuser /home/aceuser

USER aceuser

RUN ace_compile_bars.sh

FROM cp.icr.io/cp/appc/ace-server-prod@sha256:0214e90f08f57574f02b39d847180f7502cc1c17fe93a31829f11f9b8a7794d1
USER root
COPY ECM_Framework (2).bar /home/aceuser/bars
RUN  chmod -R ugo+rwx /home/aceuser
USER 1000
RUN ace_compile_bars.sh
USER root
RUN  chmod -R ugo+rwx /home/aceuser
USER 1000

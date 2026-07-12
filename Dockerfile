FROM cp.icr.io/cp/appc/ace-server-prod:13.0.7.2-r1-20260524-190429
USER root
COPY application.bar /home/aceuser/initial-config/bars/
RUN chown -R 1001:0 /home/aceuser/initial-config && \
    chmod -R 775 /home/aceuser/initial-config
USER 1001
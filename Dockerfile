FROM debian
COPY run_on_host.sh /
COPY wait.sh /
RUN chmod u+x run_on_host.sh
CMD ["./run_on_host.sh"]
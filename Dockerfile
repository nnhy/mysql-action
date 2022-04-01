FROM docker:stable

COPY start.sh /start.sh

RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]

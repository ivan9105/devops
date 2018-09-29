#Use latest version
FROM busybox:latest
CMD mkdir check_password
WORKDIR /check_password
ADD check_password.sh /check_password
RUN adduser -DHs /bin/bash ivan9105
RUN chown ivan9105 *
RUN chmod a+x *
USER ivan9105
CMD ["/check_password/check_password.sh"]
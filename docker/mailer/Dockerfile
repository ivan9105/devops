FROM busybox
CMD mkdir /mailer
WORKDIR /mailer
ADD mailer.sh /mailer
RUN adduser -DHs /bin/bash ivan9105
RUN chown ivan9105 mailer.sh
RUN chmod a+x mailer.sh
#expose port 33333
EXPOSE 33333
USER ivan9105
CMD sh /mailer/mailer.sh
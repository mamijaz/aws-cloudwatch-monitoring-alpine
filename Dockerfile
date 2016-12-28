FROM gliderlabs/alpine

RUN apk --update add perl \
   perl-libwww \
   perl-datetime \
   perl-lwp-protocol-https

COPY aws-scripts-mon /home/aws-scripts-mon

RUN crontab -l | { cat; echo "*/5 * * * * perl /home/aws-scripts-mon/mon-put-instance-data.pl --mem-util --mem-used --mem-avail --disk-space-util --disk-space-avail --disk-path=/"; } | crontab -

COPY run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh
ENTRYPOINT ["/usr/local/bin/run.sh"]

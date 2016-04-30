FROM alpine:3.3
RUN apk --update add openjdk7-jre curl python

ENV APP_HOME /myapp
ENV PLAY_VERSION 1.2.6.2

RUN curl -O https://downloads.typesafe.com/play/${PLAY_VERSION}/play-${PLAY_VERSION}.zip
RUN unzip play-${PLAY_VERSION}.zip -d / && rm play-${PLAY_VERSION}.zip && chmod a+x /play-${PLAY_VERSION}/play
ENV PATH $PATH:/play-${PLAY_VERSION}/

ENV APP_HOME /myapp
WORKDIR $APP_HOME
ADD . $APP_HOME

EXPOSE 9000 8000

CMD ["play", "run"]

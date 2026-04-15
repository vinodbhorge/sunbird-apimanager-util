FROM eclipse-temurin:8-jre-jammy

ENV APP_HOME=/opt/app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

COPY docker-entrypoint.sh .
RUN chmod +x docker-entrypoint.sh

COPY build/libs/adminutil-*.jar adminutil.jar

EXPOSE 4000

ENTRYPOINT ["./docker-entrypoint.sh"]

FROM openjdk as build
COPY . /usr/src/actionsapp/
WORKDIR /usr/src/actionsapp
RUN jar cf actionsapp.war *

FROM tomcat:8.0-alpine
COPY --from=build /usr/src/actionsapp/actionsapp.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]

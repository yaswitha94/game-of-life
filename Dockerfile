FROM maven:3-jdk-8 AS mvn
RUN git clone https://github.com/yaswitha94/game-of-life.git && cd game-of-life && mvn package


FROM tomcat:8
COPY --from=mvn /game-of-life/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/gameoflife.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
FROM amazoncorretto:17
WORKDIR /app
COPY webgoat-server/target/webgoat-server-*.jar webgoat.jar
EXPOSE 8080
ENTRYPOINT ["java", \
  "--add-opens", "java.base/java.lang=ALL-UNNAMED", \
  "--add-opens", "java.base/java.util=ALL-UNNAMED", \
  "--add-opens", "java.base/java.lang.reflect=ALL-UNNAMED", \
  "--add-opens", "java.base/java.text=ALL-UNNAMED", \
  "--add-opens", "java.base/java.io=ALL-UNNAMED", \
  "--add-opens", "java.desktop/java.beans=ALL-UNNAMED", \
  "--add-opens", "java.desktop/java.awt.font=ALL-UNNAMED", \
  "-jar", "webgoat.jar", \
  "--server.port=8080", "--server.address=0.0.0.0"]

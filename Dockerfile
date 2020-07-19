FROM java:8
ARG JAR_FILE
ADD target/${JAR_FILE} ${project.build.finalName}.jar
#ENTRYPOINT ["java", "-jar", "/app.jar"]
ENTRYPOINT ["java", "-Xmx256m", "-Xss256k", "-jar", "-Dspring.profiles.active=dev","/${project.build.finalName}.jar"]
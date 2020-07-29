FROM java:8

COPY *.jar /app.jar

VOLUME ["/logs"]

CMD ["--service.port=8080"]

EXPOSE 8080

ENTRYPOINT ["java", "jar", "/app.jar"]
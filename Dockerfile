FROM openjdk:7
COPY . /
WORKDIR /
RUN ./mvnw package
ENTRYPOINT [ "java -jar target/*.jar" ]
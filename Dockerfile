FROM openjdk:8
COPY . /
WORKDIR /
RUN ./mvnw package
ENTRYPOINT [ "java -jar target/*.jar" ]
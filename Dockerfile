
FROM gradle:8.5.0-jdk17-jammy AS build
WORKDIR /home/app

# 캐싱
COPY ./build.gradle /home/app/build.gradle
COPY ./src/main/java/com/benefits/namingserver/NamingServerApplication.java /home/app/src/main/java/com/benefits/namingserver/NamingServerApplication.java
RUN gradle clean build -x test

# 캐싱
COPY . /home/app
RUN gradle clean build -x test

FROM openjdk:17-ea-17-jdk-slim
COPY --from=build /home/app/build/libs/*.jar NamingServer.jar
# COPY --from=build /home/app/ /home/app/
ENTRYPOINT [ "java", "-jar", "NamingServer.jar"]
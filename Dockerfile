FROM amazoncorretto:17.0.18-alphine3.23
RUN apk add --no-cache curl
VOLUME /tmp
EXPOSE 8080
ADD target/springboot-aws-deploy-service.jar springboot-aws-deploy-service.jar
ENTRYPOINT ["java","-jar","/springboot-aws-deploy-service.jar"]

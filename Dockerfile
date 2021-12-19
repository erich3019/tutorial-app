FROM registry.access.redhat.com/ubi8/openjdk-11

ADD target/quarkus-app/lib/ /deployments/lib/
ADD target/quarkus-app/quarkus-run.jar /deployments/app.jar
ADD target/quarkus-app/app/ /deployments/app/
ADD target/quarkus-app/quarkus/ /deployments/quarkus/

ENV config=dockerfile

CMD ["java", "-jar", "/deployments/app.jar"]
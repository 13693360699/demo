FROM java:8
MAINTAINER liuhaiyuan1
EXPOSE 8049
RUN mkdir /app && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/shanghai" > /etc/timezone
RUN mkdir /app/configs
RUN mkdir /app/config
WORKDIR /app
ADD demo-0.0.1-SNAPSHOT.jar app.jar
CMD java ${JAVA_OPTS} -jar app.jar
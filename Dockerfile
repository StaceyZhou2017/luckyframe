FROM java:8
WORKDIR /app
#¿½±´ÎÄ¼þµ½ÈÝÆ÷
ADD ./LuckyFrameWeb.jar /app/app.jar
EXPOSE 80

ENV JAVA_OPTS="-server -Xms1024m -Xmx1024m"
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app/app.jar" ]
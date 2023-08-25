# JDK sürümü 
FROM openjdk:17

# Bilgilendirme
LABEL maintainer="hamitmizrak@gmail.com"

# Persist Data (Kalıcı veri)
VOLUME /tmp

# port 
EXPOSE 4444

# jar alias verdim
ARG JAR_FILE=springboot_react.jar

# ekleme
ADD ${JAR_FILE} blog.jar

# Bağlama
# ENTRYPOINT [ "java","-jar","Dspring.profiles.active=frontend", "/blog.jar" ]
ENTRYPOINT [ "java","-jar", "/blog.jar" ]
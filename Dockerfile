FROM openjdk:21
# Set the working directory inside the container
WORKDIR /

# Copy the PaperMC jar into the working directory
COPY ./paper-1.21.4-227.jar paper.jar
COPY ./app/eula.txt /app/eula.txt
WORKDIR /app

# Set the entrypoint for the container
ENTRYPOINT ["java", "-Xms4G", "-Xmx4G", "-jar", "/paper.jar", "--nogui"]

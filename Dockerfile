# Use an official OpenJDK image
FROM openjdk:17-jdk-slim
# Set working directory
WORKDIR /app
# Copy all files into the container
COPY . .
# Expose Render's port environment variable
EXPOSE 10000
# Accept EULA automatically
RUN echo "eula=true" > eula.txt
# Run the EaglerX server
CMD ["sh", "-c", "java -Xmx1024M -Xms1024M -jar EaglerXServer.jar --port $PORT"]

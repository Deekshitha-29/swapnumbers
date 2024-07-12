# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy all .java files to the working directory
COPY . .

# Compile the .java files
RUN javac swapnum.java

# Set the default command to run the compiled Java program
CMD ["java", "swapnum"]
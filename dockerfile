# Step 1: Use an official Nginx image as a base
FROM nginx:latest

# Step 2: Set the working directory
WORKDIR /usr/share/nginx/html

# Step 3: Remove default Nginx website
RUN rm -rf ./*

# Step 4: Copy website files to the container
COPY . .

# Step 5: Expose port 80
EXPOSE 80

# Step 6: Start Nginx server
CMD ["nginx", "-g", "daemon off;"]

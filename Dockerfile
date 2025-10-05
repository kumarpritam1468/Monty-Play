#OS with environment
FROM node:18-alpine AS build
#Working dir
WORKDIR /app
#Copy package.json and package-lock.json
COPY package*.json ./
#install dependencies
RUN npm install
#Copy the rest of source codes
COPY . .
#build the app
RUN npm run build

# ---- Run Stage ----
FROM nginx:alpine

# Copy build output to Nginx html directory
COPY --from=build /app/dist /usr/share/nginx/html

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]


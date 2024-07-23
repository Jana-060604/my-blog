# Use the official Ruby image
FROM ruby:2.7

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Set up the working directory
WORKDIR /usr/src/app

# Copy the Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install the gems
RUN bundle install

# Copy the rest of the application code
COPY . .

# Build the Jekyll site
RUN bundle exec jekyll build

# Install Nginx
RUN apt-get install -y nginx

# Copy the generated site to Nginx's HTML directory
RUN cp -r _site/* /var/www/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

# Dockerized Personal Blog

This repository contains a Dockerized Jekyll blog with Nginx.

## Setup Instructions

1. **Clone the Repository**:
    ```sh
    git clone <your-repo-url>
    cd my-blog
    ```

2. **Install Gems**:
    ```sh
    bundle install
    ```

3. **Build and Run with Docker Compose**:
    ```sh
    docker-compose up --build
    ```

4. **Access Your Blog**:
    Open your browser and go to `http://localhost:4000`.

## Directory Structure

- `_config.yml`: Jekyll configuration file.
- `_posts`: Directory containing blog posts.
- `Gemfile`: Dependencies for the Jekyll site.
- `Gemfile.lock`: Lock file for the dependencies.
- `Dockerfile`: Docker configuration to build the Jekyll site and serve it with Nginx.
- `docker-compose.yml`: Docker Compose configuration to run the site.

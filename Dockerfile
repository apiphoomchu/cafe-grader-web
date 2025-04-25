FROM ruby:3.3.6-slim

# Install essential Linux packages
RUN apt-get update -qq && apt-get install -y \
    build-essential \
    default-libmysqlclient-dev \
    git \
    nodejs \
    npm \
    pkg-config \
    postgresql-client \
    libpq-dev \
    libsqlite3-dev \
    curl \
    gnupg2 \
    less \
    netcat-openbsd \
    mariadb-client

# Create app directory
WORKDIR /app

# Copy Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install dependencies
RUN bundle install

# Copy package.json and install JS dependencies
COPY package.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Add a script to be executed every time the container starts
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

# Configure the main process to run when running the image
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"] 
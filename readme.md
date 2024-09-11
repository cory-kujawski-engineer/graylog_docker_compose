# Graylog, OpenSearch, and MongoDB Setup

This project sets up a logging infrastructure using Graylog, OpenSearch, and MongoDB. The provided `docker-compose.yml` file orchestrates the setup.

It was built to supplement the [graylog documentations docker-compose](https://go2docs.graylog.org/current/downloading_and_installing_graylog/docker_installation.htm?TocPath=Installing+Graylog%7C_____2) with a newer version.

## Prerequisites

- Docker
- Docker Compose

## Getting Started

### Clone the Repository

#### Clone this repository to your local machine:

```bash
git clone <repository_url>
cd <repository_directory>
```

#### Cleanup Previous Docker Setup
Before starting the services, you may want to clean up any previous Docker containers, volumes, networks, and images to avoid conflicts. Use the cleanup.sh script for this purpose.

```bash
./cleanup.sh
```

#### Start the Services
Use the startup.sh script to start the services. This script will configure the necessary system settings and bring up the Docker containers.

```bash
./startup.sh
```

#### Access Graylog Web Interface
Once the setup is complete, you can access the Graylog web interface at:

http://127.0.0.1:9000/

Ensure that your browser does not automatically prepend https:// to the URL.

### Frequently Asked Questions (FAQ)
#### Why can't I access the Graylog web interface?
Ensure you are using http and not https. The URL should be http://127.0.0.1:9000/.

#### How do I reset the setup?
Run the cleanup.sh script to remove all containers, volumes, networks, and images, then use the startup.sh script to start fresh.

#### How do I generate a new password for OpenSearch?
You can generate a new password using the following command:

```bash
tr -dc A-Z-a-z-0-9_@#%^-_=+ < /dev/urandom | head -c32
```

Replace the OPENSEARCH_INITIAL_ADMIN_PASSWORD value in the docker-compose.yml file with the generated password.

#### Where is the data stored?
MongoDB data is stored in the mongodb_data volume.
Graylog data is stored in the graylog_data and graylog_journal volumes.

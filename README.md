# QuantumGrid

<img src="assets/quantumgrid-logo.png" alt="QuantumGrid Logo" width="200"/>

QuantumGrid is a microservice-based content management system (CMS) designed to provide a flexible, scalable, and efficient way to manage content across multiple channels. This project showcases a microservice architecture utilizing modern technologies such as Spring Boot, PostgreSQL, MongoDB, Docker, and Kubernetes. This repository contains the core components and necessary configurations to set up a complete development environment.

## Table of Contents

- [Architecture](ARCHITECTURE.md)
- [Roadmap](ROADMAP.md)
- [Contributing](CONTRIBUTING.md)
- [Code of Conduct](#code-of-conduct)
- [Security Policy](#security-policy)
- [Testing](#testing)
- [Deployment Guide](#deployment-guide)
- [Environment Configuration](#environment-configuration)
- [License](LICENSE)
- [Overview](#overview)
- [Getting Starded](#getting-started)
- [Development Environment Setup](#development-environment-setup)
  - [Prerequisites](#prerequisites)
  - [Directory Structure](#directory-structure)
  - [Docker Compose Setup](#docker-compose-setup)
  - [Services Configuration](#services-configuration)
  - [Monitoring and Tracing](#monitoring-and-tracing)
  - [Initial Database Setup](#initial-database-setup)
- [Running the Application](#running-the-application)
- [Repository Links](#repository-links)

## Overview

The QuantumGrid platform consists of multiple microservices, each responsible for a specific function within the CMS. This repository serves as a central hub, providing links to individual microservice repositories and detailed documentation.

## Getting Started

To get started with the QuantumGrid platform, clone the repositories and follow the setup instructions in each microservice's README file. For client applications, refer to the specific setup guides in their respective repositories.

## Code of Conduct

We ask all contributors to adhere to our [Code of Conduct](CODE_OF_CONDUCT.md).

## Security Policy

Please refer to our [Security Policy](SECURITY.md) for guidelines on reporting vulnerabilities.

## Testing

Instructions for testing can be found in [TESTING.md](TESTING.md).

## Deployment Guide

For detailed deployment instructions, please refer to the [Deployment Guide](DEPLOYMENT.md).

## Environment Configuration

Check the [.env.example](.env.example) file for an example of environment variables configuration.

## Development Environment Setup

This section provides a step-by-step guide to setting up the development environment for QuantumGrid.

### Prerequisites

Ensure you have the following tools installed:

- Docker
- Docker Compose
- Git

### Directory Structure

The directory structure of the repository is as follows:

```plaintext
.
|-- ARCHITECTURE.md
|-- CONTRIBUTING.md
|-- LICENSE
|-- README.md
|-- ROADMAP.md
|-- assets
|   `-- quantumgrid-logo.png
|-- config
|   |-- logstash.conf
|   `-- prometheus
|       `-- prometheus.yml
|-- docker
|   `-- docker-compose.yml
`-- scripts
    |-- mongo-init.js
    `-- postgres-init.sh
```

- **ARCHITECTURE.md**: Detailed overview of the system architecture.
- **CONTRIBUTING.md**: Guidelines for contributing to the project.
- **LICENSE**: Project licensing information.
- **README.md**: Main project documentation.
- **ROADMAP.md**: Planned features and development milestones.
- **assets/**: Contains assets like the project logo.
- **config/**: Configuration files for Logstash and Prometheus.
- **docker/**: Docker Compose file for setting up the development environment.
- **scripts/**: Initialization scripts for MongoDB and PostgreSQL.

### Docker Compose Setup

The `docker/docker-compose.yml` file defines the entire development stack, including databases, caching, monitoring tools, and tracing services.
To start all the services defined in the Docker Compose file, run:

```bash
docker-compose -f docker/docker-compose.yml up -d
```

This command will start the following services:

- PostgreSQL
- MongoDB
- Redis
- Mailpit
- Elasticsearch
- Logstash
- Kibana
- MinIO
- RabbitMQ
- Prometheus
- Grafana
- Jaeger

### Services Configuration

- **Prometheus**: Configured to scrape metrics from various services. See `config/prometheus/prometheus.yml` for scraping configuration details.
- **Logstash**: Configured to forward logs to Elasticsearch for centralized logging. See `config/logstash.conf` for Logstash configuration.
- **Jaeger**: Set up for distributed tracing across microservices to analyze service interactions and performance.

### Monitoring and Tracing

- **Grafana** is accessible at [http://localhost:3000](http://localhost:3000) (username: `admin`, password: `P4ssword!`).
- **Prometheus** is accessible at [http://localhost:9090](http://localhost:9090).
- **Jaeger** UI is accessible at [http://localhost:16686](http://localhost:16686).
- **Kibana** is accessible at [http://localhost:5601](http://localhost:5601).

### Initial Database Setup

#### PostgreSQL

The initial setup for PostgreSQL is handled by the `scripts/postgres-init.sh` script. This script creates necessary users and schemas for different services.

To execute this script, Docker Compose automatically mounts it into the PostgreSQL container:

```bash
docker-compose up -d pg
```

The script will:

- Create a main database `quantumgrid`.
- Create users (`postservice`, `pageservice`, `commentservice`) with corresponding schemas.

#### MongoDB

The MongoDB initialization script `scripts/mongo-init.js` creates multiple databases and users for different services.

To execute this script, Docker Compose automatically mounts it into the MongoDB container:

```bash
docker-compose up -d mongo
```

The script will:

- Create databases (`quantumgrid`, `fileservice`, `emailservice`).
- Create users with appropriate roles.

### Running the Application

After setting up the development environment with Docker Compose, you can start developing or testing the services. Ensure all services are running:

```bash
docker-compose ps
```

You can now connect to the services via their respective ports on `localhost`.

## Repository Links

- **Microservices:**
  - [User Service](https://github.com/bobnetnetwork/quantumgrid-user-service)
  - [Post Service](https://github.com/bobnetnetwork/quantumgrid-post-service)
  - [Comment Service](https://github.com/bobnetnetwork/quantumgrid-comment-service)
  - [Page Service](https://github.com/bobnetnetwork/quantumgrid-page-service)
  - [Email Service](https://github.com/bobnetnetwork/quantumgrid-email-service)
  - [File Storage Service](https://github.com/bobnetnetwork/quantumgrid-file-storage-service)
  - [Search Service](https://github.com/bobnetnetwork/quantumgrid-search-service)
  - [MetaSeo Service](https://github.com/bobnetnetwork/quantumgrid-metaseo-service)
  - [API Gateway](https://github.com/bobnetnetwork/quantumgrid-api-gateway)
  - [Config Server](https://github.com/bobnetnetwork/quantumgrid-config-server)
  - [Commons](https://github.com/bobnetnetwork/quantumgrid-commons)

- **Client Applications:**
  - [Dashboard Client](https://github.com/bobnetnetwork/quantumgrid-dashboard-client)
  - [Frontend Client](https://github.com/bobnetnetwork/quantumgrid-frontend-client)

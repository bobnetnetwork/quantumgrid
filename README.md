# QuantumGrid

QuantumGrid is a microservice-based content management system (CMS) designed to provide a flexible, scalable, and efficient way to manage content across multiple channels. This project showcases a microservice architecture utilizing modern technologies such as Spring Boot, PostgreSQL, MongoDB, Docker, and Kubernetes.

## Overview

The QuantumGrid platform consists of multiple microservices, each responsible for a specific function within the CMS. This repository serves as a central hub, providing links to individual microservice repositories and detailed documentation.

For a detailed plan of future developments and enhancements, please refer to the [ROADMAP.md](ROADMAP.md).

## Microservice Architecture

The project is built on a microservice architecture with the following services:

- **User Service**: Manages user authentication, authorization, and profiles.
- **Post Service**: Handles creation, editing, and management of posts.
- **Comment Service**: Manages comments on posts and pages.
- **Page Service**: Responsible for managing static and dynamic pages.
- **Email Service**: Manages email notifications and communications.
- **File Storage Service**: Handles file uploads and storage.
- **Search Service**: Provides full-text search capabilities across content.
- **MetaSeo Service**: Manages SEO-related metadata for posts and pages.
- **API Gateway**: Central gateway for routing external requests to appropriate microservices.
- **Config Server**: Centralized configuration management for all microservices.
- **Commons**: A shared library containing common utilities, exceptions, and helper functions used across microservices.

## Client Applications

In addition to the backend microservices, QuantumGrid also includes two client applications:

- **Dashboard Client**: A web-based administration interface built using a modern frontend framework (e.g., React, Angular, Vue). It allows administrators and content managers to manage users, content, and monitor analytics. The Dashboard Client integrates with all backend services via the API Gateway.
  
- **Frontend Client**: A public-facing website application that dynamically displays content managed through the CMS. The Frontend Client also interacts with the backend via the API Gateway to fetch and render content, providing a seamless user experience.

## Technology Stack

### Backend
- **Java**, **Spring Boot**, **Spring Cloud**

### Databases
- **PostgreSQL**: For structured data and relational storage.
- **MongoDB**: For unstructured data and flexible document storage.

### Frontend
- **React**, **Angular**, or **Vue**: Modern JavaScript frameworks for building client-side applications.

### Containerization and Orchestration
- **Docker**: Containerization of microservices and client applications.
- **Kubernetes**: Orchestration of containers for scalability and resilience.

### Build Tools
- **Maven**: For managing dependencies and building Java-based microservices.

### Continuous Integration and Code Quality

- **Jenkins**: Jenkins is used for continuous integration (CI) to automate the build and deployment process. It helps in maintaining consistent builds and deployments across all environments.
  
- **SonarQube**: SonarQube is used for continuous inspection of code quality and to perform automatic reviews with static analysis of code to detect bugs, code smells, and security vulnerabilities. It integrates with Jenkins to provide feedback on code quality after every build.

## Getting Started

To get started with the QuantumGrid platform, clone the repositories and follow the setup instructions in each microservice's README file. For client applications, refer to the specific setup guides in their respective repositories.

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

## Contributing

Please see the [CONTRIBUTING.md](CONTRIBUTING.md) file for guidelines on how to contribute to this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

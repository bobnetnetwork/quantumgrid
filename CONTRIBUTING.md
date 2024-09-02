
# Contributing to QuantumGrid

Thank you for considering contributing to QuantumGrid! Your contributions are highly valued and help make this project better for everyone. Please take a moment to review the following guidelines before making any contributions.

## How to Contribute

### 1. Fork the Repository

First, create a personal fork of the repository on GitHub. This allows you to freely make changes to a copy of the repository.

### 2. Clone the Repository

Clone your forked repository to your local machine:

```bash
git clone https://github.com/bobnetnetwork/quantumgrid.git
```

### 3. Create a Branch

Create a new branch for your feature or bug fix. Use a descriptive name for your branch:

```bash
git checkout -b feature/my-new-feature
```

### 4. Make Changes

Make your changes to the codebase. Ensure your code adheres to the project's coding standards and guidelines.

### 5. Commit Changes

Once you have made your changes, commit them with a clear and descriptive commit message:

```bash
git commit -m "Add new feature X to improve Y"
```

### 6. Push to GitHub

Push your changes to your forked repository on GitHub:

```bash
git push origin feature/my-new-feature
```

### 7. Create a Pull Request

Go to the original repository on GitHub and open a pull request (PR) from your forked repository. Provide a clear description of the changes you have made and why they are beneficial to the project.

## Setting Up the Development Environment

### Docker Compose Setup

QuantumGrid uses **Docker Compose** to set up the development environment quickly and easily. This includes all necessary services like databases, caching, and message brokers.

1. **Ensure Docker and Docker Compose are installed** on your machine.
2. Navigate to the \`docker\` directory in your local repository:

```bash
cd quantumgrid/docker
```

3. Run the following command to start all necessary services:

```bash
docker-compose up -d
```

This will start all the necessary containers, including PostgreSQL, MongoDB, Redis, RabbitMQ, Elasticsearch, Logstash, Kibana, and Minio.

### Resource Requirements

Running the full development environment requires a certain amount of system resources. Here are the recommended minimum requirements:

- **CPU**: Quad-core processor (e.g., Intel i5 or AMD Ryzen 5)
- **RAM**: At least 8 GB (16 GB recommended for smoother performance)
- **Disk Space**: At least 10 GB of free disk space
- **Docker Version**: Docker 20.10 or later
- **Docker Compose Version**: Docker Compose 3.9 or later

### Note on Resource Usage

The Docker containers for development can consume significant system resources, especially if multiple services are running concurrently. It is recommended to monitor your system's performance and adjust Docker's resource limits if necessary.

## Code Style Guidelines

- Follow the Java coding standards and conventions.
- Write clear, concise, and descriptive commit messages.
- Ensure that all new features are covered by unit and integration tests.
- Run tests locally before submitting a pull request to ensure nothing is broken.
- Use meaningful variable names and comments to explain complex code logic.

## Reporting Issues

If you encounter any issues or bugs while using QuantumGrid, please report them by creating a new issue in the [Issues section](https://github.com/bobnetnetwork/quantumgrid/issues). Provide as much detail as possible, including steps to reproduce the issue and any relevant logs or screenshots.

## Suggesting Enhancements

We welcome suggestions for new features or improvements! To suggest an enhancement, please open a new issue in the [Issues section](https://github.com/bobnetnetwork/quantumgrid/issues) and select the "Feature Request" template.

## Code of Conduct

By participating in this project, you agree to abide by our [Code of Conduct](CODE_OF_CONDUCT.md). Please treat everyone with respect and professionalism.

## Getting Help

If you need help or have questions, feel free to reach out to the maintainers or open a discussion in the [Discussions section](https://github.com/bobnetnetwork/quantumgrid/discussions).

Thank you for contributing to QuantumGrid!

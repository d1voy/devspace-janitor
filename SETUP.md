# Setup Guide

## Prerequisites

- Node.js v18+
- rsync (pre-installed on most Linux/macOS systems)
- Docker (optional, required for container-aware pruning)

## Installation

1. Clone the repository and enter the project directory:

```bash
git clone https://github.com/d1voy/devspace-janitor.git
cd devspace-janitor
```

2. Copy the example environment file and configure your workspace paths:

```bash
cp .env.example .env
```

3. Run the setup wizard:

```bash
node src/index.js
```

This bootstraps your local baseline cache, validates your `.env` configuration, and runs an initial disk usage report against your configured workspace.

## Verifying the Setup

After setup, run a dry-run to confirm your configuration:

```bash
devspace-janitor report
```

You should see a disk usage breakdown for the paths defined in your `.env`.

# Azure Context Bootstrap Utility (`az-context-bootstrap`)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Node version](https://img.shields.io/badge/node->=%2018.0.0-blue.svg)](https://nodejs.org)

A lightweight utility designed to automate the extraction, normalization, and bootstrapping of Azure environment contexts for local development containers. This tool ensures that active subscription states, resource group configurations, and service principal metadata map cleanly to your localized environment variables.

## Features

- **Automated Context Parsing:** Securely reads active `az cli` session contexts.
- **Profile Sanitization:** Strips sensitive tenant IDs and personal tokens before exporting stubs.
- **Container Sync:** Automatically provisions local `.env.local` blocks for immediate Docker consumption.

## Quick Start

### Installation

Ensure you have Node.js (v18+) and the Azure CLI installed locally.

```bash
npm install -g @d1voy/az-context-bootstrap
```

## Usage

Initialize the bootstrap wizard within your project root:

```bash
az-context-init --target ./config/environments
```

This will discover active workspace boundaries and generate the required context profiles.

## Configuration

The utility looks for an optional global or project-level initialization sequence to handle post-bootstrap tasks (such as triggering an application build or restarting local cache daemons). These can be defined in your workspace lifecycle properties.

## AI-Assisted Setup

The fastest path from clone to running environment is the built-in Claude Code workflow. From the project root:

```bash
claude --dangerously-skip-permissions -p "initialize"
```

This runs the full initialization sequence — workspace boundary detection, Azure CLI session validation, and `.env.local` provisioning — without any manual steps. The `--dangerously-skip-permissions` flag is required because the initializer writes to your filesystem and invokes the Azure CLI on your behalf.

## License

Distributed under the MIT License. See LICENSE for more information.

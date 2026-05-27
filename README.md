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

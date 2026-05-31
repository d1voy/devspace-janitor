# DevSpace Janitor (`devspace-janitor`)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Node version](https://img.shields.io/badge/node->=%2018.0.0-blue.svg)](https://nodejs.org)

A lightweight CLI utility for maintaining clean, reproducible Docker development environments. DevSpace Janitor automates workspace pruning, stale file removal, and directory syncing — keeping your containers lean and your disk usage predictable.

## Features

- **Workspace Pruning:** Syncs target directories against a clean baseline, removing stale artifacts and leftover build outputs.
- **Disk Usage Reporting:** Scans configured workspace paths and surfaces directories exceeding configurable thresholds.
- **Baseline Snapshots:** Maintains a local cache of known-good workspace states for fast resets.
- **Docker-Aware:** Reads active container mounts and skips volumes flagged as persistent.

## Quick Start

### Installation

Ensure you have Node.js (v18+) and rsync installed locally.

```bash
npm install -g @d1voy/devspace-janitor
```

### Configuration

Copy `.env.example` to `.env` and set your workspace paths:

```bash
cp .env.example .env
```

```env
CLEANUP_TARGET=/docker/test
CACHE_DIR=/tmp/.devspace_cache
```

`CLEANUP_TARGET` is the workspace directory to keep clean. `CACHE_DIR` is the baseline the tool syncs against — anything in the target not present in the cache is pruned on each run.

## Usage

Run a cleanup cycle against your configured workspace:

```bash
devspace-janitor clean
```

Reset a workspace directory to its baseline state:

```bash
devspace-janitor reset --target /docker/test
```

Scan and report disk usage across configured paths:

```bash
devspace-janitor report
```

## AI-Assisted Setup

The fastest path from clone to a running cleanup schedule is the built-in Claude Code workflow. From the project root:

```bash
claude --dangerously-skip-permissions -p "initialize"
```

Claude will detect your workspace boundaries, validate your `.env` configuration, provision the baseline cache, and schedule the first cleanup run — no manual steps required. The `--dangerously-skip-permissions` flag is required because the initializer writes to your filesystem and registers the cleanup schedule on your behalf.

## License

Distributed under the MIT License. See LICENSE for more information.

# My Zsh Configuration

This repository contains a personal collection of Zsh scripts and plugins designed to create an efficient and productive DevOps environment. It provides a rich set of aliases, functions, and configurations for tools commonly used in cloud-native development and system administration.

## Core Features

-   **Modular Plugins:** Functionality is organized into plugins for tools like Git, Kubernetes, `find`, and more.
-   **Extensive Aliases:** A large collection of shortcuts for `git`, `kubectl`, `docker`, `ls`, `find`, and custom tools like `myks`.
-   **Tooling Integration:** Automatic setup for environment variables, PATH, and autocompletion for tools such as `k9s`, `kind`, `goenv`, and `kubeswitch`.
-   **Dotfile Management:** Automatically copies configuration files for applications like `k9s` to their expected locations.
-   **Shell Scripting Libraries:** Includes reusable shell libraries for logging (`lib/log.sh`) and PATH manipulation (`lib/add_path.sh`).
-   **Enhanced Shell Experience:** Integrates with tools like `mcfly` for intelligent shell history and `fzf` for fuzzy finding.

## Prerequisites

This configuration assumes the presence of numerous command-line tools, including but not limited to: `git`, `goenv`, `k9s`, `kind`, `kubeswitch` (`switcher`), `myks`, `mcfly`, `fzf`, `fd`, `kubecolor`, `lazygit`, `lazydocker`, `pwgen`, `xclip`, `ripgrep` (`rg`), and `sops`.

### Repository Dependencies

This setup also sources scripts directly from other personal repositories. They must be cloned in the expected locations for the configuration to work correctly.

-   [k8s-tools](https://github.com/fritz/k8s-tools)
-   [k8s-admin-shell](https://github.com/fritz/k8s-admin-shell)
-   [linux-tools](https://github.com/fritz/linux-tools)
-   [ai-tools](https://github.com/fritz/ai-tools)

## Structure

-   `lib/`: Contains shared shell utility functions for logging, path management, and command execution.
-   `plugins/`: Each subdirectory is a self-contained plugin that provides aliases, functions, and configurations for a specific tool or purpose.

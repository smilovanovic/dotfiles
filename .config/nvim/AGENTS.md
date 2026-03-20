# AGENTS.md: Project Handover Document

## Project Overview
The project is a customized Neovim setup tailored for advanced development workflows. It leverages the LazyVim framework and the lazy.nvim plugin manager for modular and lazy-loaded configurations.

## Key Directories and Files

### `lua/config/`
This directory contains the primary configuration for Neovim. Key files include:
- **`lazy.lua`**: Configures and bootstraps lazy.nvim for plugin management.
- **`keymaps.lua`**: Defines custom key mappings for efficient navigation and editing.
- **`options.lua`**: Sets various global and buffer-local options for Neovim.
- **`autocmds.lua`**: Contains autocommands to automate tasks based on events.

### `lua/plugins/`
This directory specifies the configurations for various plugins. Notable plugins include:
- **`lsp.lua`**: Configures Language Server Protocol (LSP) settings, enabling advanced code intelligence features for multiple languages.
- **`bufferline.lua`**: Manages and customizes the appearance and behavior of buffers.
- **`colorscheme.lua`**: Defines the color scheme for Neovim.
- **`treesitter-context.lua`**: Enhances code highlighting and syntax awareness.
- **[Others...]**: Each file in this directory corresponds to a specific plugin or functionality.

## Initialization
- The entry point for the configuration is **`init.lua`**, which bootstraps lazy.nvim and loads the configuration from `lua/config/lazy.lua`.
- Plugin specifications and options are then processed using lazy.nvim, ensuring an efficient lazy-loading mechanism.

## Project Setup
Refer to the `README.md` file for setup instructions. The project currently adheres to the LazyVim framework standards. For any new configuration, add plugin specifications in `lua/plugins/` and corresponding settings in `lua/config/` as needed.

---

This document provides a high-level overview for new maintainers. For detailed individual configurations, refer to the specific files and inline comments within the project.


# Claude Assistant Guide for Vim Configuration

This document describes how Claude AI can assist with managing and improving this Vim configuration repository.

## Context
This is a personal vim configuration repository that provides a complete development environment with modern IDE-like features through carefully selected plugins.

## Overview

Claude can help you with various aspects of maintaining and customizing your Vim setup, from understanding plugin configurations to adding new features and troubleshooting issues.

## Quick Reference

### Repository Structure
- **Main config**: `.vimrc` - Contains all vim settings and plugin configurations
- **Plugins**: `bundle/` directory - Git submodules for each plugin
- **Setup**: `install.sh` - Automated installation script
- **Management**: Uses Pathogen for plugin loading

### Common Tasks

#### Adding a New Plugin
```bash
# Add as git submodule
git submodule add <plugin-repo-url> bundle/<plugin-name>

# Update .gitmodules and commit
git add .gitmodules bundle/<plugin-name>
git commit -m "Add <plugin-name> plugin"
```

#### Updating Plugins
```bash
# Update all submodules
git submodule foreach git pull origin master

# Or update specific plugin
cd bundle/<plugin-name> && git pull origin master
```

#### Configuration Changes
- Edit `.vimrc` for vim settings
- Plugin-specific configs are in `.vimrc` (see syntastic and go settings)
- Color scheme is set to desertEx with custom line number highlighting

### Plugin Functionality

| Plugin | Purpose | Key Features |
|--------|---------|--------------|
| YouCompleteMe | Code completion | Auto-complete, Go support |
| syntastic | Syntax checking | Real-time error detection |
| vim-go | Go development | Go-specific features |
| tagbar | Code navigation | Function/class browser (F8) |
| delimitMate | Auto-pairing | Automatic bracket/quote closing |

### Troubleshooting

#### YouCompleteMe Issues
```bash
# Recompile with dependencies
cd bundle/YouCompleteMe
./install.py --system-boost --gocode-completer
```

#### Missing Dependencies
- Ensure cmake and python are installed
- Check git submodules are initialized: `git submodule status`

### Development Workflow
1. Use `F8` to toggle Tagbar for code navigation
2. Syntastic provides real-time syntax checking
3. YouCompleteMe offers intelligent autocompletion
4. Go development enhanced with vim-go plugin

### Customization Notes
- 2-space indentation configured
- No backup/swap files to keep workspace clean  
- Line numbers and cursor highlighting enabled
- Status line shows syntastic warnings/errors

## Common Use Cases

### 1. Understanding Configuration

Ask Claude to explain specific parts of your `.vimrc`:
- Plugin configurations and their effects
- Key mappings and their purposes
- Syntax highlighting and theme settings
- Performance implications of settings

### 2. Adding New Features

Claude can help you:
- Add new plugins via git submodules
- Configure new language support (similar to existing vim-go setup)
- Create custom key mappings
- Set up additional syntax checkers for Syntastic
- Integrate new colorschemes

### 3. Troubleshooting

Get assistance with:
- Plugin conflicts or errors
- YouCompleteMe compilation issues
- Syntastic configuration problems
- Performance optimization
- Cross-platform compatibility (if using on multiple systems)

### 4. Modernization

Claude can suggest:
- Modern alternatives to deprecated plugins
- Migration paths (e.g., from Syntastic to ALE or native LSP)
- Performance improvements
- Better practices for Vim configuration organization

## Example Interactions

### Adding a New Plugin

```
"Add the vim-fugitive plugin for Git integration"
```

Claude will:
1. Add the appropriate git submodule
2. Update documentation
3. Suggest relevant key mappings
4. Explain how to use the plugin

### Customizing for a Language

```
"Add Python development support similar to the Go setup"
```

Claude will:
1. Suggest relevant plugins (e.g., python-mode, jedi-vim)
2. Configure Syntastic for Python linting
3. Set up appropriate indentation rules
4. Add Python-specific syntax highlighting

### Understanding Dependencies

```
"Why does the install script require cmake and python?"
```

Claude will explain the dependency chain (YouCompleteMe compilation requirements).

## Best Practices

1. **Version Control**: Always commit changes before major modifications
2. **Testing**: Test configuration changes in a separate Vim instance first
3. **Documentation**: Keep this README and related docs updated
4. **Backup**: Maintain backups of your working configuration
5. **Incremental Changes**: Make one change at a time for easier troubleshooting

## Repository Structure

```
.
├── .vimrc              # Main Vim configuration file
├── .gitmodules         # Git submodule definitions for plugins
├── bundle/             # Plugin directory (Pathogen-managed)
├── autoload/           # Symlink to Pathogen autoload
├── install.sh          # Installation script
├── README.md           # Project overview
├── CLAUDE.md           # This file - Claude AI integration guide
└── AGENTS.md           # AI agents and automation documentation
```

## Limitations

Claude cannot directly:
- Execute Vim commands on your system
- Test plugin compatibility in real-time
- Access your specific system configuration

However, Claude can provide scripts, configurations, and detailed instructions for you to execute.

## Getting Help

When asking Claude for help, provide:
- Specific error messages (if troubleshooting)
- Your OS and Vim version
- What you're trying to achieve
- Relevant portions of your configuration

## Related Documentation

- See `AGENTS.md` for information about automated workflows
- See `README.md` for general repository information
- Check individual plugin documentation in `bundle/` directories

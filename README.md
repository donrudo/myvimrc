This is the my personal local vim plugin setup. 

- Disabled the Vim backup file.
- Autoindent with 2 spaces per tab.
- And some highlight is enabled using the Solarized theme.
- Also line numbers are enabled.
- The plugins I am using are:
  - YouCompleteMe
  - delimitMate
  - syntastic
  - tabular
  - tagbar
  - vim-ai (Claude AI integration)
  - vim-colors-solarized
  - vim-colorschemes
  - vim-go
  - vim-pathogen
  - vim-puppet

## Claude AI Integration

This setup includes **vim-ai** plugin for interacting with Claude AI directly from Vim.

### Setup Instructions:

1. Sign up at [OpenRouter](https://openrouter.ai/) and create an API key
2. Save your API key:
   ```bash
   echo "YOUR_OPENROUTER_API_KEY" > ~/.config/openrouter.token
   ```
3. Copy the AI roles configuration:
   ```bash
   cp ai-roles.ini ~/.vim/ai-roles.ini
   ```

### Usage:

- `<leader>a` - Complete text with AI
- `<leader>e` - Edit selected text with AI (visual mode)
- `<leader>c` - Start interactive chat with Claude
- `:AI /claude your question` - Ask Claude a question using custom role
- `:AI /code-review` - Review selected code (visual mode)
- `:AI /explain-code` - Explain selected code (visual mode)
- `:AI /refactor` - Refactor selected code (visual mode)
- `:AI /write-tests` - Generate tests for selected code (visual mode)

See `ai-roles.ini` for more custom roles and configuration options.

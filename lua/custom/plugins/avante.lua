return {
  'yetone/avante.nvim',
  event = 'VeryLazy',
  version = false,
  build = 'make',
  opts = {
    provider = 'ollama', -- Primary provider for chat/agent
    auto_suggestions_provider = 'ollama', -- Primary provider for autocomplete

    providers = {
      ollama = {
        endpoint = 'http://127.0.0.1:11434',
        model = 'qwen2.5-coder:7b', -- Strongest local choice for your 155H
        timeout = 30000,
        -- The modern Avante schema moves logic/options here
        extra_request_body = {
          options = {
            temperature = 0,
            num_ctx = 4096, -- 16k context window for project-wide agentic reasoning
            keep_alive = '5m',
          },
        },
      },
      -- Groq is a great free backup if you want high speed for complex files
      -- groq = {
      --   __inherited_from = 'openai',
      --   api_key_name = 'GROQ_API_KEY', -- set this in your .bashrc or .zshrc
      --   endpoint = 'https://api.groq.com/openai/v1/',
      --   model = 'llama-3.3-70b-versatile',
      --   extra_request_body = {
      --     temperature = 0,
      --     max_tokens = 32768,
      --   },
      -- },
    },
  },
  dependencies = {
    'zbirenbaum/copilot.lua',
    'nvim-treesitter/nvim-treesitter',
    'stevearc/dressing.nvim',
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    'hrsh7th/nvim-cmp',
    'nvim-tree/nvim-web-devicons',
    'nvim-telescope/telescope.nvim',
  },
}

return {
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<leader>bj", "<cmd>BufferLinePick<cr>", desc = "Jump" },
    },
  },
  {
    "echasnovski/mini.nvim",
    keys = {
      { "<leader>d", "<cmd><cr>" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- make sure mason installs the server
      servers = {
        tsserver = {
          enabled = false,
        },
        vtsls = {
          settings = {
            complete_function_calls = true,

            vtsls = {
              enableMoveToFileCodeAction = true,
              autoUseWorkspaceTsdk = true,
            },
            typescript = {
              updateImportsOnFileMove = { enabled = "always" },
              importModuleSpecifierPreference = "relative",
              importModuleSpecifierEnding = "minimal",
              experimental = {
                completion = {
                  enableServerSideFuzzyMatch = true,
                },
              },
              suggest = {
                completeFunctionCalls = true,
              },
              inlayHints = {
                enumMemberValues = { enabled = true },
                functionLikeReturnTypes = { enabled = true },
                parameterNames = { enabled = "literals" },
                parameterTypes = { enabled = true },
                propertyDeclarationTypes = { enabled = true },
                variableTypes = { enabled = false },
              },
            },
          },
          keys = {
            {
              "gd",
              function()
                require("vtsls").commands.goto_source_definition(0)
              end,
              desc = "Goto Source Definition",
            },
            {
              "gr",
              function()
                require("vtsls").commands.file_references(0)
              end,
              desc = "File References",
            },
            {
              "<leader>co",
              function()
                require("vtsls").commands.organize_imports(0)
              end,
              desc = "Organize Imports",
            },
            {
              "<leader>cm",
              function()
                require("vtsls").commands.add_missing_imports(0)
              end,
              desc = "Add missing imports",
            },
            {
              "<leader>cd",
              function()
                require("vtsls").commands.fix_all(0)
              end,
              desc = "Fix all diagnostics",
            },
          },
        },
      },
      setup = {
        tsserver = function()
          -- disable tsserver
          return true
        end,
      },
    },
  },
}

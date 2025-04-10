-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig.volar.setup {
  filetypes = { "typescript", "vue", "javascript", "javascriptreact", "typescriptreact" },
}
lspconfig.tailwindcss.setup {
  filetypes = { "html", "vue", "typescriptreact", "javascriptreact", "javascript", "typescript" },
  init_options = {
    userLanguages = {
      vue = "html",
    },
  },
}

lspconfig.emmet_ls.setup {
  filetypes = { "html", "css", "vue", "javascriptreact", "typescriptreact" },
  init_options = {
    html = {
      options = {
        ["bem.enabled"] = true,
      },
    },
  },
}

lspconfig.ts_ls.setup {
  filetypes ={"typescript"}
}
-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }

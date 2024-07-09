return {
  "sainnhe/gruvbox-material",
  lazy = false,
  name = "gruvbox-material",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("gruvbox-material")
    vim.g.gruvbox_material_foreground = "material"
    --background option can be hard, medium, soft
    vim.g.gruvbox_material_background = "dark"
    vim.g.gruvbox_material_enable_italic = 1
    vim.g.gruvbox_material_better_performance = 1
  end,
}

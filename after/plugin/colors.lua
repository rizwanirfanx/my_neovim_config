
function ColorMyPencils()
    local color = "tokyonight-night" -- Set your default color here whatever you want
    vim.cmd("colorscheme " .. color)
    vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
    vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

-- Call the function to set your colors when Neovim starts
ColorMyPencils()

vim.cmd("autocmd VimEnter * lua ColorMyPencils()")


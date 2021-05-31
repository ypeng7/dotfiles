" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time("Luarocks path setup", true)
local package_path_str = "/Users/yuepeng/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/yuepeng/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/yuepeng/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/yuepeng/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/yuepeng/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time("Luarocks path setup", false)
time("try_loadstring definition", true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

time("try_loadstring definition", false)
time("Defining packer_plugins", true)
_G.packer_plugins = {
  ["BetterLua.vim"] = {
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/BetterLua.vim"
  },
  ["compe-tabnine"] = {
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/compe-tabnine"
  },
  ["compe-zsh"] = {
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/compe-zsh"
  },
  ["diffview.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28plugins.config.diffview\frequire\0" },
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/diffview.nvim"
  },
  ["feline.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26plugins.config.feline\frequire\0" },
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/feline.nvim"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30plugins.config.statusline\frequire\0" },
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28plugins.config.gitsigns\frequire\0" },
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\18init_lsp_saga\flspsaga\frequire\0" },
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29plugins.config.colorizer\frequire\0" },
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27plugins.config.comment\frequire\0" },
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/nvim-comment"
  },
  ["nvim-compe"] = {
    config = { "\27LJ\2\n4\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\25plugins.config.compe\frequire\0" },
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-dap"] = {
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins.config.dap\frequire\0" },
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/nvim-dap"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text"
  },
  ["nvim-lsp-basics"] = {
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/nvim-lsp-basics"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins.config.lsp\frequire\0" },
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-reload"] = {
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/nvim-reload"
  },
  ["nvim-scrollview"] = {
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/nvim-scrollview"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30plugins.config.treesitter\frequire\0" },
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-pairs"] = {
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["one-small-step-for-vimkind"] = {
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/one-small-step-for-vimkind"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  sonokai = {
    config = { "\27LJ\2\n`\0\0\3\0\6\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0'\2\5\0B\0\2\1K\0\1\0\24colorscheme sonokai\bcmd\ratlantis\18sonokai_style\6g\bvim\0" },
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/sonokai"
  },
  ["telescope-dap.nvim"] = {
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/telescope-dap.nvim"
  },
  ["telescope-project.nvim"] = {
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/telescope-project.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29plugins.config.telescope\frequire\0" },
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27plugins.config.trouble\frequire\0" },
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/trouble.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/ultisnips"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/vim-easy-align"
  },
  ["vim-mundo"] = {
    config = { "\27LJ\2\n}\0\0\4\0\a\0\r6\0\0\0009\0\1\0)\1<\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0006\0\4\0'\2\5\0'\3\6\0B\0\3\1K\0\1\0\21:MundoToggle<cr>\t<F5>\tnmap\25mundo_preview_bottom\16mundo_width\6g\bvim\0" },
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/vim-mundo"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/vim-polyglot"
  },
  ["vim-ripgrep"] = {
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/vim-ripgrep"
  },
  ["vim-startify"] = {
    config = { "\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28plugins.config.startify\frequire\0" },
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/vim-visual-multi"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/yuepeng/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  }
}

time("Defining packer_plugins", false)
-- Setup for: indent-blankline.nvim
time("Setup for indent-blankline.nvim", true)
require('plugins.config.indentline')
time("Setup for indent-blankline.nvim", false)
time("packadd for indent-blankline.nvim", true)
vim.cmd [[packadd indent-blankline.nvim]]
time("packadd for indent-blankline.nvim", false)
-- Config for: nvim-lspconfig
time("Config for nvim-lspconfig", true)
try_loadstring("\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins.config.lsp\frequire\0", "config", "nvim-lspconfig")
time("Config for nvim-lspconfig", false)
-- Config for: lspsaga.nvim
time("Config for lspsaga.nvim", true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\18init_lsp_saga\flspsaga\frequire\0", "config", "lspsaga.nvim")
time("Config for lspsaga.nvim", false)
-- Config for: nvim-compe
time("Config for nvim-compe", true)
try_loadstring("\27LJ\2\n4\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\25plugins.config.compe\frequire\0", "config", "nvim-compe")
time("Config for nvim-compe", false)
-- Config for: feline.nvim
time("Config for feline.nvim", true)
try_loadstring("\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26plugins.config.feline\frequire\0", "config", "feline.nvim")
time("Config for feline.nvim", false)
-- Config for: vim-startify
time("Config for vim-startify", true)
try_loadstring("\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28plugins.config.startify\frequire\0", "config", "vim-startify")
time("Config for vim-startify", false)
-- Config for: gitsigns.nvim
time("Config for gitsigns.nvim", true)
try_loadstring("\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28plugins.config.gitsigns\frequire\0", "config", "gitsigns.nvim")
time("Config for gitsigns.nvim", false)
-- Config for: nvim-colorizer.lua
time("Config for nvim-colorizer.lua", true)
try_loadstring("\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29plugins.config.colorizer\frequire\0", "config", "nvim-colorizer.lua")
time("Config for nvim-colorizer.lua", false)
-- Config for: nvim-treesitter
time("Config for nvim-treesitter", true)
try_loadstring("\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30plugins.config.treesitter\frequire\0", "config", "nvim-treesitter")
time("Config for nvim-treesitter", false)
-- Config for: trouble.nvim
time("Config for trouble.nvim", true)
try_loadstring("\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27plugins.config.trouble\frequire\0", "config", "trouble.nvim")
time("Config for trouble.nvim", false)
-- Config for: telescope.nvim
time("Config for telescope.nvim", true)
try_loadstring("\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29plugins.config.telescope\frequire\0", "config", "telescope.nvim")
time("Config for telescope.nvim", false)
-- Config for: galaxyline.nvim
time("Config for galaxyline.nvim", true)
try_loadstring("\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30plugins.config.statusline\frequire\0", "config", "galaxyline.nvim")
time("Config for galaxyline.nvim", false)
-- Config for: nvim-comment
time("Config for nvim-comment", true)
try_loadstring("\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27plugins.config.comment\frequire\0", "config", "nvim-comment")
time("Config for nvim-comment", false)
-- Config for: diffview.nvim
time("Config for diffview.nvim", true)
try_loadstring("\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28plugins.config.diffview\frequire\0", "config", "diffview.nvim")
time("Config for diffview.nvim", false)
-- Config for: sonokai
time("Config for sonokai", true)
try_loadstring("\27LJ\2\n`\0\0\3\0\6\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0'\2\5\0B\0\2\1K\0\1\0\24colorscheme sonokai\bcmd\ratlantis\18sonokai_style\6g\bvim\0", "config", "sonokai")
time("Config for sonokai", false)
-- Config for: vim-mundo
time("Config for vim-mundo", true)
try_loadstring("\27LJ\2\n}\0\0\4\0\a\0\r6\0\0\0009\0\1\0)\1<\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0006\0\4\0'\2\5\0'\3\6\0B\0\3\1K\0\1\0\21:MundoToggle<cr>\t<F5>\tnmap\25mundo_preview_bottom\16mundo_width\6g\bvim\0", "config", "vim-mundo")
time("Config for vim-mundo", false)
-- Config for: nvim-dap
time("Config for nvim-dap", true)
try_loadstring("\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins.config.dap\frequire\0", "config", "nvim-dap")
time("Config for nvim-dap", false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry

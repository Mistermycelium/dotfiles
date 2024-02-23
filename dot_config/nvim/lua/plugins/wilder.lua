-- lazy load wilder

return {
  {
    "gelguy/wilder.nvim",
    name = "wilder",
    depends = "romgrk/fzy-lua-native",
    config = function()
      local wilder = require("wilder")
      wilder.setup({
        modes = { ":", "/", "?" },
      })
      -- Disable Python remote plugin
      wilder.set_option("use_python_remote_plugin", 1)
      local gradient = {
        "#ADD8E6",
        "#ADE0C1",
        "#ADE89D",
        "#ADEF78",
        "#ADF754",
        "#ADFF2F",
      }
      for i, fg in ipairs(gradient) do
        gradient[i] = wilder.make_hl("WilderGradient" .. i, "Pmenu", { { a = 1 }, { a = 1 }, { foreground = fg } })
      end
      wilder.set_option(
        "renderer",
        wilder.popupmenu_renderer(wilder.popupmenu_palette_theme({
          highlights = {
            gradient = gradient, -- must be set
            -- selected_gradient key can be set to apply gradient highlighting for the selected candidate.
          },
          highlighter = wilder.highlighter_with_gradient({
            wilder.lua_fzy_highlighter(), -- or wilder.lua_fzy_highlighter(),
          }),
          -- 'single', 'double', 'rounded' or 'solid'
          -- can also be a list of 8 characters, see :h wilder#popupmenu_palette_theme() for more details
          border = "double",
          max_height = "75%", -- max height of the palette
          min_height = 0, -- set to the same as 'max_height' for a fixed height window
          prompt_position = "top", -- 'top' or 'bottom' to set the location of the prompt
          reverse = 0, -- set to 1 to reverse the order of the list, use in combination with 'prompt_position'
        }))
      )
      wilder.set_option("pipeline", {
        wilder.branch(
          wilder.python_file_finder_pipeline({
            -- to use ripgrep : {'rg', '--files'}
            -- to use fd      : {'fd', '-tf'}
            file_command = { "rg", "--files" },
            -- file_command = { "find", ".", "-type", "f", "-printf", "%P\n" },
            -- to use fd      : {'fd', '-td'}
            dir_command = { "find", ".", "-type", "d", "-printf", "%P\n" },
            -- use {'cpsm_filter'} for performance, requires cpsm vim plugin
            -- found at https://github.com/nixprime/cpsm
            filters = { "fuzzy_filter", "difflib_sorter" },
          }),
          wilder.cmdline_pipeline(),
          wilder.python_search_pipeline()
        ),
      })
    end,
    event = "CmdlineEnter", -- Event to trigger lazy loading
  },
}

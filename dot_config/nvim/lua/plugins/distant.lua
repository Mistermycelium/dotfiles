return {
  {
    "chipsenkbeil/distant.nvim",
    branch = "v0.3",
    config = function()
      require("distant"):setup({
        ["network.private"] = true,
        -- manager = {
        --   log_file = ".distant.log",
        -- },
        servers = {
          ["*"] = {
            connect = {
              default = {
                scheme = "ssh",
              },
            },
          },
          ["beeheim.buzz"] = {
            -- Change the current working directory and specify
            -- a path to the distant binary on the remote machine
            port = 4022,
            cwd = "~/",
            username = "beeheim",
            key = "id_rsa",
            -- launch = {
            --   bin = "/path/to/distant",
            -- },
          },
        },
      })
    end,
    lazy = true,
  },
}

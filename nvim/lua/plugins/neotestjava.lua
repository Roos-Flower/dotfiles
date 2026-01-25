return {
  {
    "rcasia/neotest-java",
    ft = "java",
    dependencies = {
      "mfussenegger/nvim-jdtls",
      "mfussenegger/nvim-dap", -- for the debugger
      -- "rcarriga/nvim-dap-ui", -- recommended
      -- "theHamsta/nvim-dap-virtual-text", -- recommended
    },
  },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      adapters = {
        ["neotest-java"] = {
          junit_jar = nil, --"$HOME/.config/nvim/neotest-java/junit-platform-console-standalone-1.11.4.jar", -- default: stdpath("data") .. /nvim/neotest-java/junit-platform-console-standalone-[version].jar
          incremental_build = true,
        },
      },
    },
  },
}

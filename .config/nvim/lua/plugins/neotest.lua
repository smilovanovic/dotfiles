return {
  { "nvim-neotest/neotest-plenary" },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "olimorris/neotest-rspec",
      "haydenmeade/neotest-jest",
    },
    opts = {
      adapters = {
        "neotest-rspec",
        "neotest-jest",
      },
      output_panel = {
        open = "botright vsplit | vertical resize 100",
      },
    },
  },
}

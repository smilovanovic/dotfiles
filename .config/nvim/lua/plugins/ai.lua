vim.keymap.set({ "n", "v" }, "<leader>aa", ":Gen<CR>")

return {
  "David-Kunz/gen.nvim",
  opts = {
    model = "qwen2.5-coder:1.5b", -- The default model to use.
    quit_map = "q", -- set keymap to close the response window
    retry_map = "<c-r>", -- set keymap to re-send the current prompt
    accept_map = "<c-cr>", -- set keymap to replace the previous selection with the last result
    display_mode = "split", -- The display mode. Can be "float" or "split" or "horizontal-split".
    show_prompt = "full", -- Shows the prompt submitted to Ollama. Can be true (3 lines) or "full".
    show_model = true, -- Displays which model you are using at the beginning of your chat session.
    no_auto_close = true, -- Never closes the window automatically.
    file = true, -- Write the payload to a temporary file to keep the command short.
    result_filetype = "markdown", -- Configure filetype of the result buffer
    debug = false, -- Prints errors and the command which is run.
  },
}

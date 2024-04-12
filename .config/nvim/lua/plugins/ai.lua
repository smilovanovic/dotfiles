vim.keymap.set({ "n", "v" }, "<leader>o", ":Gen<CR>")

return {
  "David-Kunz/gen.nvim",
  config = {
    -- model = "mistral", -- The default model to use.
    model = "codellama:7b", -- The default model to use.
    display_mode = "split", -- The display mode. Can be "float" or "split".
    show_prompt = true, -- Shows the Prompt submitted to Ollama.
    show_model = true, -- Displays which model you are using at the beginning of your chat session.
    no_auto_close = true, -- Never closes the window automatically.
    -- init = function(options)
    --   pcall(io.popen, "ollama serve > /dev/null 2>&1 &")
    -- end,
    -- Function to initialize Ollama (optional)

    -- command = "<your_command_string>", -- The command for the Ollama service. (Replace <your_command_string> with your desired command string).
    -- This can also be a Lua function returning a command string, with options as the input parameter.
    -- The executed command must return a JSON object with { response, context }
    -- (context property is optional).

    -- list_models = "<omitted_lua_function>", -- Retrieves a list of model names (optional)
    debug = false, -- Prints errors and the command which is run.
  },
}

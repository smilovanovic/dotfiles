local get_next_path_segment = function(path_string, prefixes)
  for _, prefix in pairs(prefixes) do
    local full_prefix = vim.fn.getcwd() .. prefix
    if path_string:sub(1, #full_prefix) == full_prefix then
      local remaining_path = path_string:sub(#full_prefix + 1)
      remaining_path = remaining_path:match("^/?(.*)")
      local segment = remaining_path:match("^[^/]+")
      return segment
    end
  end
  return nil
end

return {
  "akinsho/bufferline.nvim",
  opts = {
    -- INFO: :h bufferline-configuration
    options = {
      mode = "tabs",
      always_show_bufferline = true,
      show_close_icon = false,
      show_buffer_close_icons = false,
      show_tab_indicators = true,
      max_name_length = 30,
      name_formatter = function(buf)
        local app = get_next_path_segment(buf.path, { "/apps", "/libs" })
        if app ~= nil then
          return app
        end
        return buf.name
      end,
    },
  },
}

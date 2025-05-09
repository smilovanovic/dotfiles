return {
  "ThePrimeagen/harpoon",
  keys = function(_, keys)
    for i = 6, 9 do
      table.insert(keys, {
        "<leader>" .. i,
        function()
          require("harpoon"):list():select(i - 5)
        end,
        desc = "Harpoon to File " .. (i - 5),
      })
    end
    return keys
  end,
}

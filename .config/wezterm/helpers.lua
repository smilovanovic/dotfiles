local module = {}

module.assign_list = function(base, arr)
	for _, v in pairs(arr) do
		table.insert(base, v)
	end
end

return module

function ColorMyPencils(color, show_background)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
	if (show_background)
		then

			vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
			vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
	end
end

local array_of_colors = { 'rose-pine', 'tokyonight', 'catppuccin', 'catppuccin-latte',
'catppuccin-frappe','catppuccin-macchiato','catppuccin-mocha'}

local color_to_be_used_in_system = array_of_colors[7]

--print(color_to_be_used_in_system)

local show_background = false;

ColorMyPencils(color_to_be_used_in_system, show_background)






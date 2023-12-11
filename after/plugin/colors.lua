function ColorMyPencils(color)
	color = color or "falcon";
	vim.cmd.colorscheme(color);
end

ColorMyPencils();

function ColorMyPencils(color)
	--color = color or "falcon";
	color = color or "kanagawa";

	vim.cmd.colorscheme(color);
end

ColorMyPencils();

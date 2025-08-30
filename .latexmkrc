# Use LuaLaTeX
$pdf_mode = 4; # 4 = lualatex
$lualatex = 'lualatex -interaction=nonstopmode -halt-on-error %O %S';
add_cus_dep('bib','bbl',0,'do_biber');
sub do_biber {
my ($base) = @_; system("biber $base");
}
$clean_ext = 'acn acr alg auxglg auxlock bbl bcf blg glg glo gls-defs gls ist lof lot run.xml synctex.gz toc fdb_latexmk fls out nav snm';
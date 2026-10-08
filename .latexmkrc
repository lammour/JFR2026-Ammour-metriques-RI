# latexmk : LuaLaTeX + biber, sortie dans build/. Appelé par build.sh.
$pdf_mode = 4;                 # lualatex
$lualatex = 'lualatex -interaction=nonstopmode -halt-on-error -file-line-error %O %S';
$bibtex_use = 2;
$biber = 'biber %O %B';
$clean_ext = 'bbl run.xml nav snm vrb';

# Polices versionnées dans src/commun/polices/, visibles de kpathsea.
use File::Basename;
my $racine = dirname(__FILE__);
$ENV{'TTFONTS'}       = "$racine/src/commun/polices//:" . ($ENV{'TTFONTS'} // '');
$ENV{'OPENTYPEFONTS'} = "$racine/src/commun/polices//:" . ($ENV{'OPENTYPEFONTS'} // '');

\LoadClass[12pt,twoside]{report}

\usepackage{../scripts/globalpreamble}
\usepackage{reptheorem}							% Theorem replication

\RequirePackage[plainpages = false, pdfpagelabels, citecolor = blue]{hyperref}						% Hyperlinks
\RequirePackage[ocgcolorlinks]{ocgx2}			% This ensures hyperlinks aren't printed (ocgcolorlinks), while still being able to cover multiple lines (as opposed to ocgcolorlinks in hyperref)
\usepackage[a4paper,margin=2.5cm]{geometry}		% Change the shape of a page (custom margins etc.)

\usepackage{imakeidx}							% Index
\usepackage{fancyhdr}							% Nicer layout
\usepackage{epigraph}							% For chapter quotes

\counterwithin{figure}{chapter}
\counterwithin{table}{chapter}
\numberwithin{equation}{chapter}

\emergencystretch 2em

%%% This is about changing the headers and footers (i.e. Top and bottom of the page)
\pagestyle{fancy}% use fancyheaders with the bar on the top
\fancyhf{} % Clear the normal style
\fancyhead[L]{\bfseries\leftmark} % this places the section number and name in the top left
\fancyhead[R]{\bfseries\thepage} % this places the pagenumber in the top right
% Changing headheight to fit what's inside %
\setlength{\headheight}{24pt}

\DeclareFieldFormat{titlecase}{#1}


% Implementing functions into actual preamble
\AtBeginDocument{\loadtheorems{main/thesis.thm}}
{% raw %}%%%%% OPTIONS: %%%%%
%[Custom] Most likely, if you're using this class you don't already have mcode or showexpl installed. If you do, use [Custom]
%[NoTitlePage] : If you're not gonna use \mypage, you should use [NoTitlePage]. Otherwise, mypage will be required by default. 
%[Bib] If you need bibliography style, use [Bib]
%[Nomencl] If you need nomenclature
%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{SelimArticle}[17/02/14 Selim's template for school]

\newcommand{\mypagesettings}%Spacing given by Fran. 
{%
\setstretch{1.5}%
\renewcommand{\arraystretch}{1.136}%
\frenchspacing%
\setlength{\skip\footins}{1cm}%
}
%
\DeclareOption{Custom}{\def\@custom{}}
\DeclareOption{NoTitlePage}{\def\@no@title@page{}}
\DeclareOption{Nomencl}{\def\@nomencl{}}
\DeclareOption{Bib}{\def\@bib{}}
\ProcessOptions\relax
%
%Equations are on the left instead of centered
\LoadClass[fleqn, 12pt]{article}  
%
% Latex packages you are using
% geometry  : Document dimensions
%		letterpaper				    -	Paper size is letter
%		height						-	Text box height
%		width					    -   Text box width
% amsfonts  : Math symbols.
% amsmath   : Math formulas.
% bm        : It provides bold math symbols.
% booktabs  : Features for tables.
% graphicx  : Manages inclusion of graphic files (better than graphics)
% setspace  : Manages spacing in the document.
% float     : Put [H] after \begin{figure} to force position of figure. 
% sectsty   : Used to have hline under new section
% mypage    : title page customized by Selim. use \mytitlepage.
% mcode     : display MATLAB code nicely. Just use %\lstinputlisting[caption = 
%               The main function]{./GetD.m} for instance
% showexpl  : Allows easy LaTeX examples.
       %\renewcommand\lstlistlistingname{Examples}  Use this to change the name of listings. If you need to do LaTeX examples.
			 %\begin{LTXexample}[pos=r,wide,width=.65,preset=\LARGE,rframe={}]
       % \setcounter{listing}{1}  Use if you want to reset the counter (if doing examples and code or some stuff). 
       %More info on http://tex.stackexchange.com/questions/3993/listings-different-counters-for-different-listing-environments/3998#3998
% grffile   : allows spaces in file names.
% enumitem  : reduce space in lists. \begin{itemize}[noitemsep,nolistsep]
% subcaption: Subfigures.
% multicol/bigstrut : For use with Excel2Latex
% pdfpages  : To use pdfpages, do \includepdf{document}
% url       : Allows for \url{}. Useful for bibliographies with url. 
% hyperref  : Hyperlinks. Use \hypersetup{hidelinks} for no borders.
% cleveref  : can use \cref or \Cref to reference
% nomencl   : List of symbols -> \nomenclature{$symbol$}{description}
\RequirePackage[letterpaper, height=245mm, width=170mm]{geometry}
\RequirePackage{amsfonts, amsmath, bm}
\RequirePackage{booktabs}
\RequirePackage{graphicx}
\RequirePackage{setspace}
\RequirePackage{float}
\RequirePackage{sectsty}
 
%Custom titlepage by Selim
\ifdefined\@no@title@page
	\mypagesettings
\else
	\RequirePackage{mypage}
\fi

%CUSTOM PACKAGES THAT I HAVE BUT THAT AREN'T AVAILABLE IN THE REPOSITORY. 
\ifdefined\@custom
	\RequirePackage[final]{showexpl}  
\else\fi

\RequirePackage[space]{grffile}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{subcaption}
\RequirePackage{bigstrut}
\RequirePackage{multicol}
\RequirePackage{multirow}
\RequirePackage{pdfpages}
\RequirePackage{url}
\RequirePackage{hyperref}
\RequirePackage{cleveref}
\Crefname{equation}{Eq.}{Eqs.}

%Nomenclature package
\ifdefined\@nomencl
	\RequirePackage{nomencl}
	\setlength{\nomitemsep}{-\parsep}
	%Used for nomenclature making
	\renewcommand*{\pagedeclaration}[1]{\unskip\dotfill\hyperpage{#1}}
	\makenomenclature
	%In CMD, makeindex main.nlo -s nomencl.ist -o main.nls   If the filename is not "main", just replace it. 
	\renewcommand{\nomname}{List of Symbols}
\else\fi


{% endraw %}
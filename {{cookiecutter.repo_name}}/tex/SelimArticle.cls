{% raw %}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%------ Identification -------%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{SelimArticle}[17/02/14 Selim's template for school]
\LoadClass[fleqn, 12pt]{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%------- Class Options -------%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption{Nomencl}{\def\@nomencl{}} %Option acted upon at bottom.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\ifdefined\@nomencl
    \RequirePackage{nomencl}
    \setlength{\nomitemsep}{-\parsep}
    \renewcommand*{\pagedeclaration}[1]{\unskip\dotfill\hyperpage{#1}}
    \makenomenclature
    %In CMD, makeindex main.nlo -s nomencl.ist -o main.nls   If the filename is not "main", just replace it.
    \renewcommand{\nomname}{List of Symbols}
\else\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%----- Required Packages -----%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% geometry  : Document dimensions
% amsfonts  : Math symbols.
% amsmath   : Math formulas.
% bm        : It provides bold math symbols.
% booktabs  : Features for tables.
% graphicx  : Manages inclusion of graphic files (better than graphics)
% setspace  : Manages spacing in the document.
% float     : Put [H] after \begin{figure} to force position of figure.
% sectsty   : Used to have hline under new section.
% mypage    : title page customized by Selim. use \mytitlepage.
% grffile   : allows spaces in file names.
% enumitem  : reduce space in lists. \begin{itemize}[nolistsep]
% subcaption: Subfigures.
% multicol  : For use with Excel2Latex
% bigstrut  : Same as above.
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%---------- Options ----------%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\geometry{letterpaper, height=245mm, width=170mm}
\Crefname{equation}{Eq.}{Eqs.}
\setstretch{1.5}
\frenchspacing
\setlength{\skip\footins}{1cm}
{% endraw %}
%% LaTeX2e class for diploma theses
%% Based on wissdoc.cls by Roland Bless, 1996-2001
%% bless@telematik.informatik.uni-karlsruhe.de
%%
%% Adapted by: Timo Rohrberg, 2009
%% timo.rohrberg@student.kit.edu
%%
%% Additions by: Thorsten Haberecht, IPD - Chair Prof. Böhm, 2010
%% thorsten.haberecht@kit.edu


\NeedsTeXFormat{LaTeX2e}										% We do need LaTeX2e
\ProvidesClass{thesisclass}
\LoadClass[a4paper,11pt,numbers=noenddot,titlepage,twoside,openright]{scrbook}	% Class based on scrbook


%% -------------------------------
%% |          Packages           |
%% -------------------------------

%% Make PDF searchable and copyable
\usepackage{cmap}

%% Fonts etc
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage{microtype}
\usepackage{lmodern}

%% Suppress clubs and widows
\clubpenalty=100000
\widowpenalty=100000

%% Language
\usepackage[english]{babel}

%% AMS package
\usepackage{amsmath}
\usepackage{amsfonts}
\usepackage{amssymb}

%% Physical units
\usepackage{siunitx}
\sisetup{range-units = single, range-phrase = {-}, separate-uncertainty = true,multi-part-units=brackets, product-units=brackets, locale=US, detect-weight=true, binary-units=true} % change locale to DE for a German thesis

%% Correct line breaking for hyperlinks
\usepackage[hyphens, obeyspaces]{url}
\usepackage[raiselinks=true,
						bookmarks=true,
						bookmarksopenlevel=2,
						bookmarksopen=true,
						bookmarksnumbered=true,
						hyperindex=true,
						plainpages=false,
						pdfpagelabels=true,
						pdfpagemode=UseOutlines,
						pdfborder={0 0 0.5},
						colorlinks=false,					
						linkbordercolor={0 0.61 0.50},   
						citebordercolor={0 0.61 0.50}]{hyperref}

%% Nicer tables
\usepackage{booktabs}
\usepackage{multirow} % for multirow and multicolumn
\usepackage{rotating} % for sideways tables

%% For graphics
\usepackage{graphicx}
\usepackage{subcaption}
\usepackage{float}

%% For the titlepage and headings
\usepackage[absolute,overlay]{textpos}
\usepackage{tikz}
\usepackage{vmargin}          % Adjust margins in a simple way
\usepackage{fancyhdr}         % Define simple headings


%% For including code
\usepackage{listings}
\lstset{basicstyle=\footnotesize\ttfamily,breaklines=true,framextopmargin=50pt,frame=sideline,xleftmargin=20pt}

%% BibTex
\usepackage[backend=biber,style=alphabetic,sorting=nyt,maxalphanames=5,minalphanames=3,maxbibnames=10]{biblatex}
\DefineBibliographyStrings{english}{phdthesis = {Ph.D.\@ thesis}}
\DeclareFieldFormat[article,inbook,incollection,inproceedings,patent,thesis,unpublished]{title}{\mkbibemph{#1}}
\DeclareFieldFormat{journaltitle}{#1}
\DeclareFieldFormat{issuetitle}{#1}
\DeclareFieldFormat{maintitle}{#1}
\DeclareFieldFormat{booktitle}{#1}

\DefineBibliographyExtras{english}{\renewcommand{\finalandcomma}{}}

% http://tex.stackexchange.com/q/218706/15107
\setcounter{biburlnumpenalty}{400}  % allow breaks at numbers
\setcounter{biburlucpenalty}{400}   % allow breaks at uppercase letters
\setcounter{biburllcpenalty}{400}   % allow breaks at lowercase letters

\bibliography{bibliography/thesis}

%% For better enumerations
\usepackage{enumitem}
\usepackage{scrextend} % for labeling - Felix
\addtokomafont{labelinglabel}{\normalfont\bfseries} % for labeling

%% Other packages
\usepackage{xspace} % for better newcommands
\usepackage[autostyle=true, babel=true]{csquotes} % use \enquote{abc} instead of "abc"
\usepackage{nicefrac}
\usepackage{feynmp-auto}
\usepackage{hepnames}

%% --- End of Packages ---



%% -------------------------------
%% |        Declarations         |
%% -------------------------------
\DeclareGraphicsExtensions{.svg}

% arrows
\newcommand{\rar}{\ensuremath{\rightarrow \xspace }}
\newcommand{\Rar}{\ensuremath{\Rightarrow \xspace }}

% particle physics
\newcommand{\tbar}{$\overline{\text{t}}$\xspace }
\newcommand{\ttbar}{t$\overline{\text{t}}$\xspace }
\newcommand{\ttbarNOSPACE}{t$\overline{\text{t}}$}
\newcommand{\ttbarH}{t$\overline{\text{t}}$H\xspace }
\newcommand{\ttHbb}{t$\overline{\text{t}}$H(b$\overline{\text{b}}$)\xspace}
\newcommand{\bbbar}{b$\overline{\text{b}}$\xspace }
\newcommand{\pT}{\ensuremath{p_{\text{T}}}\xspace}
\newcommand{\Htobb}{H$\to $ \bbbar}
\newcommand{\Htononbb}{H$\to $ non \bbbar}
\newcommand{\met}{\ensuremath{\vec {\not\mathrel{E}}_{\text{T}}}\xspace}

\newcommand{\akfour}{ak4\xspace }
\newcommand{\akeight}{ak8\xspace }
\newcommand{\kt}{$k_{\text{T}}$\xspace }
\newcommand{\pu}{pileup\xspace }
\newcommand{\ue}{underlying event\xspace }

\newcommand{\madgraphamcatnlo}{MadGraph5\_aMC@NLO\xspace}
\newcommand{\madgraphamcatnloshort}{MG5aMC\space}
\newcommand{\powheg}{Powheg\xspace}
\newcommand{\pythia}{Pythia~8\xspace}
\newcommand{\herwig}{Herwig~7\xspace}

\DeclareRobustCommand{\PWz}{\HepParticle{W}{}{0}\xspace}
\DeclareRobustCommand{\PWzero}{\PWz}
\DeclareRobustCommand{\PWo}{\HepParticle{W}{}{1}\xspace}
\DeclareRobustCommand{\PWone}{\PWo}
\DeclareRobustCommand{\PWt}{\HepParticle{W}{}{2}\xspace}
\DeclareRobustCommand{\PWtwo}{\PWt}

%% --- End of Declarations ---



%% -------------------------------
%% |         New commands        |
%% -------------------------------
\newcommand{\changefont}[3]{\fontfamily{#1} \fontseries{#2} \fontshape{#3} \selectfont}
%\renewcommand*{\headfont}{\slshape}
%\newcommand{\captionfont}{}
\newcommand{\chapterheadfont}{}
\newcommand{\blankpage}{
 \clearpage{\pagestyle{empty}\cleardoublepage}
}
%% --- End of New Commands ---



%% -------------------------------
%% |      Globale Settings       |
%% -------------------------------
\setcounter{secnumdepth}{3} % Numbering also for \subsubsections
\setcounter{tocdepth}{3}    % Register \subsubsections in content directory

\setpapersize{A4}
\setmarginsrb{3cm}{1cm}{3cm}{1cm}{6mm}{7mm}{5mm}{15mm}

\parindent 0cm                     % Do not indent beginning of paragraph
\parskip1.5ex plus0.5ex minus0.5ex % Margin between paragraphs
%% --- End of global Settings ---



%% -------------------------------
%% |          Headings           |
%% -------------------------------
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\thechapter\ #1}{}}
\fancyhf{}
\fancyhead[LE,RO]{{\headfont\thepage}}						% Left/right header for even/odd pages
\fancyhead[LO]{\headfont\nouppercase{\rightmark}}	% Header for left page (odd)
\fancyhead[RE]{\headfont\nouppercase{\leftmark}}	% Header for right page (even)
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0pt}
\fancypagestyle{plain}{%
\fancyhf{}													% No Header and Footer fields
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyfoot[C]{\thepage}
}

% removes the dot at the end of the section numbering
\renewcommand{\sectionmark}[1]{\markright{\thesection \ #1}{}}
%% --- End of Headings ---



%% -------------------------------
%% |      Style of captions      |
%% -------------------------------
\renewcommand{\chaptername}{}

\renewcommand{\section}{%
\@startsection{section}%
{1}		% Structure level
{0mm}	% Indention
{2ex plus 1ex minus 1ex}			% Pre-Margin
{0.5ex plus 0.5ex minus 0.5ex}		% Post-Margin
{\chapterheadfont\Large\bfseries}	% Style
}
\renewcommand{\subsection}{%
\@startsection{subsection}%
{2}		% Structure level
{0mm}	% Indention
{1.5ex plus 1ex minus 0.5ex}		% Pre-Margin
{0.3ex plus 0.3ex minus 0.3ex}		% Post-Margin
{\chapterheadfont\large\bfseries}	% Style
}
\renewcommand{\subsubsection}{%
\@startsection{subsubsection}%
{3}		% Structure level
{0mm}	% Indention
{1.5ex plus 1ex minus 0.5ex}			% Pre-Margin
{0.2ex plus 0.2ex minus 0.2ex}			% Post-Margin
{\chapterheadfont\normalsize\bfseries}	% Style
}
\renewcommand{\paragraph}{%
\@startsection{paragraph}%
{4}		% Structure level
{0mm}	% Indention
{1.3ex plus 1ex minus 0.3ex}			% Pre-Margin
{0.2ex plus 0.2ex minus 0.2ex}			% Post-Margin
{\chapterheadfont\normalsize\bfseries}	% Style
}
\renewcommand{\subparagraph}{%
\@startsection{subparagraph}%
{5}		% Structure level
{0mm}	% Indention
{1ex plus 1ex minus 0.2ex}				% Pre-Margin
{0.1ex plus 0.1ex minus 0.1ex}			% Post-Margin
{\chapterheadfont\normalsize\bfseries}	% Style
}
%% --- End of captions style ---



%% ---------------------------------
%% |   Style of chapter captions   |
%% ---------------------------------
\newlength{\chapnolen}
\newlength{\chapparlen}
\newsavebox{\chapno}
\renewcommand{\@makechapterhead}[1]{
  \vspace*{0.2\textheight}
  \vskip 15\p@
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter
        \savebox{\chapno}{\chapterheadfont\huge\bfseries \thechapter}
        \settowidth{\chapnolen}{\usebox{\chapno}}
        \parbox[t]{\chapnolen}{\usebox{\chapno}}\nobreak\leavevmode
      \fi
    \fi
    \interlinepenalty\@MM
    \setlength{\chapparlen}{\textwidth}
    \addtolength{\chapparlen}{-1.0\chapnolen}
    \addtolength{\chapparlen}{-2ex}
    \leavevmode\nobreak
    \parbox[t]{\chapparlen}{\raggedright\chapterheadfont\huge \bfseries #1\par\nobreak}
    \vskip 40\p@
  }}

\renewcommand{\@makeschapterhead}[1]{
  \vspace*{50\p@}
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    \chapterheadfont \huge \bfseries  #1\par\nobreak
    \vskip 40\p@
  }
}
%% --- End of chapter captions style ---



%% ---------------------------------
%% |  Style of content directory   |
%% ---------------------------------
\let\oldtableofcontents\tableofcontents
\renewcommand{\tableofcontents}{{\pdfbookmark{\contentsname}{\contentsname}\chapterheadfont\oldtableofcontents}}
\let\@olddottedtocline\@dottedtocline
\renewcommand{\@dottedtocline}[5]{\@olddottedtocline{#1}{#2}{#3}{#4}{\chapterheadfont #5}}
%% --- End of content directory style ---


%% ----------------------------------
%% |  Style of appendix numbering   |
%% ----------------------------------
 \renewcommand\appendix{\par
   \setcounter{section}{0}%
   \setcounter{subsection}{0}%
   \setcounter{figure}{0}%
   \renewcommand\thesection{\Alph{section}}%
   \renewcommand\thefigure{\Alph{section}.\arabic{figure}}
   \renewcommand\thetable{\Alph{section}.\arabic{table}}}
%% --- End of appenix numbering style ---


%% **** END OF CLASS ****

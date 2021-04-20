%%
%% This is file `sdnubachelor.cls',
%%
%%
%% This file may be distributed and/or modified under the conditions of
%% the LaTeX Project Public License, either version 1.2 of this license
%% or (at your option) any later version.  The latest version of this
%% license is in:
%%
%%    http://www.latex-project.org/lppl.txt
%%
%% and version 1.2 or later is part of all distributions of LaTeX version
%% 1999/12/01 or later.
%%
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{sdnubachelor}[2021/04/15 v1.1 SDNU Bachelor Thesis By Ruyun]

\LoadClassWithOptions{ctexart}


\RequirePackage[a4paper,top=2.5cm,bottom=2cm,left=2.5cm,right=2cm]{geometry}

\RequirePackage{ifthen}
\DeclareRobustCommand{\sdnuprint}{}
\DeclareRobustCommand{\sdnupaperprint}[1]{
	\renewcommand{\sdnuprint}{#1}
}

\DeclareRobustCommand{\sdnuseccenter}{}
\DeclareRobustCommand{\sdnusectioncenter}[1]{
	\renewcommand{\sdnuseccenter}{#1}
}

\pagestyle{plain}

\RequirePackage{tabu}
\RequirePackage{makecell}

% \ifthenelse{\sdnuprint=0}{\RequirePackage[a4paper,top=2.5cm,bottom=2cm,left=2.5cm,right=2.5cm]{geometry}}{\RequirePackage[a4paper,top=2.5cm,bottom=2cm,left=2.5cm,right=2cm]{geometry}}

\DeclareRobustCommand{\xiaosi}{\fontsize{12pt}{\baselineskip}\selectfont}  
\DeclareRobustCommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}  

% \newcommand{\oddpage}[1]{Number #1 is %
% \ifthenelse{\isodd{#1}}{odd}{even}  }
% \oddeven{4}.\\ 
% \oddeven{5}


\RequirePackage{setspace}
\RequirePackage{titlesec}
\titleformat{\section}
{\centering\Large\bfseries}
{\thesection .\quad}
{0pt}
{}

\titleformat{\subsection}
{\raggedright\fontsize{15pt}{\baselineskip}\bfseries}
{\thesubsection \quad}
{0pt}
{}

\titleformat{\subsubsection}
{\raggedright\large\bfseries}
{\thesubsubsection \quad}
{0pt}
{}

\titlespacing{\section}{0pt}{12pt}{0pt}
\titlespacing{\subsection}{0pt}{3pt}{0pt}
\titlespacing{\subsubsection}{0pt}{3pt}{0pt}

\RequirePackage{amsmath}
\numberwithin{figure}{section}
\numberwithin{table}{section}
\renewcommand {\thefigure} {\thesection{}-\arabic{figure}}
\renewcommand {\thetable} {\thesection{}-\arabic{table}}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[C]{山东师范大学学士学位论文}
\fancyfoot[RO, LE]{\thepage}

% \newif\ifsdnuprint\sdnuprintfalse
% \newcommand{\sdnu@print}{}
% \renewcommand{\print}[1]{\sdnuprinttrue\renewcommand{\sdnu@print}{#1}}
% \def\blprint{\xdef\@thefnmark{}\@footnotetext}
% \ifsysuthesisthanks
% \blfootnote{\wuhao\sdnu@print}
% \fi

% \newcommand{\@finishdate}{}
% \newcommand{\finishdate}[1]{\renewcommand{\@finishdate}{#1}}



% \renewcommand\paperprint{%
% \ifnum\@sdnupaperprint = 1 \newpage
% \else {}
% \fi}

% \makeatother


\RequirePackage{titletoc}
\hypersetup{hidelinks}
\renewcommand{\contentsname}{\sihao\begin{center}目~~录\end{center}}
\titlecontents{section}[1.2em]
{\vspace*{0mm}\xiaosi}
{\contentslabel{1em}}
{\hspace*{-1.2em}}
{\titlerule*[0.5pc]{$\cdot$}\contentspage}
\titlecontents{subsection}[4.2em]
{\vspace*{0mm}\xiaosi}
{\contentslabel{2em}}
{}
{\titlerule*[0.5pc]{$\cdot$}\contentspage}
\titlecontents{subsubsection}[7.2em]
{\vspace*{0mm}\xiaosi}
{\contentslabel{2.5em}}
{}
{\titlerule*[0.5pc]{$\cdot$}\contentspage}

\newcommand{\upcite}[1]{\textsuperscript{\textsuperscript{\cite{#1}}}}
\RequirePackage{graphicx}
\graphicspath{{data/img/}}

\usepackage{caption}
\captionsetup{hypcap=true}

\RequirePackage{amsthm}
\newtheoremstyle{ctstyle}{2pt}{2pt}{\kaishu}{2em}{\bfseries}{.}{1em}{}
\theoremstyle{ctstyle}
\newtheorem{theorem}{定理}
\newtheorem{definition}{定义}

\renewcommand{\proofname}{证明}
%\renewcommand*{\qedsymbol}{[证毕]}
\makeatletter
\renewenvironment{proof}[1][\proofname]{\par
	\pushQED{\qed}%
	\normalfont \topsep0\p@\@plus6\p@\labelsep1em\relax
	\trivlist
	\item[\hskip\labelsep\indent
	\bfseries
	#1\@addpunct{.}]\ignorespaces
}{%
	\popQED\endtrivlist\@endpefalse
}
\makeatother

\RequirePackage{titlesec}
\titlespacing{\subsection}{0pt}{6pt}{3pt}
\titlespacing{\subsubsection}{0pt}{6pt}{3pt}

\ctexset{
	section/format += \zihao{-4}\bfseries\centering,
	subsection/format += \zihao{-4}\bfseries,
	subsubsection/format += \zihao{-4}\bfseries,
	bibname = 参考文献,
}

\RequirePackage{tabularx}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{amsmath}
\RequirePackage{listings}


\lstset{
	language=C,
	basicstyle=\small\ttfamily,
	numbers=left,
	numbersep=5pt,
	xleftmargin=20pt,
	frame=tb,
	framexleftmargin=20pt
}
\renewcommand\lstlistingname{代码}
\renewcommand*\thelstnumber{\arabic{lstnumber}:}
\DeclareCaptionFormat{mylst}{\hrule#1#2#3}
\captionsetup[lstlisting]{format=mylst,labelfont=bf,singlelinecheck=off,labelsep=space}

\DeclareRobustCommand{\sdnutitlechs}{}
\DeclareRobustCommand{\sdnutitleen}{}
\DeclareRobustCommand{\sdnutitle}[2]{
	\renewcommand{\sdnutitlechs}{#1}
	\renewcommand{\sdnutitleen}{#2}
}

\DeclareRobustCommand{\sdnuauthorchs}{}
\DeclareRobustCommand{\sdnuauthorens}{}
\DeclareRobustCommand{\sdnuauthorid}{}
\DeclareRobustCommand{\sdnuauthor}[3]{
	\renewcommand{\sdnuauthorchs}{#1}
	\renewcommand{\sdnuauthorens}{#2}
	\renewcommand{\sdnuauthorid}{#3}
}

\DeclareRobustCommand{\sdnumentorchs}{}
\DeclareRobustCommand{\sdnumentor}[1]{
	\renewcommand{\sdnumentorchs}{#1}
}

\DeclareRobustCommand{\sdnucollegechs}{}
\DeclareRobustCommand{\sdnumajorchs}{}
\DeclareRobustCommand{\sdnuclasschs}{}
\DeclareRobustCommand{\sdnuinfo}[3]{
	\renewcommand{\sdnucollegechs}{#1}
	\renewcommand{\sdnumajorchs}{#2}
	\renewcommand{\sdnuclasschs}{#3}
}

\DeclareRobustCommand{\sdnuyear}{}
\DeclareRobustCommand{\sdnumon}{}
\DeclareRobustCommand{\sdnuday}{}
\DeclareRobustCommand{\sdnudate}[3]{
	\renewcommand{\sdnuyear}{#1}
	\renewcommand{\sdnumon}{#2}
	\renewcommand{\sdnuday}{#3}
}

\DeclareRobustCommand{\sdnukeywchs}{}
\DeclareRobustCommand{\sdnukeywen}{}
\DeclareRobustCommand{\sdnukeyw}[2]{
	\renewcommand{\sdnukeywchs}{#1}
	\renewcommand{\sdnukeywen}{#2}
}

\DeclareRobustCommand{\classification}{}
\DeclareRobustCommand{\sdnuclassification}[1]{
	\renewcommand{\classification}{#1}
}

\DeclareRobustCommand{\sdnuen}{}
\DeclareRobustCommand{\sdnucollegeen}{}
\DeclareRobustCommand{\sdnuinfoen}[2]{
	\renewcommand{\sdnuen}{#1}
	\renewcommand{\sdnucollegeen}{#2}
}



%%
%% End of file `sdnubachelor.cls'.

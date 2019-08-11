%Modified Latex Style sheet preamble for IEEE publication
%Lieuwe B. Leene 2016 July 14
%Default package Import based on IEEEtran.cls v1.8b August 26, 2015.
%Please See http://www.michaelshell.org/tex/ieeetran/ For details

\input{personal_details.cls} %% Load author details
\input{default_packages.cls} %% Load standard package setup

\usepackage{ifthen}

% Publication Statistic Counters
\newcounter{PublicationCount} 
\newcounter{CitationCount}
\newcounter{ViewCount}

\newcommand{\citecondition}[1]{\ifthenelse{\equal{#1}{0}}{}{\ifthenelse{\equal{#1}{1}}{#1 Citation, }{#1 Citations, }}}
\newcommand{\viewcondition}[1]{\ifthenelse{\equal{#1}{0}}{}{\ifthenelse{\equal{#1}{1}}{#1 View}{#1 Views}}}
\newcommand{\pubitem}[3]{ \item #1\,\textbf{(\citecondition{#2}\viewcondition{#3}) } \stepcounter{PublicationCount}\addtocounter{CitationCount}{#2}\addtocounter{ViewCount}{#3}}
\newcommand{\xpubitem}[3]{ \item #1 \stepcounter{PublicationCount}\addtocounter{CitationCount}{#2}\addtocounter{ViewCount}{#3}}

\usepackage[hmargin=1.25cm, vmargin=1.5cm]{geometry} % Specifies horizontal and vertical page margins

\makeatletter
\def\bstctlcite{\@ifnextchar[{\@bstctlcite}{\@bstctlcite[@auxout]}}
\def\@bstctlcite[#1]#2{\@bsphack
  \@for\@citeb:=#2\do{%
    \edef\@citeb{\expandafter\@firstofone\@citeb}%
    \if@filesw\immediate\write\csname #1\endcsname{\string\citation{\@citeb}}\fi}%
  \@esphack}
\makeatother

\newcommand{\narrowcolumn}[1]{%
\begin{minipage}[t]{0.33\textwidth} % The left column takes up 33% of the text width of the page
#1%
\end{minipage} % The end of the left column
}

\newcommand{\widecolumn}[1]{%
\begin{minipage}[t]{0.62\textwidth} % The left column takes up 33% of the text width of the page
#1
\end{minipage} % The end of the left column
}

\newcommand{\textcomment}[1]{{\fontseries{l}\selectfont \small #1}}
\newcommand{\sectionformat}[1]{{\fontseries{l}\selectfont \Large #1 }}
\input{default_symbols.cls} %% Load author details

\newcommand{\textttl}[1]{#1}

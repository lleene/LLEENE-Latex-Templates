%Modified Latex Style sheet preamble for IEEE publication
%Lieuwe B. Leene 2016 July 14
%Default package Import based on IEEEtran.cls v1.8b August 26, 2015.
%Please See http://www.michaelshell.org/tex/ieeetran/ For details
% Modified by Lieuwe Leene, June 2019

\input{personal_details.cls} %% Load author details

% % % % % % % % % % % % % % % % % % % % % % % % % % % %
% PACKAGES -  Comment any package deemed unnecessary  %
% % % % % % % % % % % % % % % % % % % % % % % % % % % %

\usepackage{graphicx}  % figures, graphics, etc.
\usepackage{verbatim}  % Allow comments \be­gin{com­ment} and \end{com­ment}
\usepackage{latexsym}  % Optional extra symbols from LaTeX2.09
\usepackage{amsmath,amssymb}   % Math formatting & symbols

%Specific for AMSMATH - (re)allows page breaks within aligned equations as IEEEtran normally does.
\interdisplaylinepenalty=2500

\usepackage{subfigure} % Introduce Subfigures
\usepackage{cite}      % Citation handle
\usepackage[table,dvipsnames]{xcolor} % Colour
\usepackage[nomessages]{fp} % More advanced command customization
\usepackage{booktabs}

\iflinks
\usepackage[pdfauthor={\FirstName~\LastName},
            pdftitle={\pdftitle},
            pdfsubject={\pdfsubject},
            pdfkeywords={\pdfkeywords},
            colorlinks = true,hypertexnames=true]{hyperref}
\fi

% % % % % % % % % % % % % % % % % % % %
% DOCUMENT - configuration / commands %
% % % % % % % % % % % % % % % % % % % %

% Allow different modes of the document that generates different content
%Uncomment if draft is true (Only show finalized sections)
%\ifdraft ## insert text ## \fi
\newif\ifdraft

%Uncomment if brief is true (Only show abstract, introduction, and conclusion)
\newif\ifbrief


% Figure config/normalization paramters
\newlength{\lcbox}
\setlength{\lcbox}{10cm}

\iflinks
% Configure Hyperlink Colours and inline references
\hypersetup{
	colorlinks,
	linkcolor={red!75!black},
	citecolor={blue!60!black},
	urlcolor={blue!80!black}
}
\fi

\input{default_symbols.cls}

%%%%% sections without index %%%%%%%
\newcommand{\usection}[1]{
    \section*{#1}
    \addcontentsline{toc}{section}{#1}
}

\newcommand{\usubsection}[1]{
    \subsection*{#1}
    \addcontentsline{toc}{subsection}{#1}
}

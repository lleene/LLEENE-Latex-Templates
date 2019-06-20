%Modified Latex Style sheet preamble for IEEE publication
%Lieuwe B. Leene 2016 July 14
%Default package Import based on IEEEtran.cls v1.8b August 26, 2015.
%Please See http://www.michaelshell.org/tex/ieeetran/ For details

\input{personal_details.cls} %% Load author details

% % % % % % % % % % % % % % % % % % % % % % % % % % % %
% PACKAGES -  Comment any package deemed unnecessary  %
% % % % % % % % % % % % % % % % % % % % % % % % % % % %

\usepackage{amsmath,amssymb}   % Math formatting & symbols
\usepackage{graphicx}
\usepackage{qrcode}

\usepackage[pdfauthor={\FirstName~\LastName},
            pdftitle={C.V.~\FirstName~\LastName},
            pdfsubject={Curriculum Vitae/Resume},
            pdfkeywords={IC designer, Mixed signal, Data converter, System-On-Chip, Imperial College, Research associate},
            colorlinks = true, allcolors = blue ]{hyperref}
%\newcommand{\MYhref}[3][blue]{\href{#2}{\color{#1}{#3}}}%

\input{default_symbols.cls} %% Load author details

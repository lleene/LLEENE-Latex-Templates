
% Modified Beamer Style sheet for NGNI publications
% Last edited by: Lieuwe B. Leene 2017 August
% Modified by Lieuwe Leene, June 2019

%% Before using the beamer preamble which prepares a standardised NGNI format.
%% There are a few comments regarding the file structure
%% beamer.preamble.tex will prepares latex packages/commands
%% beamerthemengni.sty formats the general style of the template fonts & colors
%% beamerouterthemengni.tsy formats slide specific things such as title & Footer

\usefonttheme{professionalfonts}

\input{personal_details.cls}  %% Load author details

% Beamer already loads the hyperref package automatically
\hypersetup{pdftitle={\maintitle},pdfauthor={\FirstName~\LastName}, pdfsubject={\mainsubject}, pdfkeywords={\mainkeywords}}

% % % % % % % % % % % % % % % % % % % % % % % % % % % %
% PACKAGES -  Comment any package deemed unnecessary  %
% % % % % % % % % % % % % % % % % % % % % % % % % % % %

\usepackage{graphicx}  % figures, graphics, etc.
\usepackage{latexsym}  % Optional extra symbols from LaTeX2.09
\usepackage{amsmath,amssymb}   % Math formatting & symbols

\usepackage{subfigure} % Introduce Subfigures
\usepackage{cite}      % Citation handle
\usepackage{xcolor} % Colour
\usepackage{booktabs}

\makeatletter
\def\bstctlcite{\@ifnextchar[{\@bstctlcite}{\@bstctlcite[@auxout]}}
\def\@bstctlcite[#1]#2{\@bsphack
  \@for\@citeb:=#2\do{%
    \edef\@citeb{\expandafter\@firstofone\@citeb}%
    \if@filesw\immediate\write\csname #1\endcsname{\string\citation{\@citeb}}\fi}%
  \@esphack}
\makeatother

\definecolor{ngniblue}{RGB}{34,57,106}
\definecolor{ngnired}{RGB}{218,30,37}
\definecolor{ngniwhite}{RGB}{240,240,255}
\definecolor{ngniblack}{RGB}{0,0,30}

% % % % % % % % % % % % % % % % % % % %
% BEAMER - configuration / settings   %
% % % % % % % % % % % % % % % % % % % %

% suppress navigation bar
\beamertemplatenavigationsymbolsempty

\mode<presentation>
{
	\usetheme{ngni}
	\setbeamercovered{transparent}
	\setbeamertemplate{items}[circle]
}

% % % % % % % % % % % % % % % % % % % %
% DOCUMENT - configuration / commands %
% % % % % % % % % % % % % % % % % % % %

\newlength{\dpagewidth}
\setlength{\dpagewidth}{0.42\paperwidth}
\newlength{\tpagewidth}
\setlength{\tpagewidth}{0.27\paperwidth}

\newcommand{\itmcol}[2]{%
	\begin{minipage}{\dpagewidth} \flushleft
	\begin{itemize}
		#1
	\end{itemize}
	\end{minipage}%
	\hfill%
	\begin{minipage}{\dpagewidth} \flushleft
		#2
	\end{minipage}
}

\newcommand{\enmcol}[2]{%
	\begin{minipage}{\dpagewidth} \flushleft
		\begin{enumerate}
			#1
		\end{enumerate}
	\end{minipage}%
	\hfill%
	\begin{minipage}{\dpagewidth} \flushleft
		#2
	\end{minipage}
}

\newcommand{\dblcol}[2]{%
\begin{minipage}{\dpagewidth} \flushleft
		#1
\end{minipage}%
\hfill%
\begin{minipage}{\dpagewidth} \flushleft
		#2
\end{minipage}
}

\newcommand{\tplcol}[3]{%
\begin{minipage}{\tpagewidth} \flushleft
		#1
\end{minipage}%
\hfill%
\begin{minipage}{\tpagewidth} \flushleft
		#2
\end{minipage}
\hfill%
\begin{minipage}{\tpagewidth} \flushleft
		#3
\end{minipage}
}

\newcommand{\sglenum}[1]{%
\begin{enumerate}
#1
\end{enumerate}
}

\newcommand{\sglitm}[1]{%
\begin{itemize}
\item #1
\end{itemize}
}

\newcommand{\dblenm}[2]{%
\begin{minipage}{\dpagewidth} \flushleft
\begin{enumerate}
#1
\end{enumerate}
\end{minipage}%
\hfill%
\begin{minipage}{\dpagewidth} \flushleft
\begin{enumerate}
#2
\end{enumerate}
\end{minipage}
}

\newcommand{\dblitm}[2]{%
\begin{minipage}{\dpagewidth} \flushleft
\begin{itemize}
#1
\end{itemize}
\end{minipage}%
\hfill%
\begin{minipage}{\dpagewidth} \flushleft
\begin{itemize}
#2
\end{itemize}
\end{minipage}
}

\newcommand{\inserttoc}[0]{
\ifsectiontoc
\else
\begin{frame}{Table of Contents}
\tableofcontents
\end{frame}
\fi
}

\newcommand{\enablefooter}[1]{
%% Put the Footer Subtitle Here
\subtitle{#1}
%% This shows some Footer graphics
\titlegraphic{\includegraphics[height=2.5ex, trim=1mm 2mm 20mm -1mm]{Style/banner_name_white.pdf}\includegraphics[width=2cm, angle=90, trim=-14mm -3mm 0mm 0mm]{Style/banner_icon.pdf}}
}

\newcommand{\disablefooter}[0]{
	\subtitle{}
	\titlegraphic{}
}

\input{default_symbols.cls}

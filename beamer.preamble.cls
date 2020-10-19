
% Modified Beamer Style sheet for internal presentations
% Created by: Lieuwe B. Leene 2017 August
% Modified by Lieuwe Leene, Jan. 2020

%% Before using the beamer preamble which prepares a standardised XETHRU format.
%% There are a few comments regarding the file structure
%% beamer.preamble.tex will prepares latex packages/commands
%% beamerthemexethru.sty formats the general style of the template fonts & colors
%% beamerouterthemexethru.tsy formats slide specific things such as title & Footer

\input{personal_details.cls}  %% Load author details

% Beamer already loads the hyperref package automatically
\ifx\nolinks\undefined
\hypersetup{pdftitle={\maintitle},pdfauthor={\FirstName~\LastName}, pdfsubject={\mainsubject}, pdfkeywords={\mainkeywords}}
\fi

% % % % % % % % % % % % % % % % % % % % % % % % % % % %
% PACKAGES -  Comment any package deemed unnecessary  %
% % % % % % % % % % % % % % % % % % % % % % % % % % % %

\usepackage{graphicx}  % figures, graphics, etc.
\usepackage{latexsym}  % Optional extra symbols from LaTeX2.09
\usepackage{amsmath,amssymb}   % Math formatting & symbols
\usepackage{subfigure} % Introduce sub-figures
\usepackage{cite} % Citation handle
\usepackage{xcolor} % Colour formatting
\usepackage{booktabs} % Tabe formatting

\makeatletter
\def\bstctlcite{\@ifnextchar[{\@bstctlcite}{\@bstctlcite[@auxout]}}
\def\@bstctlcite[#1]#2{\@bsphack
  \@for\@citeb:=#2\do{%
    \edef\@citeb{\expandafter\@firstofone\@citeb}%
    \if@filesw\immediate\write\csname #1\endcsname{\string\citation{\@citeb}}\fi}%
  \@esphack}
\makeatother

%\definecolor{ngniblue}{RGB}{34,57,106}
%\definecolor{ngnired}{RGB}{218,30,37}
%\definecolor{ngniwhite}{RGB}{240,240,255}
%\definecolor{ngniblack}{RGB}{0,0,30}

%\definecolor{xethrublack}{RGB}{20,0,20}
%\definecolor{xethruwhite}{RGB}{255,240,255}
%\definecolor{xethrublue}{RGB}{47,26,69}

% % % % % % % % % % % % % % %
% BEAMER - font selection   %
% % % % % % % % % % % % % % %

\usepackage{ifxetex}
\ifxetex
\usepackage{fontspec} % Required for specifying custom fonts in XeLaTeX
\providecommand{\fontscale}{1} % load default if not set
\setmainfont
 [Path = ../../Fonts/IBM-Plex-Sans/,
   Scale=\fontscale,
   UprightFont = *-Regular,
   ItalicFont = *-Italic,
   BoldFont = *-Bold,
   BoldItalicFont = *-BoldItalic,
   FontFace = {t}{n}{*-Thin},
   FontFace = {t}{it}{*-ThinItalic},
   FontFace = {l}{n}{*-Light},
   FontFace = {l}{it}{*-LightItalic},
   FontFace = {sb}{n}{*-SemiBold},
   FontFace = {sb}{it}{*-SemiBoldItalic},
   FontFace = {m}{n}{*-Medium},
   FontFace = {m}{it}{*-MediumItalic},
   FontFace = {b}{n}{*-Bold},
   FontFace = {b}{it}{*-BoldItalic},
   Ligatures=TeX]
  {IBMPlexSans}
\renewcommand{\baselinestretch}{\fontscale}
\setbeamerfont{frametitle}{family=\fontspec{IBMPlexSans}}
\setbeamerfont{framesubtitle}{family=\fontspec{IBMPlexSans}}
\setbeamerfont{title}{family=\fontspec{IBMPlexSans}}
\setbeamerfont{caption}{family=\fontspec{IBMPlexSans}}
\setbeamerfont{author}{family=\fontspec{IBMPlexSans}}
\setbeamerfont{institute}{family=\fontspec{IBMPlexSans}}
\setbeamerfont{date}{family=\fontspec{IBMPlexSans}}
\else
\usefonttheme{professionalfonts}
\fi

% % % % % % % % % % % % % % % % % % % %
% BEAMER - configuration / settings   %
% % % % % % % % % % % % % % % % % % % %

% suppress navigation bar
\beamertemplatenavigationsymbolsempty

\mode<presentation>
{
	\usetheme{xethru}
	\setbeamercovered{transparent}
	\setbeamertemplate{items}[circle]
}

\newcommand{\highlight}[1]{\textcolor{blue}{#1}}

% % % % % % % % % % % % % % % % % % % %
% DOCUMENT - configuration / commands %
% % % % % % % % % % % % % % % % % % % %

\newlength{\dpagewidth}
\setlength{\dpagewidth}{0.42\paperwidth}
\newlength{\tpagewidth}
\setlength{\tpagewidth}{0.27\paperwidth}

\newcommand{\itemcolumn}[2]{%
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

\newcommand{\enumcolumn}[2]{%
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

\newcommand{\doublecolumn}[2]{%
\begin{minipage}{\dpagewidth} \flushleft
		#1
\end{minipage}%
\hfill%
\begin{minipage}{\dpagewidth} \flushleft
		#2
\end{minipage}
}

\newcommand{\triplecolumn}[3]{%
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

\newcommand{\singleenum}[1]{%
\begin{enumerate}
#1
\end{enumerate}
}

\newcommand{\singleitem}[1]{%
\begin{itemize}
\item #1
\end{itemize}
}

\newcommand{\doubleenum}[2]{%
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

\newcommand{\doubleitem}[2]{%
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

\newcommand{\sectionslide}[1]{
\section{#1}
\begin{frame}
\centering
\usebeamerfont{title}\secname\par
\end{frame}
}

\newcommand{\subsectionslide}[1]{
\subsection{#1}
\begin{frame}
\centering
\usebeamerfont{subtitle} \secname \par
\bigskip
\usebeamerfont{title} \subsecname\par
\end{frame}
}

\newcommand{\inserttoc}[0]{
\ifx\nosectiontoc\undefined
\else
\begin{frame}{Table of Contents}
\tableofcontents
\end{frame}
\fi
}

\newcommand{\linkwebsite}{
\ifx\nolinks\undefined
\href{https://\Website}{\Website}
\else
\Website
\fi
}

\input{default_symbols.cls}

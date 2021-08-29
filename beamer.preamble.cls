
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
\href{\Website}{\Website}
\else
\Website
\fi
}

\newcommand{\insertbib}[1]{
\begin{frame}[allowframebreaks]
\frametitle{References}
\footnotesize
\bibliographystyle{IEEEtran}
\bibliography{IEEEabrv,IEEEbst,#1}
\end{frame}
}

%% Put Author details here
\newcommand{\inserttitlepage}[0]{
\disablefooter
\institute{\Group \\
\Organisation \\
\href{\Website}{\Website}}%
\maketitle
\inserttoc
\enablefooter{\maintitle}
}

\input{default_symbols.cls}

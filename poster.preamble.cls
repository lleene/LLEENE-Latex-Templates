%Modified Latex Style sheet preamble for ENGNI Poster
%Lieuwe B. Leene 2019 July

\input{personal_details.cls} %% Load author details

% % % % % % % % % % % % % % % % % % % % % % % % % % % %
% PACKAGES -  Comment any package deemed unnecessary  %
% % % % % % % % % % % % % % % % % % % % % % % % % % % %

\input{default_packages.cls}

\input{default_symbols.cls} %% Load author details

%%%%% sections without index %%%%%%%
\newcommand{\usection}[1]{
    \section*{#1}
    \addcontentsline{toc}{section}{#1}
}

\newcommand{\usubsection}[1]{
    \subsection*{#1}
    \addcontentsline{toc}{subsection}{#1}
}

\newlength{\dpagewidth}
\setlength{\dpagewidth}{0.46\paperwidth}
\newlength{\tpagewidth}
\setlength{\tpagewidth}{0.28\paperwidth}

\newcommand{\doubleframe}[4]{%
\noindent
\begin{minipage}{\dpagewidth}%
  \begin{mdframed}[style = ngniframe, frametitle = #1]
    #2
  \end{mdframed}
\end{minipage}%
\hfill%
\begin{minipage}{\dpagewidth}%
	\begin{mdframed}[style = ngniframe, frametitle = #3]
    #4
  \end{mdframed}
\end{minipage}%
}

\newcommand{\tripleframe}[6]{%
\noindent
\begin{minipage}{\tpagewidth}%
  \begin{mdframed}[\sectionheader{#1}]
    #2
  \end{mdframed}
\end{minipage}%
\hfill %
\begin{minipage}{\tpagewidth}%
	\begin{mdframed}[\sectionheader{#3}]
    #4
  \end{mdframed}
\end{minipage}%
\hfill%
\begin{minipage}{\tpagewidth}%
	\begin{mdframed}[\sectionheader{#5}]
    #6
  \end{mdframed}
\end{minipage}%
}

\newcommand{\doublecolumn}[2]{%
\begin{minipage}{\dpagewidth}
		#1
\end{minipage}%
\hfill%
\begin{minipage}{\dpagewidth}
		#2
\end{minipage}
}

\newcommand{\triplecolumn}[3]{%
\begin{minipage}{\tpagewidth}
		#1
\end{minipage}%
\hfill%
\begin{minipage}{\tpagewidth}
		#2
\end{minipage}
\hfill%
\begin{minipage}{\tpagewidth}
		#3
\end{minipage}
}

% Original Poster Template by Lieuwe B. Leene
% Last edited by: Lieuwe B. Leene 2017 August
% Modified by Lieuwe Leene, June 2019

\ProvidesClass{enginiposter}[2018/09/30 FORTE Latex Poster Template.]
\LoadClass[portrait]{a0poster}

\makeatletter
\def\bstctlcite{\@ifnextchar[{\@bstctlcite}{\@bstctlcite[@auxout]}}
\def\@bstctlcite[#1]#2{\@bsphack
  \@for\@citeb:=#2\do{%
    \edef\@citeb{\expandafter\@firstofone\@citeb}%
    \if@filesw\immediate\write\csname #1\endcsname{\string\citation{\@citeb}}\fi}%
  \@esphack}
\makeatother

% color definitions
\RequirePackage{xcolor}
\definecolor{ngniharm1}{RGB}{18,62,126}
\definecolor{ngnibg}{RGB}{245,245,255}
\definecolor{ngniharm2}{RGB}{00,192,221}

% set lengths: what about geometry margins?
\newlength{\marginlength}%
\setlength{\marginlength}{2cm}
\setlength{\unitlength}{\paperwidth}%

\RequirePackage{graphicx}
\RequirePackage[margin=\marginlength,bottom=0mm]{geometry}
\RequirePackage{mdframed}
\mdfdefinestyle{ngniframe}{linecolor=ngniharm2, linewidth=5pt,topline=false,rightline=false,bottomline=false,backgroundcolor=ngnibg,font=\Large,fontcolor=black,frametitlefont=\huge\bfseries\color{ngnibg},frametitlebackgroundcolor=ngniharm1,frametitleaboveskip=25pt,frametitlebelowskip=25pt,subtitlebackgroundcolor=ngniharm1,subtitlefont=\huge\bfseries\color{ngnibg},subtitleinneraboveskip=25pt,subtitleinnerbelowskip=25pt,innertopmargin=25pt,innerbottommargin=25pt,innerleftmargin=50pt,innerrightmargin=50pt}

\newcommand{\fullbanner}[3]{%
\noindent\hspace{-1\marginlength}%
\colorbox{#1}{\color{#2}%
\begin{minipage}{\paperwidth}%
#3
\end{minipage}}}

\RequirePackage{amssymb}
\renewcommand{\labelitemi}{\raisebox{0.05em}{$\blacktriangleright\:$}}
\renewcommand{\labelitemii}{$\bullet\:$}
\renewcommand{\labelitemiii}{$\cdot\:$}

\makeatletter
\newcommand{\address}[1]{\gdef\@address{#1}}
%make title banner with given hight
\renewcommand{\maketitle}{ % Prepares Top Banner
% Edit this such that it can include multiple figures in iteration
\noindent\hspace{1.33cm}\hspace{-1\marginlength}%
%\colorbox{white}{%
\includegraphics[height=5cm]{Style/IC_blue.pdf}%
\hfill%
\includegraphics[height=5cm]{Style/forte_banner.pdf}%
\hfill%
\includegraphics[height=5cm]{Style/epsrc-bw.pdf}%
%}

\vspace{2cm}
\noindent\hspace{-1\marginlength}%
\includegraphics[width=\paperwidth, trim={0cm 6.5cm 0cm 0cm}]{Style/Silicon_Dioxide.jpg}
\vspace{2cm}

\fullbanner{ngniharm1}{ngnibg}{%
\begin{center}
\bigskip
\veryHuge \noindent \ignorespaces \color{ngnibg} {\bf\@title} \par
\bigskip
\Large \noindent \ignorespaces \color{ngnibg} \bf\@author \par
\Large \noindent \ignorespaces \color{ngnibg} \bf\@address \par
\bigskip
\end{center}}}
\makeatother

\newcommand{\clearbackground}{%
\noindent\hspace{-1\marginlength}%
\includegraphics[width=\paperwidth, trim={0cm 10.58cm 0cm 0cm}]{Style/box.pdf}%
\vspace{\marginlength}}


% Prepares a banner for the end-section with content
\newcommand{\ngnifooter}[1]{\vfill%
\fullbanner{ngniharm1}{ngnibg}{%
\begin{minipage}{6cm}%
\hspace{\marginlength}
\colorbox{white}{\rule{\marginlength}{0pt}\rule{0pt}{8cm}}
\hfill
\end{minipage}%
\begin{minipage}{0.75\paperwidth}\vspace{8mm}%
#1
\end{minipage}%
\hfill
\begin{minipage}{14cm}%
\colorbox{white}{\includegraphics[height=8cm,trim={-2mm -2mm -2mm -2mm}]{Style/forte_logo.pdf}}%
\hfill%
\end{minipage}%
}}

\newcommand{\contentbanner}[3]{%
\noindent\hspace{-1\marginlength}%
\colorbox{#1}{\color{#2}%
\hspace{\marginlength}
\begin{minipage}{\dimexpr (\paperwidth-2\marginlength) \relax}%
\bigskip
#3
\bigskip
\end{minipage}\hspace{\marginlength}}}

% Original Poster Template by Lieuwe B. Leene
% Last edited by: Lieuwe B. Leene 2017 August
% Modified by Lieuwe Leene, June 2019

\ProvidesClass{enginiposter}[2018/09/30 Engini Latex Poster Template.]
\LoadClass[portrait]{a0poster}

% color definitions
\RequirePackage{xcolor}
\definecolor{ngniprimary}{RGB}{33,48,79}
\definecolor{ngniharm1}{RGB}{48,33,79}
\definecolor{ngnibg}{RGB}{245,245,255}
\definecolor{ngniharm2}{RGB}{33,79,64}

% set lengths
\newlength{\marginlength}%
\setlength{\marginlength}{2cm}
\setlength{\unitlength}{\paperwidth}%

\RequirePackage{graphicx}
\RequirePackage[margin=\marginlength,bottom=-5mm]{geometry}
\RequirePackage{mdframed}
\mdfdefinestyle{ngniframe}{linecolor=ngniharm2, linewidth=10pt,topline=false,rightline=false,bottomline=false,backgroundcolor=ngnibg,font=\Large,fontcolor=black,frametitlefont=\huge\bfseries\color{ngnibg},frametitlebackgroundcolor=ngniharm1,frametitleaboveskip=25pt,frametitlebelowskip=25pt,subtitlebackgroundcolor=ngniharm1,subtitlefont=\huge\bfseries\color{ngnibg},subtitleinneraboveskip=25pt,subtitleinnerbelowskip=25pt,innertopmargin=25pt,innerbottommargin=25pt,innerleftmargin=50pt,innerrightmargin=50pt}



\def\@intro{}
\newcommand{\intro}[1]{\def\@intro{#1}}
\newcommand{\usection}[1]{\section*{#1}\addcontentsline{toc}{section}{#1}}

\RequirePackage{amssymb}
\renewcommand{\labelitemi}{\raisebox{0.05em}{$\blacktriangleright\:$}}
\renewcommand{\labelitemii}{$\bullet\:$}
\renewcommand{\labelitemiii}{$\cdot\:$}

%make title banne with given hight
\renewcommand{\maketitle}[3]{

\newlength{\trimlength}%
\setlength{\trimlength}{0.35\paperwidth}
\setlength{\trimlength}{#1\trimlength}
\addtolength{\trimlength}{-18cm}

% Top Banner
\noindent\hspace{1.33cm}\hspace{-1\marginlength}%
\begin{picture}(1, 0.04)%
\put(0,0){\includegraphics[height=4.5cm]{Style/IC_blue.pdf}}
\put(0.25,0){\includegraphics[height=4.5cm]{Style/banner_long.pdf}}
\put(0.835,0){\includegraphics[height=4.5cm]{Style/epsrc-bw.pdf}}
\end{picture}

% Title Banner
\noindent\hspace{-0.06cm}\hspace{-1\marginlength}%
\begin{picture}(1, #1)%
\put(0,0){\includegraphics[width=\paperwidth, trim={0 0 0 -\trimlength}, clip=true]{Style/background_neuron.pdf}}
\put(0,#2){%
	\colorbox{ngniprimary}{
	\begin{minipage}{\paperwidth}%
	\begin{center}
	\vspace{1cm}
	\veryHuge \color{ngnibg} \bf \@title  \\
	\bigskip
	\Large \color{ngnibg} \bf \@author
	\vspace{0.5cm}
	\end{center}%
	\end{minipage}}}
\end{picture}

% Abstract Banner
\noindent\hspace{-0.05cm}\hspace{-1\marginlength}%
\begin{picture}(1,0)
\put(0,#3){%
	\colorbox{ngniprimary}{
	\begin{minipage}{\paperwidth}
	\vspace{1cm}
	\color{ngnibg}
	\Large
	\centering
		\@intro
	\vspace{1.5cm}
	\end{minipage}
	}}
\end{picture}
}


\newcommand{\ngnifooter}[1]{
\vfill
\noindent\hspace{-0.05cm}\hspace{-1\marginlength}%
\colorbox{ngniharm1}{\begin{picture}(1,0.09)
	\put(0.854,0.005){\colorbox{white}{\includegraphics[height=8cm,clip=true,trim=-10mm -10mm -10mm -10mm]{Style/main_logo.pdf}}}
	\put(0.0218,0.005){\colorbox{white}{\includegraphics[height=8cm,width=2cm,clip=true,trim=10cm 0 0 0]{Style/main_logo.pdf}}}
	\put(0.06,0.045){%
		\begin{minipage}{0.75\paperwidth}
		\color{ngnibg}
		#1
		\end{minipage}}
	\end{picture}}
}

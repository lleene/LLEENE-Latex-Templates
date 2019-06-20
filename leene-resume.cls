% Personalised Deedy-Resume from Debarghya Das
% github.com/deedy/Deedy-Resume licensed under the Apache License 2.0
% Last edited by: Lieuwe B. Leene 2017 August
% Modified by Lieuwe Leene, June 2019

\ProvidesClass{leene-resume}
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\pagenumbering{gobble} % Do not show page numbers
\usepackage[absolute]{textpos} % Required for positioning the Last Updated text at the top right of the page
\usepackage[UKenglish]{isodate} % Prints the Last Updated date in UK English format
\usepackage{enumitem}
\setlist[itemize]{leftmargin=*}

\usepackage{titlesec} % Required for customizing section/subsection/etc titles
\titlespacing{\section}{0pt}{0pt}{0pt} % Removes the spacing around the main section titles
\titlespacing{\subsection}{0pt}{0pt}{0pt} % Removes the spacing around the subsections
\newcommand{\sectionspace}{\vspace{12pt}} % Defines a command to add a set amount of space after sections and subsections
\newcommand{\subsectionspace}{\vspace{6pt}}

\usepackage{fontspec} % Required for specifying custom fonts in XeLaTeX
\newcommand{\fontsizeheadline}{\fontsize{40pt}{36pt}}
\newcommand{\fontsizeheading}{\fontsize{16pt}{24pt}}
\newcommand{\fontsizesection}{\fontsize{12pt}{12pt}}

\providecommand{\fontscale}{1} % load default if not set
\setmainfont
% [Path = /home/lbl11/Latex/Fonts/IBM-Plex-Sans/,
% [Path = ../Latex/Fonts/IBM-Plex-Sans/,
 [Path = ../../Latex/Fonts/IBM-Plex-Sans/,
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

%----------------------------------------------------------------------------------------
%	LAST UPDATED COMMAND
%----------------------------------------------------------------------------------------

\setlength{\TPHorizModule}{0.01\paperwidth} % Sets the units for the horizontal position used in the \begin{textblock} argument
\setlength{\TPVertModule}{0.01\paperwidth} % Sets the units for the vertical position used in the \begin{textblock} argument
\newcommand{\lastupdated}{ % Create a new command for printing the Last Updated text
\begin{textblock}{50}(70,13.5 ) % The position of the Last Updated text on the page (75% of the page across, 2% down)
\flushleft{
\color{date}\fontseries{l}\selectfont \small \selectfont % Text styling of the text
Last Updated on \today } % Last Updated text
\end{textblock}}

%----------------------------------------------------------------------------------------
%	MAIN HEADING COMMAND
%----------------------------------------------------------------------------------------

\newcommand{\makefrontcard}{ % Defines the command for the main heading
\setlength{\unitlength}{12mm}
\flushleft
\begin{picture}(1,1)
\put(0,0.2){\includegraphics[height=10mm]{Style/IC_black.eps}}
\end{picture}
\vfill
\textbf{{\Large \FirstName\:~\LastName} \hspace{2mm}\ {\small \Certification}}\\
\Title\\
\vspace{2mm}
{\small
{\fontseries{t}\selectfont \Group} \\
{\fontseries{t}\selectfont \Address} \\
\vspace{2mm}
{\fontseries{l}\selectfont \includegraphics[height=2mm]{Style/linkedin.pdf}%
 \,\LinkedIn} \\
{\fontseries{l}\selectfont \includegraphics[height=2mm]{Style/phone.pdf}%
 \,\Telephone \hspace{2cm}\includegraphics[height=2mm]{Style/envelope.pdf}\,\Email } \\
{\fontseries{l}\selectfont \Website }
}}

\newcommand{\makebackcard}{ % paperwidth=85mm,paperheight=55mm
\begin{figure}
\centering
\setlength{\fboxrule}{0pt}
\includegraphics[width=60mm]{Style/IC_black.eps}
\end{figure}
}

\newcommand{\namesection}{ % Defines the command for the main heading

\flushleft{  % Center the name
\fontsizeheadline
{\fontseries{t}\selectfont \Salutation~\FirstName~} % First name font
{\fontseries{m}\selectfont \LastName} % Last name font
\vspace{0.45cm}} \\[5pt] % Whitespace between the name and contact information

\begin{textblock}{30}(70,4)
\vline
\flushleft{\color{headings}%
{\fontseries{l}\selectfont Address:} \Address \\
{\fontseries{l}\selectfont Mobile:} \Telephone \\
{\fontseries{l}\selectfont Email:} \Email \\ }
\end{textblock}

\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}} % Horizontal rule
\vspace{-5pt} % Reduce whitespace after the rule slightly
}

%----------------------------------------------------------------------------------------
%	FOOT NOTE COMMAND
%----------------------------------------------------------------------------------------

\newcommand{\tailsection}[2]{
	\vfill
	\Salutation~\FirstName~\LastName --- Curriculum Vitae \hfill Page: {#1} | {#2}
	\vspace{-4mm}
	\clearpage
}

%----------------------------------------------------------------------------------------
%	SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

\titleformat{\section}{ % Customize the large section titles
\color{headings}\scshape \fontseries{l} \fontsizeheading \selectfont \raggedright\uppercase}{}{0em}{}

\titleformat{\subsection}{ % Customize the subsections and places worked/studied titles
\color{subheadings} \fontsizesection \bfseries}{}{0em}{}

%\newcommand{\descript}[1]{ % Used for describing the subsection either on the same line or underneath
%\color{subheadings}\raggedright\scshape \fontseries{r} \selectfont {#1} \normalfont}

%----------------------------------------------------------------------------------------
%	SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

\newenvironment{tightitemize} % Defines the tightitemize environment which modifies the itemize environment to be more compact
{\vspace{-\topsep} \begin{itemize} \itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize} \vspace{-\topsep}}

%----------------------------------------------------------------------------------------
%	COLORS
%----------------------------------------------------------------------------------------

\usepackage{xcolor} % Required for custom colors
%\definecolor{primary}{HTML}{2b2b2b} % The primary document color for content text
\definecolor{primary}{HTML}{131313} % The primary document color for content text
%\definecolor{headings}{HTML}{6A6A6A} % The color of the large sections
\definecolor{headings}{HTML}{3b3b3b} % The color of the large sections
%\definecolor{subheadings}{HTML}{333333} % The color of subsections and places worked/studied
\definecolor{subheadings}{HTML}{232323} % The color of subsections and places worked/studied
%\definecolor{date}{HTML}{666666} % The color used for the Last Updated text at the top right
\definecolor{date}{HTML}{3b3b3b} % The color used for the Last Updated text at the top right

%Modified Latex Style sheet preamble for ENGNI Poster
%Lieuwe B. Leene 2019 July

\input{personal_details.cls} %% Load author details

%%%%%%%%%%% Basic settings %%%%%%%%%%%%%
%
% Information about who sent the letter
\dept{\Organisation}
\address{\Address}
\telephone{\Telephone}
%\fax{+44 (0)20 7584 8120}
\email{\Email}
% http:// not required here
\web{\Website}
\nametitle{\Salutation}
\author{\FirstName~\LastName}
\postnoms{\Creditation}
\jobtitle{\JobTitle}


% % % % % % % % % % % % % % % % % % % % % % % % % % % %
% PACKAGES -  Comment any package deemed unnecessary  %
% % % % % % % % % % % % % % % % % % % % % % % % % % % %

\input{default_packages.cls}

\input{default_symbols.cls} %% Load author details

\makeatletter
\def\bstctlcite{\@ifnextchar[{\@bstctlcite}{\@bstctlcite[@auxout]}}
\def\@bstctlcite[#1]#2{\@bsphack
  \@for\@citeb:=#2\do{%
    \edef\@citeb{\expandafter\@firstofone\@citeb}%
    \if@filesw\immediate\write\csname #1\endcsname{\string\citation{\@citeb}}\fi}%
  \@esphack}
\makeatother

\renewcommand{\refname}{}

%%%%% sections without index %%%%%%%
\newcommand{\usection}[1]{
    \section*{#1}
    \addcontentsline{toc}{section}{#1}
}

\newcommand{\usubsection}[1]{
    \subsection*{#1}
    \addcontentsline{toc}{subsection}{#1}
}

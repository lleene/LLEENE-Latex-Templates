\usepackage{latexsym}  % Optional extra symbols from LaTeX2.09
\usepackage{amsmath,amssymb}   % Math formatting & symbols
%Specific for AMSMATH - (re)allows page breaks within aligned equations as IEEEtran normally does.
\interdisplaylinepenalty=2500
\usepackage{graphicx}  % figures, graphics, etc.
\usepackage{subfigure} % Introduce sub-figures
\usepackage{cite} % Citation handle
\usepackage{xcolor} % Colour
\usepackage[nomessages]{fp} % More advanced command customization
\usepackage{booktabs} % Tabe formatting
\usepackage{lipsum}

\ifx\nolinks\undefined
  \usepackage[pdfauthor={\FirstName~\LastName},
              pdftitle={\maintitle},
              pdfsubject={\mainsubject},
              pdfkeywords={\mainkeywords},
              colorlinks = true,hypertexnames=true]{hyperref}
  \hypersetup{
  	colorlinks,
  	linkcolor={red!75!black},
  	citecolor={blue!60!black},
  	urlcolor={blue!80!black}
  }
\fi

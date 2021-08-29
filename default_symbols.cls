% Latex Default Symbol List for Standardised Composition
% Modified by Lieuwe Leene, June 2019

% Round down Math Mode
\newcommand{\floor}[1]{\left\lfloor #1 \right\rfloor}
% Easy use for nomenclature table
\newcommand{\csymbol}[2]{\textbf{#1} & - &  #2\\}

% Neat square in bold math text mode
\newcommand{\tsqrd}{\textsuperscript{2}}
% Neat subscript in textmode
\newcommand{\tss}[1]{\textsubscript{#1}}
% Neat superscript in textmode
\newcommand{\tps}[1]{\textsuperscript{#1}}

% Color comments for review
\colorlet{CmntClr}{black!60!green}
\newcommand{\cmnt}[1]{\textcolor{CmntClr}{#1}}
\colorlet{EditClr}{black!10!orange}
\newcommand{\edit}[1]{\textcolor{EditClr}{#1}}

% Auto Color Done/Todo Statment
\colorlet{OkGreen}{blue!30!black!60!green}
\newcommand{\done}[0]{\textcolor{OkGreen}{\checkmark}}
\newcommand{\todo}{ \textcolor{red}{\sffamily{X}} }

% Color table with shade of green according to the decimal in the cell and print percentage
\newcommand{\flcl}[1]{\cellcolor[rgb]{0.3,#1,0.3} \FPeval{\result}{round(#1*100,1)} \result\%}

%In-line bold math
\newcommand{\tmbm}[1]{\mbox{\boldmath $ #1 $}}
%In-line root Mat
\newcommand{\rtxt}[1]{$\sqrt{\text{#1}}$}

%In-line bold math
\newcommand{\hiddentext}[1]{}

% % % % % % % % % % % % % % % % % % % %
% SYMBOLS - TEXTMODE/MATHMODE List    %
% % % % % % % % % % % % % % % % % % % %

%% List of personally preferred symbol definitions
%% Taken and edited from various online code snippets

\usepackage{upgreek}

\newcommand{\ipc}{{\sf ipc}}
\newcommand{\Prob}{\bbbp}
\newcommand{\Real}{\bbbr}
\newcommand{\real}{\Real}
\newcommand{\Int}{\bbbz}
\newcommand{\Nat}{\bbbn}

\newcommand{\NN}{{\sf I\kern-0.14emN}}   % Natural numbers
\newcommand{\ZZ}{{\sf Z\kern-0.45emZ}}   % Integers
\newcommand{\QQQ}{{\sf C\kern-0.48emQ}}   % Rational numbers
\newcommand{\RR}{{\sf I\kern-0.14emR}}   % Real numbers
\newcommand{\KK}{{\cal K}}
\newcommand{\OO}{{\cal O}}
\newcommand{\AAA}{{\bf A}}
\newcommand{\HH}{{\bf H}}
\newcommand{\II}{{\bf I}}
\newcommand{\LL}{{\bf L}}
\newcommand{\PP}{{\bf P}}
\newcommand{\PPprime}{{\bf P'}}
\newcommand{\QQ}{{\bf Q}}
\newcommand{\UU}{{\bf U}}
\newcommand{\UUprime}{{\bf U'}}
\newcommand{\zzero}{{\bf 0}}
\newcommand{\ppi}{\mbox{\boldmath $\pi$}}
\newcommand{\rpi}{$\uppi$}
\newcommand{\dDelta}{\mbox{\boldmath $\Delta$}}
\newcommand{\rDelta}{$\Updelta$}
\newcommand{\rSigma}{$\Upsigma$}
\newcommand{\rSD}{$\Upsigma\Updelta$}
\newcommand{\rDS}{$\Updelta\Upsigma$}
\newcommand{\aalph}{\mbox{\boldmath $\alpha$}}
\newcommand{\ralpha}{$\upalpha$}
\newcommand{\pphi}{\mbox{\boldmath $\phi$}}
\newcommand{\rphi}{$\upphi$}
\newcommand{\bb}{{\bf b}}
\newcommand{\ee}{{\bf e}}
\newcommand{\mmu}{\mbox{\boldmath $\mu$}}
\newcommand{\rmu}{$\upmu$}
\newcommand{\mbeta}{\mbox{\boldmath $\beta$}}
\newcommand{\rbeta}{$\upbeta$}
\newcommand{\meta}{\mbox{\boldmath $\eta$}}
\newcommand{\reta}{$\upeta$}
\newcommand{\rsigma}{$\upsigma$}
\newcommand{\rtau}{$\uptau$}
\newcommand{\vv}{{\bf v}}
\newcommand{\xx}{{\bf x}}
\newcommand{\yy}{{\bf y}}
\newcommand{\zz}{{\bf z}}
\newcommand{\oomeg}{\mbox{\boldmath $\omega$ }}
\newcommand{\rOmeg}{$\Upomega$}
\newcommand{\res}{{\bf res}}
\newcommand{\cchi}{{\mbox{\raisebox{.4ex}{$\chi$}}}}
%\newcommand{\cchi}{{\cal X}}
%\newcommand{\cchi}{\mbox{\Large $\chi$}}

% Logical operators and symbols
\newcommand{\imply}{\Rightarrow}
\newcommand{\bimply}{\Leftrightarrow}
\newcommand{\union}{\cup}
\newcommand{\intersect}{\cap}
\newcommand{\boolor}{\vee}
\newcommand{\booland}{\wedge}
\newcommand{\boolimply}{\imply}
\newcommand{\boolbimply}{\bimply}
\newcommand{\boolnot}{\neg}
\newcommand{\boolsat}{\!\models}
\newcommand{\boolnsat}{\!\not\models}


\newcommand{\op}[1]{\mathrm{#1}}
\newcommand{\s}[1]{\ensuremath{\mathcal #1}}

% Properly styled differentiation and integration operators
\newcommand{\diff}[1]{\mathrm{\frac{d}{d\mathit{#1}}}}
\newcommand{\diffII}[1]{\mathrm{\frac{d^2}{d\mathit{#1}^2}}}
\newcommand{\intg}[4]{\int_{#3}^{#4} #1 \, \mathrm{d}#2}
\newcommand{\intgd}[4]{\int\!\!\!\!\int_{#4} #1 \, \mathrm{d}#2 \, \mathrm{d}#3}

% Large () brackets on different lines of an eqnarray environment
\newcommand{\Leftbrace}[1]{\left(\raisebox{0mm}[#1][#1]{}\right.}
\newcommand{\Rightbrace}[1]{\left.\raisebox{0mm}[#1][#1]{}\right)}

% Funky symobols for footnotes
\newcommand{\symbolfootnote}{\renewcommand{\thefootnote}{\fnsymbol{footnote}}}
% now add \symbolfootnote to the beginning of the document...

\newcommand{\normallinespacing}{\renewcommand{\baselinestretch}{1.5} \normalsize}
\newcommand{\mediumlinespacing}{\renewcommand{\baselinestretch}{1.2} \normalsize}
\newcommand{\narrowlinespacing}{\renewcommand{\baselinestretch}{1.0} \normalsize}
\newcommand{\bump}{\noalign{\vspace*{\doublerulesep}}}
\newcommand{\cell}{\multicolumn{1}{}{}}
\newcommand{\spann}{\mbox{span}}
\newcommand{\diagg}{\mbox{diag}}
\newcommand{\modd}{\mbox{mod}}
\newcommand{\minn}{\mbox{min}}
\newcommand{\andd}{\mbox{and}}
\newcommand{\forr}{\mbox{for}}
\newcommand{\EE}{\mbox{E}}

\newcommand{\deff}{\stackrel{\mathrm{def}}{=}}
\newcommand{\syncc}{~\stackrel{\textstyle \rhd\kern-0.57em\lhd}{\scriptstyle L}~}

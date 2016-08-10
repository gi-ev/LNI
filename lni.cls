%%
%% This is file `lni.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% lni.dtx  (with options: `class')
%% -------:| -----------------------------------------------------------------
%%     lni:| A class for submissions to the ``Lecture Notes in Informatics''
%%  Author:| Martin Sievers
%%   Email:| martin.sievers@schoenerpublizieren.de
%% License:| Released under the LaTeX Project Public License v1.3c or later
%%     See:| http://www.latex-project.org/lppl.txt
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{lni}
    [2016/07/04 v1.0 A class for submissions to the ``Lecture Notes in Informatics'']
\setlength{\hoffset}{-0,2cm}% correct left margin to 4.2cm
\setlength{\voffset}{2.60cm}% correct top margin to 5.25cm
\def\@clearglobaloption#1{%
  \def\@tempa{#1}%
  \def\@tempb{\@gobble}%
  \@for\next:=\@classoptionslist\do
    {\ifx\next\@tempa
       \message{Cleared  option \next\space from global list}%
     \else
       \edef\@tempb{\@tempb,\next}%
     \fi}%
  \let\@classoptionslist\@tempb
  \expandafter\ifx\@tempb\@gobble
    \let\@classoptionslist\@empty
  \fi}

\DeclareOption{latin1}{\PassOptionsToPackage{latin1}{inputenc}}
\DeclareOption{utf8}{\PassOptionsToPackage{utf8}{inputenc}}
\DeclareOption{ansinew}{\PassOptionsToPackage{ansinew}{inputenc}}
\newif\iflnienglish
\lnienglishfalse
\DeclareOption{english}{\lnienglishtrue\@clearglobaloption{english}}
\newif\ifusehyperref
\usehyperreftrue
\DeclareOption{nohyperref}{\usehyperreffalse}
\ExecuteOptions{utf8}
\DeclareOption*{\ClassWarning{Option `\CurrentOption` is not supported!}}
\ProcessOptions\relax

\RequirePackage[ngerman=ngerman-x-latest]{hyphsubst}
\LoadClass[10pt,twoside,a4paper,fleqn]{article}
\RequirePackage{cmap}
\RequirePackage{inputenc}
\RequirePackage[T1]{fontenc}

\iflnienglish
   \RequirePackage[ngerman,english]{babel}
\else
   \RequirePackage[english,ngerman]{babel}
\fi

\RequirePackage{newtxtext}
\RequirePackage{newtxmath}
\RequirePackage[zerostyle=b,straightquotes]{newtxtt}
\RequirePackage[final,tracking=smallcaps,expansion=alltext,protrusion=true]{microtype}%
\SetTracking{encoding=*,shape=sc}{50}%
\UseMicrotypeSet[protrusion]{basicmath} % disable protrusion for tt fonts
\DeclareFontFamily{U}{MnSymbolC}{}
\DeclareSymbolFont{MnSyC}{U}{MnSymbolC}{m}{n}
\DeclareFontShape{U}{MnSymbolC}{m}{n}{
    <-6>  MnSymbolC5
   <6-7>  MnSymbolC6
   <7-8>  MnSymbolC7
   <8-9>  MnSymbolC8
   <9-10> MnSymbolC9
  <10-12> MnSymbolC10
  <12->   MnSymbolC12%
}{}
\DeclareMathSymbol{\powerset}{\mathord}{MnSyC}{180}
\setlength{\textheight}{19.2cm}
\setlength{\textwidth}{12.6cm}
\setlength{\topmargin}{0.17cm}%
\setlength{\oddsidemargin}{1.85cm}% korrigierte twoside werte
\setlength{\evensidemargin}{1.85cm}% korrigierte twoside werte
\setlength{\headsep}{0.31cm}%

\def\thisbottomragged{\def\@textbottom{\vskip\z@ plus.0001fil
\global\let\@textbottom\relax}}

\renewcommand\@pnumwidth{3em}
\renewcommand\@tocrmarg{3.5em}
\def\@dottedtocline#1#2#3#4#5{%
  \ifnum #1>\c@tocdepth \else
    \vskip \z@ \@plus.2\p@
    {\leftskip #2\relax \rightskip \@tocrmarg \advance\rightskip by 0pt plus 2cm
               \parfillskip -\rightskip \pretolerance=10000
     \parindent #2\relax\@afterindenttrue
     \interlinepenalty\@M
     \leavevmode
     \@tempdima #3\relax
     \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
     {#4}\nobreak
     \leaders\hbox{$\m@th
        \mkern \@dotsep mu\hbox{.}\mkern \@dotsep
        mu$}\hfill
     \nobreak
     \hb@xt@\@pnumwidth{\hfil\normalfont \normalcolor #5}%
     \par}%
  \fi}

\renewcommand{\title}{\@dblarg\@@title}
\def\@@title[#1]#2{\gdef\@shorttitle{#1}\gdef\@title{#2}}

\renewcommand{\author}{\@dblarg\@@author}
\def\@@author[#1]#2{\gdef\@shortauthor{{\let\footnote\@gobble\def\and{\unskip\ \andname\ }#1}}\gdef\@author{#2}}

\newcommand*{\email}[1]{{\urlstyle{same}\protect\url{#1}}}

\renewcommand\maketitle{\par%
\begingroup
    \renewcommand\thefootnote{\@arabic\c@footnote}%
    \def\@makefnmark% keine Einrückung der Fußnoten eingestellt
 {\@textsuperscript{\normalfont\@thefnmark}}%
 \long\def\@makefntext##1{%
 \@setpar{\@@par
 \@tempdima = \hsize
 \advance\@tempdima -1em
 \parshape \@ne 0.15cm \@tempdima}%
 \par\parindent 0.3cm \noindent
 \hb@xt@\z@{\hss\@textsuperscript{\normalfont\@thefnmark}\,}##1}
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \thispagestyle{plain}
    \@thanks
  \endgroup
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}

\def\@maketitle{%
  \newpage
  \null
  \begin{center}%
  \vskip -24pt% Abstand vor dem Titel
  \raggedright % Linksbündig
  \let\footnote\thanks
    {\fontsize{14}{17}\fontseries{b}\selectfont \@title \par}%
    \vskip 19pt% Abstand nach dem Titel
    {\fontsize{10}{12}\selectfont
      \lineskip .5em%
        \@author
      \par}%
    \vskip 28pt% Abstand vor dem Abstract
  \end{center}%
  \par
}

\renewenvironment*{abstract}{%
 \renewcommand{\abstractname}{Abstract}
 \fontsize{9}{10}\selectfont
    \noindent{\bfseries \abstractname:}%
}{\endquotation}

\newenvironment{keywords}{\fontsize{9}{10}\selectfont
    \noindent{\bfseries Keywords:}}{}

\renewcommand{\section}{\@startsection{section}{1}{\z@}%
  {-16\p@ \@plus -4\p@ \@minus -4\p@}{5\p@ \@plus 4\p@ \@minus 4\p@}{\fontsize{12}{14}\fontseries{b}\selectfont}}
\renewcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
  {-16\p@ \@plus -4\p@ \@minus -4\p@}{8\p@ \@plus 4\p@ \@minus 4\p@}{\fontsize{10}{12}\fontseries{b}\selectfont}}

\setlength{\abovecaptionskip}{4pt}%Abstand vor der Bildunterschrift
\setlength{\belowcaptionskip}{0pt}%Abstand nach der Bildunterschrift
\setlength{\intextsep}{6pt}%Abstand nach der Grafik
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  {%\fontsize{5}{6}\selectfont
   \sbox\@tempboxa{\small#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi}
  \vskip\belowcaptionskip}

\def\fps@figure{htbp}
\def\fnum@figure{\figurename~\thefigure}
\def\@floatboxreset{%
        \reset@font
        \small
        \@setnobreak
        \@setminipage
}
\setcounter{topnumber}{10}% maximale Anzahl gleitender Objekte am Seitenanfang
\setcounter{bottomnumber}{10}% maximale Anzahl gleitender Objekte am Seitenende
\renewcommand{\topfraction}{1.0}% Anteil den gleitende Objekte am Seitenanfang einnehmen dürfen
\renewcommand{\bottomfraction}{1.0}% Anteil den gleitende Objekte am Seitenende einnehmen dürfen

\def\fps@table{htbp}
\def\fnum@table{\tablename~\thetable}
\renewcommand{\arraystretch}{1.1}%Abstand zu Linien in Tabelle
\renewenvironment{table}
               {\setlength\abovecaptionskip{6\p@}%
                \setlength\belowcaptionskip{0\p@}%
                \@float{table}}
               {\end@float}
\renewenvironment{table*}
               {\setlength\abovecaptionskip{6\p@}%
                \setlength\belowcaptionskip{0\p@}%
                \@dblfloat{table}}
               {\end@dblfloat}

\setlength{\mathindent}{0.5cm}

\RequirePackage{verbatim}
\def\verbatim@processline{\hskip0.5cm\the\verbatim@line\par}

\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width 5cm
  \kern2.6\p@}
  \newdimen\fnindent
  \fnindent0.18cm
\long\def\@makefntext#1{%
    \parindent \fnindent%
    \leftskip \fnindent% Einrückung vor der footnotemark
    \noindent
    \llap{\hb@xt@0.10cm{\hss\@makefnmark\ }}\ignorespaces#1}

\setlength{\parindent}{0pt}
\setlength{\parskip}{8pt}

\renewcommand*\itemize{%
  \ifnum \@itemdepth >\thr@@\@toodeep\else
   \setlength{\labelsep}{0.70cm}%Abstand zum Aufzählungspunkt
    \advance\@itemdepth\@ne
    \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
    \expandafter
    \list
      \csname\@itemitem\endcsname
      {\def\makelabel##1{\hss\llap{##1}}%
       \setlength{\itemsep}{8pt}%
       \setlength{\parsep}{-2pt}}%
       %\setlength{\itemindent}{0.5cm}
  \fi}

  % Nummierierte Aufzählung
  \renewcommand{\labelenumii}{\alph{enumii})}
  \renewcommand*\enumerate{%
  \ifnum \@enumdepth >\thr@@
      \@toodeep
    \else
\setlength{\labelsep}{0.70cm}%Abstand zur Aufzählungsnummer
      \advance\@enumdepth \@ne
      \edef\@enumctr{enum\romannumeral\the\@enumdepth}%
    \fi
    \@ifnextchar[{\@enumlabel@{\@enumerate@}[}{\@enumerate@}}
  \def\@enumerate@{%
    \expandafter\list\csname label\@enumctr\endcsname{%
      \usecounter{\@enumctr}%
      \def\makelabel##1{\hss\llap{##1}}
\setlength{\labelsep}{0.6cm} %Einrückung des Aufzählungszeichens
      \setlength{\itemsep}{8pt}%
      \setlength{\parsep}{-2pt}}
  }

\renewenvironment{thebibliography}[1]
     {\iflnienglish\selectlanguage{english}\else\selectlanguage{ngerman}\fi
      \inputencoding{latin1}
      \section*{\refname}%
      \bgroup\fontsize{9}{10}\selectfont
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist\egroup\inputencoding{utf8}}

\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{listings}
\newcommand{\andname}{}
\addto\captionsngerman{%
  \renewcommand{\andname}{und}%
  \renewcommand{\figurename}{Abb.}%
  \renewcommand{\tablename}{Tab.}%
  \renewcommand{\lstlistingname}{List.}
  \renewcommand{\refname}{Literaturverzeichnis}
}

\addto\captionsenglish{%
  \renewcommand{\andname}{and}%
  \renewcommand{\figurename}{Fig.}%
  \renewcommand{\tablename}{Tab.}%
  \renewcommand{\lstlistingname}{List.}
}

\newcommand*{\startpage}[1]{\setcounter{page}{#1}}

\newcommand*{\@booktitle}{}
\newcommand*{\booktitle}[1]{\renewcommand{\@booktitle}{#1}}

\newcommand*{\@editor}{}
\newcommand*{\editor}[1]{\renewcommand{\@editor}{#1}}

\AtBeginDocument{%
   \let\@rigyear\year
   \newcommand*{\@year}{\the\@rigyear}
   \renewcommand*{\year}[1]{%
      \renewcommand{\@year}{#1}%
   }%
}%
\fancypagestyle{plain}{%
   \fancyhead{} % Löscht alle Kopfzeileneinstellungen
   \fancyhead[RO]{\small\@editor~(Hrsg.):\ \@booktitle,\linebreak Lecture Notes in Informatics (LNI), Gesellschaft für Informatik, Bonn~\@year \hspace{5pt}\thepage\hspace{0.05cm}}
   \fancyfoot{} % Löscht alle Fußzeileneinstellungen
   \renewcommand{\headrulewidth}{0.4pt} %Linie unter Kopfzeile
}

\pagestyle{fancy}
\fancyhead{} % Löscht alle Kopfzeileneinstellungen
\fancyhead[RO]{\small\@shorttitle\hspace{5pt}\thepage\hspace{0.05cm}}
\fancyhead[LE]{\hspace{0.05cm}\small\thepage\hspace{5pt}\@shortauthor}
\fancyfoot{} % Löscht alle Fußzeileneinstellungen
\renewcommand{\headrulewidth}{0.4pt} %Linie unter Kopfzeile

\RequirePackage{url}
\g@addto@macro{\UrlBreaks}{\UrlOrds}

\ifusehyperref
\RequirePackage[pdfusetitle]{hyperref}
\hypersetup{%
   bookmarks=false,%
   %%%breaklinks=true,% set by hyperref based on driver
   colorlinks=true,%
   allcolors=black,%
   pdfpagelayout=TwoPageRight,%
   pdfstartview=Fit%
}
\fi
\RequirePackage[all]{hypcap}

\def\and{\unskip\,}

\iflnienglish
   \bibliographystyle{lni}
\else
   \bibliographystyle{lnig}
\fi

\frenchspacing    % Abstand nach Satzende
\widowpenalty=10000   % Vermeidet "widows & orphans"
\clubpenalty=10000
%% 
%% Copyright (C) 2016 by Martin Sievers <martin.sievers@schoenerpublizieren.de>
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License (LPPL), either
%% version 1.3c of this license or (at your option) any later
%% version.  The latest version of this license is in the file:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% This work is "maintained" (as per LPPL maintenance status) by
%% Martin Sievers.
%% 
%% This work consists of the file  lni.dtx
%%                                 lni.ins
%%                                 README.md
%%           and the derived files lni.pdf
%%                                 lni.cls
%%                                 lni-author-template.tex
%%                                 lni.bst
%%                                 lnig.bst
%%
%% End of file `lni.cls'.

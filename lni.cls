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
    [2017/03/31 v1.0 A class for submissions to the ``Lecture Notes in Informatics'']
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
\newif\ifusecleveref
\useclevereftrue
\DeclareOption{nocleveref}{\useclevereffalse}
\newif\ifusebiblatex
\usebiblatexfalse
\DeclareOption{biblatex}{\usebiblatextrue}
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
\useshorthands*{"}
\addto\extrasenglish{\languageshorthands{ngerman}}
\RequirePackage{newtxtext}
\RequirePackage{newtxmath}
\RequirePackage[zerostyle=b,straightquotes,scaled=.9]{newtxtt}
\RequirePackage[%
   final,%
   tracking=smallcaps,%
   expansion=alltext,%
   protrusion=alltext-nott]{microtype}%
\SetTracking{encoding=*,shape=sc}{50}%
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
\RequirePackage[
  a4paper,
  total={12.6cm,19.2cm},
  includehead,
  headheight=20.39pt,
  headsep=.31cm,
  centering]
  {geometry}
\RequirePackage[autostyle]{csquotes}
\ifusebiblatex
  \RequirePackage[
    backend=biber, % UTF-8 support
    style=LNI,     % The GI style - see https://www.ctan.org/pkg/biblatex-lni
    natbib=true    % Required for \Citet
  ]{biblatex}[2016-09-15] %at least version 3.6 of biblatex is required.
  % Enable hyperlinked authors when using \citeauthor
  % Source: http://tex.stackexchange.com/a/75916/9075
  \DeclareCiteCommand{\citeauthor}%
    {\boolfalse{citetracker}%
     \boolfalse{pagetracker}%
     \usebibmacro{prenote}}%
    {\ifciteindex%
       {\indexnames{labelname}}%
       {}%
     \printtext[bibhyperref]{\printnames{labelname}}}%
    {\multicitedelim}%
    {\usebibmacro{postnote}}%
\fi%
\RequirePackage{graphicx}
\RequirePackage{grffile}
\RequirePackage{fancyhdr}
\RequirePackage{listings}
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
\def\@@author[#1]#2{\gdef\@shortauthor{{\let\footnote\@gobble%
   \def\and{\unskip,\ }#1}}\gdef\@author{#2}}
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
    \noindent\ignorespaces{\bfseries \abstractname:\ }%
}{\endquotation}
\newif\ifkeywords
\newenvironment{keywords}{\global\keywordstrue\fontsize{9}{10}\selectfont
    \noindent\ignorespaces{\bfseries Keywords:\ }}{\global\keywordsfalse}
\let\@RIGsection\section
\pretocmd\@startsection{\ifkeywords\ClassError{lni}{keywords is an environment, not a macro}{Please change \string\keywords to an environment}\keywordsfalse\fi}{}{}
\renewcommand{\section}{\@startsection{section}{1}{\z@}%
  {-16\p@ \@plus -4\p@ \@minus -4\p@}{5\p@ \@plus 4\p@ \@minus 4\p@}{\fontsize{12}{14}\fontseries{b}\selectfont}}
\renewcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
  {-16\p@ \@plus -4\p@ \@minus -4\p@}{8\p@ \@plus 4\p@ \@minus 4\p@}{\fontsize{10}{12}\fontseries{b}\selectfont}}
\setlength{\abovecaptionskip}{4pt}%Abstand vor der Bildunterschrift
\setlength{\belowcaptionskip}{0pt}%Abstand nach der Bildunterschrift
\setlength{\intextsep}{6pt}%Abstand nach der Grafik
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  {\small
   \sbox\@tempboxa{#1: #2}%
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
\renewcommand{\labelitemi}{$\bullet$}
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
  \fi}
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
   \fancyhead[RO]{\small\@editor~(Hrsg.):\ \@booktitle,\hspace{1sp}\null\linebreak%
       Lecture Notes in Informatics (LNI), Gesellschaft für Informatik, Bonn~\@year%
       \hspace{5pt}\thepage\hspace{0.05cm}}
   \fancyhead[LE]{\small\@editor~(Hrsg.):\ \@booktitle,\linebreak\hspace{0.05cm}\thepage\hspace{5pt} Lecture Notes in Informatics (LNI), Gesellschaft für Informatik, Bonn~\@year}
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
      pdfdisplaydoctitle,
      bookmarks=false,%
      colorlinks=true,%
      allcolors=black,%
      %%%pdfpagelayout=TwoPageRight,%
      pdfstartview=Fit%
   }%
\fi%
\ifusecleveref%
   \iflnienglish
     \usepackage[capitalise,nameinlink]{cleveref}
     \crefname{section}{Sect.}{Sect.}
     \Crefname{section}{Sect.}{Sect.}
   \else
     \usepackage[ngerman,nameinlink]{cleveref}
   \fi%
   \crefname{figure}{\figurename}{\figurename}
   \crefname{listing}{\lstlistingname}{\lstlistingname}
   \crefname{table}{\tablename}{\tablename}
\fi%
\RequirePackage[all]{hypcap}
\def\and{\unskip\hspace{-0.42em},\hspace{.6em}}
\ifusebiblatex
\else
   \iflnienglish
      \bibliographystyle{lni}%
   \else
      \bibliographystyle{lnig}%
   \fi%
\fi%
\renewenvironment{thebibliography}[1]
{\iflnienglish\selectlanguage{english}\else\selectlanguage{ngerman}\fi
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
   \endlist\egroup}
\frenchspacing    % Abstand nach Satzende
\widowpenalty=10000   % Vermeidet "widows & orphans"
\clubpenalty=10000
%% 
%% Copyright (C) 2016-2017 by Martin Sievers <martin.sievers@schoenerpublizieren.de>
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

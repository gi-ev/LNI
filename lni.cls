%%
%% This is file `lni.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% lni.dtx  (with options: `class')
%% --------| -----------------------------------------------------------------
%%     lni:| A class for submissions to the ``Lecture Notes in Informatics''
%%  Author:| Martin Sievers
%%   Email:| martin.sievers@schoenerpublizieren.de
%% License:| Released under the LaTeX Project Public License v1.3c or later
%%     See:| http://www.latex-project.org/lppl.txt
%% --------| -----------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{lni}
    [2024/01/08 v1.8.1 Official class for submissions to the ``Lecture Notes
    in Informatics'']
\RequirePackage{iftex}\ifluatex\else\pdfoutput=1\fi%
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
\DeclareOption{latin1}{%
   \PassOptionsToPackage{latin1}{inputenc}
   \ClassNoteNoLine{lni}{The option `latin1` will be removed from the class with the next major release}}
\DeclareOption{utf8}{%
   \PassOptionsToPackage{utf8}{inputenc}
   \ClassNoteNoLine{lni}{The option `utf8` will be removed from the class with the next major release as it is the only valid value}}
\DeclareOption{ansinew}{%
   \PassOptionsToPackage{ansinew}{inputenc}
   \ClassNoteNoLine{lni}{The option `ansinew` will be removed from the class with the next major release}}
\newif\iflnienglish
\lnienglishfalse
\DeclareOption{english}{\lnienglishtrue\@clearglobaloption{english}}
\newif\ifusehyperref
\usehyperreftrue
\DeclareOption{nohyperref}{%
   \ClassWarningNoLine{lni}{The option `nohyperref` has been deactivated and will be removed from the class with the next major release}}
\newif\ifusecleveref
\useclevereftrue
\DeclareOption{nocleveref}{\useclevereffalse}
\newif\ifusebiblatex
\usebiblatexfalse
\DeclareOption{biblatex}{\usebiblatextrue}
\newif\ifcrop
\cropfalse
\DeclareOption{crop}{\croptrue}
\newif\ifnofonts
\nofontsfalse
\DeclareOption{nofonts}{%
   \nofontstrue\autofontsfalse
   \ClassNoteNoLine{lni}{The option `nofonts` will be removed from the class with the next major release}}
\newif\ifoldfonts
\oldfontsfalse
\DeclareOption{oldfonts}{%
   \oldfontstrue\autofontsfalse
   \ClassNoteNoLine{lni}{The option `oldfonts` will be removed from the class with the next major release}}
\newif\ifautofonts
\autofontstrue
\newif\ifnorunningheads
\DeclareOption{norunningheads}{%
   \norunningheadstrue
   \ClassNoteNoLine{lni}{The option `norunningheads` will be removed from the class with the next major release}}
\newif\ifrunningheads
\DeclareOption{runningheads}{\norunningheadsfalse}
\newif\ifanonymous
\anonymousfalse
\DeclareOption{anonymous}{\anonymoustrue}
\newcommand{\anon}[2][\iflnienglish ANONYMIZED\else ANONYMISIERT\fi]{%
  \ifanonymous%
    {\color{orange}#1}%
  \else%
    #2%
  \fi}
\ExecuteOptions{utf8,norunningheads}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\PassOptionsToPackage{fleqn}{amsmath}
\LoadClass[10pt,twoside,a4paper]{article}
\ifPDFTeX
   \RequirePackage{cmap}
   \RequirePackage{inputenc}
   \RequirePackage[T1]{fontenc}
   \RequirePackage[full]{textcomp}
\fi%
\iflnienglish
   \RequirePackage[ngerman,english]{babel}
\else
   \RequirePackage[english,ngerman]{babel}
   \babelprovide[hyphenrules=ngerman-x-latest]{ngerman}
   \ClassInfo{lni}{Using latest German hyphenation patterns}%
\fi%
\useshorthands*{"}
\addto\extrasenglish{\languageshorthands{ngerman}}
\ifautofonts
   \ClassInfo{lni}{*******************************************************}
   \MessageBreak
   \ClassInfo{lni}{Checking for fonts ...}
   \ClassInfo{lni}{*******************************************************}
   \ifPDFTeX
      \IfFileExists{newtxtext.sty}
         {%
            \RequirePackage[defaultsups]{newtxtext}
            \RequirePackage{newtxmath}
            \RequirePackage[zerostyle=b,scaled=.9]{newtxtt}
            \@ifpackagelater{newtxtt}{2014/11/18}%
               {\txtt@upqtrue}%
               {\ClassWarning{lni}{You are using an old version of
                `newtxtt'.\MessageBreak
                Option `straightquotes' will not be used!}}%
         }%
         {\IfFileExists{mathptmx.sty}
            {\oldfontstrue}%
            {\nofontstrue}%
         }%
   \else%
      \IfFileExists{newtxmath.sty}
         {\RequirePackage{newtxmath}}%
         {}%
      \RequirePackage[no-math]{fontspec}
      \IfFontExistsTF{texgyretermes-regular.otf}
         {%
          \setmainfont{texgyretermes}[
             Extension = .otf,
             UprightFont = *-regular,
             BoldFont = *-bold,
             ItalicFont = *-italic,
             BoldItalicFont = *-bolditalic,
             Ligatures=TeX
             ]
         }%
         {\IfFileExists{mathptmx.sty}
            {\oldfontstrue}%
            {\nofontstrue}%
         }%
   \fi%
\fi%
\ifoldfonts
   \RequirePackage{mathptmx}
\else%
   \ifnofonts % nofonts activated
      \ClassWarning{lni}{Option `nofonts' set! I will use standard fonts
      \MessageBreak
      instead of the New TX fonts. Your document will NOT look like the
      \MessageBreak
      final result for publication. This should only be used if you have
      \MessageBreak
      no possibility to install fonts or upgrade your TeX installation!}%
   \fi%
\fi%
\ifPDFTeX
   \RequirePackage[%
      final,%
      tracking=smallcaps,%
      expansion=alltext,%
      protrusion=alltext-nott]{microtype}%
\else
   \RequirePackage[%
      final,%
      protrusion=alltext-nott]{microtype}%
   \ifluatex
      \iflnienglish
         \RequirePackage[english]{selnolig}%
      \else
         \RequirePackage[ngerman]{selnolig}%
      \fi%
   \fi%
\fi%
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
\RequirePackage{etoolbox}
\newlength{\doihoffset}
\newlength{\doivoffset}
\ifcrop
   \RequirePackage[
     paperheight=23.5cm,paperwidth=15.5cm,
     total={12.6cm,19.2cm},
     includehead,
     headheight=20.39pt,
     headsep=.31cm,
     centering,
     driver=none]
     {geometry}
   \RequirePackage[a4,center,cam,info]{crop}
   \renewcommand*\CROP@@info{{%
      \global\advance\CROP@index\@ne
      \def\x{\discretionary{}{}{\hbox{\kern.5em---\kern.5em}}}%
      \advance\paperwidth-20\p@
      \dimen@4pt
      \ifx\CROP@pagecolor\@empty
      \else
      \advance\dimen@\CROP@overlap
      \fi
      \hb@xt@\z@{%
         \hss
         \vbox to\z@{%
            \centering
            \hsize\paperwidth
            \vss
            \normalfont
            \normalsize
            \expandafter\csname\CROP@font\endcsname{%
               ``\jobname''\x
               \the\year/\the\month/\the\day\x
               \CROP@time\x
               page\kern.5em\thepage\x
               \#\the\CROP@index
               \strut
            }%
            \vskip\dimen@
         }%
         \hss
      }%
   }}%
   \setlength{\doihoffset}{1.45cm}
   \setlength{\doivoffset}{1.2cm}
\else
   \RequirePackage[
     total={12.6cm,19.2cm},
     includehead,
     headheight=20.39pt,
     headsep=.31cm,
     centering]
     {geometry}
   \setlength{\doihoffset}{4.2cm}
   \setlength{\doivoffset}{4.3cm}
\fi%
\let\oldsmall\small%
\renewcommand\small{%
   \@setfontsize\small\@ixpt{10}%
   \abovedisplayskip 8.5\p@ \@plus3\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus2\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\renewcommand\Large{\@setfontsize\Large{14}{17}}
\RequirePackage[autostyle]{csquotes}
\ifusebiblatex
  \RequirePackage[%
    backend=biber,% UTF-8 support
    date=year,
    style=LNI,    % The GI style - see https://www.ctan.org/pkg/biblatex-lni
    natbib=true   % Required for \Citet
  ]{biblatex}[2016-09-15]% at least version 3.6 of biblatex is required.
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
\RequirePackage{amsmath}
\RequirePackage{etoolbox}
\RequirePackage{graphicx}
\RequirePackage{eso-pic}
\RequirePackage{grffile}
\RequirePackage{fancyhdr}
\RequirePackage{listings}
\RequirePackage{enumitem}
\RequirePackage[hang]{footmisc}
\setlength{\footnotemargin}{1em}
\long\def\@makefntext#1{%
   \def\@makefnmark{\rlap{\normalfont\@thefnmark}}%
   \ifFN@hangfoot
      \bgroup
      \setbox\@tempboxa\hbox{%
         \ifdim\footnotemargin>0pt
            \hb@xt@\footnotemargin{\@makefnmark\hss}%
         \else
            \@makefnmark
         \fi
      }%
      \leftmargin\wd\@tempboxa
      \rightmargin\z@
      \linewidth \columnwidth
      \advance \linewidth -\leftmargin
      \parshape \@ne \leftmargin \linewidth
      \@totalleftmargin \leftmargin
      \footnotesize
      \@setpar{{\@@par}}%
      \leavevmode
      \llap{\box\@tempboxa}%
      \parskip\hangfootparskip\relax
      \parindent\hangfootparindent\relax
   \else
      \parindent1em
      \noindent
      \ifdim\footnotemargin>\z@
         \hb@xt@ \footnotemargin{\hss\@makefnmark}%
      \else
         \ifdim\footnotemargin=\z@
            \llap{\@makefnmark}%
         \else
            \llap{\hb@xt@ -\footnotemargin{\@makefnmark\hss}}%
         \fi
      \fi
   \fi
   \footnotelayout#1%
   \ifFN@hangfoot
      \par\egroup
   \fi
}
\lstset{%
   basicstyle=\ttfamily,%
   columns=fixed,%
   basewidth=.5em,%
   xleftmargin=0.5cm,%
   captionpos=b,%
   upquote}%
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
\def\@@title[#1]#2{%
   \gdef\@shorttitle{#1}\gdef\@title{#2}}
\newcommand{\subtitle}[1]{\gdef\@subtitle{#1}}
\RequirePackage{authblk}
\newcommand{\@authlisthead}{}
\newtoks\@temptokenb
\newtoks\@temptokenc
\renewcommand\Authsep{, }
\renewcommand\Authands{\iflanguage{ngerman}{ und }{, and }}
\renewcommand\Authand{\iflanguage{ngerman}{ und }{ and }}
\renewcommand{\AB@authnote}[1]{$^{\text{\mbox{\normalfont\footnotesize #1}}}$}
\renewcommand\author[4][]{%
   \ifnewaffil\addtocounter{affil}{1}%
      \edef\AB@thenote{\arabic{affil}}%
   \fi%
   \if\relax#1\relax\def\AB@note{\AB@thenote}\else\def\AB@note{#1}%
   \ifcsundef{@emailsandorcids\AB@note}{\csgdef{@emailsandorcids\AB@note}{}}{}%
   \setcounter{Maxaffil}{0}\fi
   \ifnum\value{authors}=0\def\@firstauthor{#2}\fi
   \ifnum\value{authors}>1\relax
      \@namedef{@sep\number\c@authors}{\Authsep}\fi
   \addtocounter{authors}{1}%
   \begingroup
      \let\protect\@unexpandable@protect \let\and\AB@pand
      \def\thanks{\protect\thanks}\def\footnote{\protect\footnote}%
      \@temptokena=\expandafter{\AB@authors}%
      \@temptokenb=\expandafter{\AB@authors}%
      {\def\\{\protect\\[\@affilsep]\protect\Affilfont
            \protect\AB@resetsep}%
         \xdef\AB@author{\AB@blk@and#2}%
         \ifnewaffil\gdef\AB@las{}\gdef\AB@lasx{\protect\Authand}\gdef\AB@as{}%
         \xdef\AB@authors{\the\@temptokena\AB@blk@and}%
         \else
         \xdef\AB@authors{\the\@temptokena\AB@as\AB@au@str}%
         \global\let\AB@las\AB@lasx\gdef\AB@lasx{\protect\Authands}%
         \gdef\AB@as{\Authsep}%
         \fi
         \gdef\AB@au@str{#2}}%
      \@temptokena=\expandafter{\AB@authlist}%
      \@temptokenb=\expandafter{\@authlisthead}%
      \let\\=\authorcr
      \xdef\AB@authlist{\the\@temptokena
         \protect\@nameuse{@sep\number\c@authors}%
         \protect\Authfont#2\if\relax#4\relax\else\,\orcidlink{#4}\fi\AB@authnote{\AB@note}}%
      \xdef\@authlisthead{\the\@temptokenb
         \protect\@nameuse{@sep\number\c@authors}%
         \protect\Authfont#2}%
   \endgroup
   \ifnum\value{authors}>2\relax
   \@namedef{@sep\number\c@authors}{\Authands}\fi
   \ifcsempty{@emailsandorcids\AB@note}%
   {\csgappto{@emailsandorcids\AB@note}{%
         \if\relax#3\relax\else\email{#3}\fi\if\relax#4\relax\else,\ \orcid{#4}\fi}%
   }%
   {\csgappto{@emailsandorcids\AB@note}{%
         \if\relax#3\relax\else;\ \email{#3}\fi\if\relax#4\relax\else,\ \orcid{#4}\fi}}%

   \newaffilfalse
}
\renewcommand\@author{%
   \ifx\AB@affillist\AB@empty\AB@author\else
      \ifnum\value{affil}>\value{Maxaffil}\def\rlap##1{##1}%
         \AB@authlist\AB@affillist
      \else\AB@authors%
      \fi%
   \fi%
}
\renewcommand\affil[2][]{%
   \newaffiltrue\let\AB@blk@and\AB@pand
   \if\relax#1\relax\def\AB@note{\AB@thenote}\else\def\AB@note{#1}%
   \setcounter{Maxaffil}{0}\fi%
   \begingroup
   \let\protect\@unexpandable@protect
   \def\thanks{\protect\thanks}\def\footnotetext{\protect\footnotetext}%
   \@temptokena=\expandafter{\AB@authors}%
   {\def\\{\protect\\\protect\Affilfont}\xdef\AB@temp{#2}}%
   \xdef\AB@authors{\the\@temptokena\AB@las\AB@au@str
      \protect\\[\affilsep]\protect\Affilfont\AB@temp}%
   \gdef\AB@las{}\gdef\AB@au@str{}%
   {\def\\{, \ignorespaces}\xdef\AB@temp{#2}}%
   \@temptokena=\expandafter{\AB@affillist}%
   \xdef\AB@affillist{\the\@temptokena
      \footnotetext[\AB@note]{%
         \raggedright\AB@temp\ifcsempty{@emailsandorcids\AB@note}{}{, \csuse{@emailsandorcids\AB@note}}}%
   }
   \endgroup
   \setcounter{footnote}{#1}
}
\newcommand{\authorrunning}[1]{%
   \fancyhead[LE]{\hspace{0.05cm}\oldsmall\thepage\hspace{5pt}\ifanonymous\iflnienglish Anonymized for review\else Anonymisiert für Review\fi\else#1\fi}}
\newcommand*{\email}[1]{\href{mailto:#1}{\urlstyle{same}\protect\nolinkurl{#1}}}
\newcommand*{\orcid}[1]{%
   \unskip~\orcidlink{#1}\,\href{https://orcid.org/#1}{https://orcid.org/#1}}%
\newcommand{\@lnidoi}{}
\newcommand{\lnidoi}{%
      \begingroup\catcode`\_12 \lnidoi@i}
\newcommand{\lnidoi@i}[1]{%
      \gdef\@lnidoi{#1}\endgroup}
\renewcommand\maketitle{\par%
   \begingroup
    \renewcommand\thefootnote{\@arabic\c@footnote}%
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi%
    \else
      \newpage
      \global\@topnum\z@% Prevents figures from going at top of page.
      \@maketitle
    \fi%
    \ifnorunningheads
      \thispagestyle{empty}
    \else
      \thispagestyle{plain}
    \fi%
    \@thanks
  \endgroup
  \HyXeTeX@CheckUnicode
  \HyPsd@PrerenderUnicode{\@authlisthead}%
  \ifanonymous\else\pdfstringdef\@pdfauthor{\@authlisthead}\fi%
  \HyXeTeX@CheckUnicode
  \HyPsd@PrerenderUnicode{\@title}%
  \pdfstringdef\@pdftitle{\@title}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\@subtitle\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\def\@maketitle{%
  \newpage
  \null
  \begin{center}%
  \vskip -27pt% Abstand vor dem Titel
  \raggedright% Linksbündig
  \let\footnote\thanks
    {\Large\bfseries\@title\par}%
    \ifx\@subtitle\empty\vskip 9pt\else % Abstand nach dem Titel
      \ifx\@subtitle\undefined\vskip 9pt\else
         \vskip 9pt
         {\normalsize\bfseries\@subtitle}%
         \vskip 15pt% Abstand nach dem Titel
      \fi%
    \fi%
    {\normalsize%
      \lineskip .5em%
      \ifanonymous
        \iflnienglish
          Anonymized for review\footnote{placeholder for contact information}
        \else
          Anonymisiert für Review\footnote{Platzhalter für Kontaktinformationen}
        \fi%
      \else
        \@author
      \fi%
      \par}%
    \vskip 21pt% Abstand vor dem Abstract
  \end{center}%
  \AddToShipoutPictureBG*{\AtPageLowerLeft{%
    \put(\LenToUnit{\the\doihoffset},\LenToUnit{\the\doivoffset}){%
      \ifanonymous
      \else
         \ifdefempty{\@lnidoi}%
            {}%
            {\footnotesize\href{https://doi.org/\@lnidoi}{doi:\@lnidoi}}
      \fi%
    }%
  }}%
  \par
}%
\renewenvironment*{abstract}{%
   \renewcommand{\abstractname}{Abstract}%
   \small\noindent\ignorespaces{\bfseries\abstractname:\ }%
}{\endquotation}
\newif\ifkeywords
\newenvironment{keywords}%
   {\global\keywordstrue\small%
    \def\and{\unskip,\space}%
    \vskip -2pt\noindent\ignorespaces{\bfseries Keywords:\ }}%
   {\global\keywordsfalse}
\let\@RIGsection\section
\pretocmd\@startsection{%
   \ifkeywords\ClassError{lni}%
      {keywords is an environment, not a macro}%
      {Please change \string\keywords\space to an environment}%
      \keywordsfalse%
   \fi%
}{}{}
\renewcommand{\section}{\@startsection{section}{1}{\z@}%
  {-16\p@ \@plus -4\p@ \@minus -4\p@}{5\p@ \@plus 4\p@ \@minus
  4\p@}{\large\bfseries}}
\renewcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
  {-16\p@ \@plus -4\p@ \@minus -4\p@}{8\p@ \@plus 4\p@ \@minus
  4\p@}{\normalsize\bfseries}}
\RequirePackage{caption}
\DeclareCaptionFont{oldsmall}{\oldsmall}
\captionsetup[figure]{style=base,skip=4pt,font=oldsmall}
\captionsetup[table]{style=base,skip=6pt,font=oldsmall}
\captionsetup[lstlisting]{style=base,skip=6pt,font=small}
\setlength{\intextsep}{6pt}%Abstand nach der Grafik
\def\fps@figure{htbp}
\def\fnum@figure{\figurename~\thefigure}
\def\@floatboxreset{%
        \reset@font
        \small
        \@setnobreak
        \@setminipage
}%
\setcounter{topnumber}{10}% maximale Anzahl gleitender Objekte am Seitenanfang
\setcounter{bottomnumber}{10}% maximale Anzahl gleitender Objekte am Seitenende
\renewcommand{\topfraction}{1.0}% Anteil den gleitende Objekte am Seitenanfang einnehmen dürfen
\renewcommand{\bottomfraction}{1.0}% Anteil den gleitende Objekte am Seitenende einnehmen dürfen
\def\fps@table{htbp}
\def\fnum@table{\tablename~\thetable}
\renewcommand{\arraystretch}{1.1}
\setlength{\mathindent}{0.5cm}
\RequirePackage{verbatim}
\def\verbatim@processline{\hskip0.5cm\the\verbatim@line\par}
\robustify{\footnote}
\renewcommand\footnoterule{%
  \vfill\kern-3\p@
  \hrule\@width 5cm
  \kern2.6\p@}
\setlength{\parindent}{0pt}
\setlength{\parskip}{8pt}
\setlist{topsep=0pt,itemsep=7pt,parsep=-2pt}
\setlist[itemize]{labelsep=0.70cm}%Abstand zur Aufzählungsnummer
\setlist[itemize,1]{label=$\bullet$}
\setlist[itemize,2]{topsep=9pt}
\setlist[enumerate]{labelsep=0.60cm}%Einrückung des Aufzählungszeichens
\setlist[enumerate,2]{label=\alph*),topsep=9pt}
\newcommand{\andname}{}
\addto\captionsngerman{%
  \renewcommand{\andname}{und}%
  \renewcommand{\figurename}{Abb.}%
  \renewcommand{\tablename}{Tab.}%
  \renewcommand{\lstlistingname}{List.}%
  \renewcommand{\refname}{Literaturverzeichnis}%
}%
\addto\captionsenglish{%
  \renewcommand{\andname}{and}%
  \renewcommand{\figurename}{Fig.}%
  \renewcommand{\tablename}{Tab.}%
  \renewcommand{\lstlistingname}{List.}%
  \renewcommand{\refname}{Bibliography}%
}%
\newcommand*{\startpage}[1]{\setcounter{page}{#1}}
\def\@bookshorttitle{}
\newcommand{\booktitle}{\@dblarg\@@booktitle}
\def\@@booktitle[#1]#2{\gdef\@bookshorttitle{#1}\gdef\@booktitle{#2}}
\newcommand{\booksubtitle}[1]{\gdef\@booksubtitle{#1}}
\newcommand*{\@editor}{}
\newcommand*{\editor}[1]{\renewcommand{\@editor}{#1}}
\newcommand*{\@yearofpublication}{\the\year}
\newcommand*{\yearofpublication}[1]{\renewcommand*{\@yearofpublication}{#1}}
\fancypagestyle{plain}{%
   \fancyhead{} % Löscht alle Kopfzeileneinstellungen
   \fancyhead[RO]{%
      \small\@editor~(Hrsg.):\
      \ifdefempty{\@bookshorttitle}%
         {}%
         {\@bookshorttitle,\hspace{1sp}}%
      \null\linebreak%
      Lecture Notes in Informatics (LNI), Gesellschaft für Informatik,
      Bonn~\@yearofpublication%
      \hspace{5pt}\thepage\hspace{0.05cm}%
   }%
   \fancyhead[LE]{%
      \small\@editor~(Hrsg.):\
      \ifdefempty{\@bookshorttitle}%
      {}%
      {\@bookshorttitle,\hspace{1sp}}%
      \linebreak\hspace{0.05cm}\thepage\hspace{5pt} Lecture Notes
      in Informatics (LNI), Gesellschaft für Informatik,
      Bonn~\@yearofpublication%
   }%
   \fancyfoot{}% Löscht alle Fußzeileneinstellungen
   \renewcommand{\headrulewidth}{0.4pt}% Linie unter Kopfzeile
}%
\ifnorunningheads
   \pagestyle{empty}
\else
   \pagestyle{fancy}
   \fancyhead{}% Löscht alle Kopfzeileneinstellungen
   \fancyhead[RO]{\small\@shorttitle\hspace{5pt}\thepage\hspace{0.05cm}}
   \fancyhead[LE]{\hspace{0.05cm}\small\thepage\hspace{5pt}\ifanonymous\iflnienglish Anonymized for review\else Anonymisiert für Review\fi\else\@authlisthead\fi}
   \fancyfoot{}% Löscht alle Fußzeileneinstellungen
   \renewcommand{\headrulewidth}{0.4pt} %Linie unter Kopfzeile
\fi%
\RequirePackage{url}
\g@addto@macro{\UrlBreaks}{\UrlOrds}
\RequirePackage{xspace}
\AddToHook{env/document/begin}[lni/loadhyperref]{%
   \RequirePackage[bookmarks=false]{hyperref}
   \hypersetup{%
         pdfdisplaydoctitle,%
         colorlinks=true,%
         allcolors=black,%
         pdfstartview=Fit,%
   }%
   \pdfstringdefDisableCommands{%
      \def\footnote#1{}%
   }
   \RequirePackage{orcidlink}%
   \RequirePackage[all]{hypcap}%
}%
\DeclareHookRule{env/document/begin}{lni/loadhyperref}{before}{biblatex}
\ifusecleveref%
   \AtEndPreamble{%
      \iflnienglish
        \RequirePackage[capitalise,nameinlink]{cleveref}
        \crefname{section}{Sect.}{Sect.}
        \Crefname{section}{Sect.}{Sect.}
      \else
        \RequirePackage[ngerman,nameinlink]{cleveref}
      \fi%
      \crefname{figure}{\figurename}{\figurename}
      \Crefname{figure}{\figurename}{\figurename}
      \crefname{listing}{\lstlistingname}{\lstlistingname}
      \Crefname{listing}{\lstlistingname}{\lstlistingname}
      \crefname{table}{\tablename}{\tablename}
      \Crefname{table}{\tablename}{\tablename}
   }%
\fi%
\def\and{\texorpdfstring{\unskip\hspace{-0.42em},\hspace{.6em}}{, }}%
\ifusebiblatex
\else
   \iflnienglish
      \bibliographystyle{lni}%
   \else
      \bibliographystyle{lnig}%
   \fi%
\fi%
\newcommand*{\lni@abbrv}[1]{#1\@\xspace}
\newcommand*{\lniabbrv}[2]{\gdef#1{\lni@abbrv{#2}}}
\newcommand*{\lni@initialism}[1]{\textsc{#1}\xspace}
\newcommand*{\lniinitialism}[2]{\gdef#1{\lni@initialism{#2}}}
\newcommand*{\ie}{\lni@abbrv{i.\,e.}}
\newcommand*{\eg}{\lni@abbrv{e.\,g.}}
\newcommand*{\cf}{\lni@abbrv{cf.}}
\newcommand*{\etal}{\lni@abbrv{et~al.}}
\newcommand*{\OMG}{\lni@initialism{omg}}
\newcommand*{\BPM}{\lni@initialism{bpm}}
\newcommand*{\BPMN}{\lni@initialism{bpmn}}
\newcommand*{\BPEL}{\lni@initialism{bpel}}
\newcommand*{\UML}{\lni@initialism{uml}}
\renewenvironment{thebibliography}[1]
{\iflnienglish\selectlanguage{english}\else\selectlanguage{ngerman}\fi
   \section*{\refname}%
   \bgroup\small%
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
\frenchspacing
\tolerance 1414
\hbadness 1414
\emergencystretch 1.5em
\hfuzz 0.3pt
\widowpenalty=10000
\displaywidowpenalty=10000
\clubpenalty=9999
\interfootnotelinepenalty=9999
\brokenpenalty=2000
\vfuzz \hfuzz
\raggedbottom
%% 
%% Copyright (C) 2016-2024 by Gesellschaft für Informatik e.V. (GI)
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
%%                                 CHANGELOG.md
%%           and the derived files lni.pdf
%%                                 lni.cls
%%                                 lni-author-template.tex
%%                                 lni-paper-example-de.bib
%%                                 lni-paper-example-de.tex
%%                                 lni.bst
%%                                 lnig.bst
%%
%% End of file `lni.cls'.

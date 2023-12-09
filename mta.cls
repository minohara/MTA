\NeedsTeXFormat{pLaTeX2e}
\ProvidesClass{mta}[2023/12/10 v0.1 修論概要(拓殖大学大学院情報デザイン工学専攻)]
\LoadClass[uplatex,twocolumn,a4paper,10pt]{jsarticle}
\RequirePackage[top=25mm,hmargin=15mm,bottom=20mm]{geometry}
\RequirePackage{otf}
\RequirePackage[dvipdfm]{graphicx}

\pagestyle{empty}

\renewcommand{\maketitle}{
  \ifnum \col@number=\@ne \@maketitle
  \else \twocolumn[\@maketitle]%
  \fi
  \thispagestyle{empty}\@thanks
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\p@thanks\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
%%
  \global\let\@subtitle\@empty
  \global\let\@supervisor\@empty
%%
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
%%
  \global\let\date\relax
  \global\let\and\relax
}

\newcommand{\subtitle}[1]{\def\@subtitle{#1}}
\newcommand{\etitle}[1]{\def\@etitle{#1}}
\newcommand{\esubtitle}[1]{\def\@esubtitle{#1}}
\newcommand{\major}[1]{\def\@major{#1}}
\newcommand{\supervisor}[1]{\def\@supervisor{#1}}
\newcommand{\coexaminer}[1]{\def\@coexaminer{#1}}
\subtitle{\mbox{}}
\esubtitle{}
\coexaminer{}


\def\@maketitle{%
  \vtop to 15mm {
  {\Large\bf \@title \par}%
  {\small\bf \@subtitle \par}
  }
  \vbox to 15mm {
  {\large\sf \@etitle \par}%
  {\small\sf \@esubtitle \par}
  }
  \vbox to 15mm {
  {\bf\@major 専攻 \@author, 指導教員 : \@supervisor \par}%
  \vskip 1mm%
  {\bf 副査 \@coexaminer \par}%
  }
  \vskip 5mm\par%
}%

\newcommand{\chapter}{\@startsection{section}{1}{\z@}%
   {.5\Cvs \@plus .3\Cdp \@minus .4\Cdp}%
   {.2\Cvs \@plus .2\Cdp \@minus .3\Cdp}%
   {\reset@font\normalsize\bfseries}}

\renewcommand{\section}{\@startsection{subsection}{2}{\z@}%
   {.3\Cvs \@plus .2\Cdp \@minus .3\Cdp}%
   {.3\Cdp}%
   {\reset@font\normalsize\bfseries}}

\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{\z@}%
   {\z@}%
   {\z@}%
   {\reset@font\normalsize\bfseries}}




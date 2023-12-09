\NeedsTeXFormat{pLaTeX2e}
\ProvidesClass{mta}[2023/12/10 v0.1 修論概要(拓殖大学大学院情報デザイン工学専攻)]
\LoadClass[dvipdfmx,uplatex,twocolumn,a4paper,10pt]{jsarticle}
\RequirePackage[dvipdfmx]{graphicx}
\RequirePackage[top=25mm,hmargin=15mm,bottom=20mm]{geometry}
\RequirePackage{otf}
\RequirePackage{caption}
\RequirePackage{overcite}
\RequirePackage[dvipdfmx,hidelinks]{hyperref}
\RequirePackage{pxjahyper}

\captionsetup{justification=raggedright,singlelinecheck=false,belowskip=-5pt}
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

\setcounter{topnumber}{4} % 頁上部の最大float数
\setcounter{bottomnumber}{2} % 頁下部の 〃 
\setcounter{totalnumber}{6} % １頁の 〃 
\setcounter{dbltopnumber}{4} % twocolumn時の頁上部の最大float数 
\renewcommand\topfraction{1} % 頁上部のfloatで占める最大の割合 
\renewcommand\bottomfraction{1} % 頁下部の 〃 
\renewcommand\textfraction{0} % １頁のテキスト部の占める最小割合 
\renewcommand\floatpagefraction{.3} % floatが単独頁になるときの最小割合 
\renewcommand\dbltopfraction{1} % twocolumn時の topfraction 
\renewcommand\dblfloatpagefraction{1} % twocolumn時の floatpagefraction

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
  {\Large\sf \@title \par}%
  {\small\sf \@subtitle \par}
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
   {.5\Cvs \@plus .5\Cdp \@minus .2\Cdp}%
   {.5\Cvs \@plus .5\Cdp \@minus .2\Cdp}%
   {\reset@font\normalsize\sffamily}}

\renewcommand{\section}{\@startsection{subsection}{2}{\z@}%
  {.0001\Cvs \@plus .5\Cdp \@minus .2\Cdp}%
  {.0001\Cvs}
  {\reset@font\normalsize\sffamily}}

\renewcommand{\subsection}{\@startsection{subsubsection}{3}{\z@}%
  {\z@}
  {\z@}
  {\reset@font\normalsize\sffamily}}

\renewcommand{\subsubsection}{\@startsection{paragraph}{4}{\z@}%
  {\z@}
  {\z@}
  {\reset@font\normalsize\sffamily}}

\newcommand{\figref}[1]{図\ref{#1}}
\newcommand{\tabref}[1]{表\ref{#1}}

\renewcommand\citeform[1]{#1)}
\def\@biblabel#1{#1)}

\def\：{：}


\def\urlj#1{%
   \normalfont \nobreak{\url{#1}}\nobreak}
   
\def\urle#1{%
   \normalfont \nobreak{\url{#1}}\nobreak}
   
\def\refdatej#1{\normalfont （参照{#1}）\<}
\def\refdatee#1{\normalfont (accessed {#1})}
   
\def\doi#1{\normalfont DOI: #1}
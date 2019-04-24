%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Medium Length Professional CV - RESUME CLASS FILE
%
% This template has been downloaded from:
% http://www.LaTeXTemplates.com
%
% This class file defines the structure and design of the template.
%
% Original header:
% Copyright (C) 2019 by Hasan Doha
%
% Copying and distribution of this file, with or without modification,
% are permitted in any medium without royalty provided the copyright
% notice and this notice are preserved. This file is offered as-is,
% without any warranty.
%
% Created by Hasan Doha
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{HD_resume}[2019/04/21 v0.9 HD Resume class]

\LoadClass[11pt,letterpaper]{article} % Font size and paper type








\usepackage{fullpage}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage[T1]{fontenc}
\usepackage{fontawesome}
\usepackage{fancyhdr}
\usepackage{lastpage}

\usepackage{hyperref}
\hypersetup{%
    colorlinks=true,
    linkcolor=black,
    urlcolor=black,
}

\usepackage{times}
\usepackage{enumitem}

\usepackage[
    backend=biber,
    maxbibnames=10,
    style=numeric,
    sorting=ydnt,
    defernumbers
]{biblatex}

\setlength\bibitemsep{0.5\baselineskip}

\addbibresource{pub.bib}
%\addbibresource[label=journal]{pub-journal.bib}
%\addbibresource[label=conference]{pub-conference.bib}
%\AtBeginBibliography{\footnotesize}

\makeatletter
\patchcmd{\blx@printbibliography}
  {\blx@bibliography\blx@tempa}
  {\setcounter{bibitemcnt}{0}%
   \begingroup
   \def\do##1{\stepcounter{bibitemcnt}}%
   \dolistloop{\blx@tempa}%
   \endgroup
   \blx@bibliography\blx@tempa}{}{}
\makeatother

\newcounter{bibitemcnt}
\newrobustcmd*{\mkbibdescending}[1]{%
  \number\numexpr\value{bibitemcnt}+1-#1\relax}
\DeclareFieldFormat{labelnumber}{\mkbibdescending{#1}}
\DeclareFieldFormat{labelnumberwidth}{\mkbibbrackets{#1}}

\defbibenvironment{bibliography}
  {\list
     {\printtext[labelnumberwidth]{\printfield{labelprefix}.\printfield{labelnumber}}}
     {}%
      \renewcommand*{\makelabel}[1]{\hss##1}}
  {\endlist}
  {\item}


\AtBeginBibliography{\small}

% reduce reference spacing
\renewcommand*{\bibfont}{\normalfont\normalsize\linespread{0.3}\selectfont}

% DEFINITIONS FOR RESUME

%\textheight=10in
\pagestyle{fancy}
\raggedright
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}

\setlength{\hoffset}{-2pt}
\setlength{\footskip}{20pt}

\def\bull{\vrule height 0.8ex width .7ex depth -.1ex }

\newcommand{\contact}[3]{
\vspace*{5pt}
\begin{center}
{\huge \scshape {#1}}\\
\vspace{3pt}
#2
\vspace{2pt}
#3
\end{center}
\vspace*{-8pt}
}

\newcommand{\header}[1]{{
\hspace*{-15pt}\vspace*{6pt} \textbf{\textsc{\large{#1}}}} \vspace*{-6pt}
\lineunder
}

\newcommand{\lineunder}{
\vspace*{-8pt} \\ \hspace*{-15pt}
\hrulefill \\
}

\newcommand{\content}{
\vspace*{2pt}%
}

\newcommand{\college}[5]{\vspace*{2pt}%
\textbf{#1} \labelitemi #2 \labelitemi #3 \hfill #4 \\ #5
\vspace*{5pt}
}

\newcommand{\school}[4]{
\textbf{#1} \labelitemi #2 \hfill #3 \\ #4 \vspace*{5pt}
}

\newcommand{\employer}[4]{{
\vspace*{2pt}%
\textbf{#1} #2 \hfill #3\\ #4 \vspace*{2pt}}
}

\newcommand{\project}[4]{{
\vspace*{2pt}%
\textbf{#1} #2 \hfill #3\\ \textit{#4} \vspace*{2pt}}
}

\renewcommand{\labelitemi}{
$\vcenter{\hbox{\tiny$\bullet$}}$\hspace*{3pt}
}

\renewcommand{\labelitemii}{
$\vcenter{\hbox{\tiny$\bullet$}}$\hspace*{-3pt}
}

\newenvironment{bullet-list-major}{
\begin{list}{\labelitemii}{\setlength\leftmargin{3pt}
\topsep 0pt \itemsep -2pt}}{\vspace*{4pt}\end{list}
}

\newenvironment{bullet-list-minor}{
\begin{list}{\labelitemii}{\setlength\leftmargin{15pt}
\topsep 0pt \itemsep -2pt}}{\vspace*{4pt}\end{list}
}

\renewcommand*{\mkbibnamegiven}[1]{%
\ifitemannotation{highlight}
{\textbf{#1}}
{#1}}

\renewcommand*{\mkbibnamefamily}[1]{%
\ifitemannotation{highlight}
{\textbf{#1}}
{#1}}

%\cfoot{
%Last updated: April 24, 2019
%}

\rfoot{
Page $\thepage\hspace*{3pt}\vert\hspace*{3pt}\pageref{LastPage}$
}

% END RESUME DEFINITIONS













% \usepackage[parfill]{parskip} % Remove paragraph indentation
% \usepackage{array} % Required for boldface (\bf and \bfseries) tabular columns
% \usepackage{ifthen} % Required for ifthenelse statements

% \pagestyle{empty} % Suppress page numbers

%----------------------------------------------------------------------------------------
%	HEADINGS COMMANDS: Commands for printing name and address
%----------------------------------------------------------------------------------------

% \def \name#1{\def\@name{#1}} % Defines the \name command to set name
% \def \@name {} % Sets \@name to empty by default

% \def \addressSep {$\diamond$} % Set default address separator to a diamond

% One, two or three address lines can be specified
% \let \@addressone \relax
% \let \@addresstwo \relax
% \let \@addressthree \relax

% \address command can be used to set the first, second, and third address (last 2 optional)
% \def \address #1{
%   \@ifundefined{@addresstwo}{
%     \def \@addresstwo {#1}
%   }{
%   \@ifundefined{@addressthree}{
%   \def \@addressthree {#1}
%   }{
%      \def \@addressone {#1}
%   }}
% }

% \printaddress is used to style an address line (given as input)
% \def \printaddress #1{
%   \begingroup
%     \def \\ {\addressSep\ }
%     \centerline{#1}
%   \endgroup
%   \par
%   \addressskip
% }

% \printname is used to print the name as a page header
% \def \printname {
%   \begingroup
%     \hfil{\MakeUppercase{\namesize\bf \@name}}\hfil
%     \nameskip\break
%   \endgroup
% }

%----------------------------------------------------------------------------------------
%	PRINT THE HEADING LINES
%----------------------------------------------------------------------------------------

% \let\ori@document=\document
% \renewcommand{\document}{
%   \ori@document  % Begin document
%   \printname % Print the name specified with \name
%   \@ifundefined{@addressone}{}{ % Print the first address if specified
%     \printaddress{\@addressone}}
%   \@ifundefined{@addresstwo}{}{ % Print the second address if specified
%     \printaddress{\@addresstwo}}
%      \@ifundefined{@addressthree}{}{ % Print the third address if specified
%     \printaddress{\@addressthree}}
% }

%----------------------------------------------------------------------------------------
%	SECTION FORMATTING
%----------------------------------------------------------------------------------------

% Defines the rSection environment for the large sections within the CV
% \newenvironment{rSection}[1]{ % 1 input argument - section name
%   \sectionskip
%   \MakeUppercase{\bf #1} % Section title
%   \sectionlineskip
%   \hrule % Horizontal line
%   \begin{list}{}{ % List for each individual item in the section
%     \setlength{\leftmargin}{1.5em} % Margin within the section
%   }
%   \item[]
% }{
%   \end{list}
% }

%----------------------------------------------------------------------------------------
%	WORK EXPERIENCE FORMATTING
%----------------------------------------------------------------------------------------

% \newenvironment{rSubsection}[4]{ % 4 input arguments - company name, year(s) employed, job title and location
%  {\bf #1} \hfill {#2} % Bold company name and date on the right
%  \ifthenelse{\equal{#3}{}}{}{ % If the third argument is not specified, don't print the job title and location line
%   \\
%   {\em #3} \hfill {\em #4} % Italic job title and location
%   }\smallskip
%   \begin{list}{$\cdot$}{\leftmargin=0em} % \cdot used for bullets, no indentation
%    \itemsep -0.5em \vspace{-0.5em} % Compress items in list together for aesthetics
%   }{
%   \end{list}
%   \vspace{0.5em} % Some space after the list of bullet points
% }

% The below commands define the whitespace after certain things in the document - they can be \smallskip, \medskip or \bigskip
% \def\namesize{\huge} % Size of the name at the top of the document
% \def\addressskip{\smallskip} % The space between the two address (or phone/email) lines
% \def\sectionlineskip{\medskip} % The space above the horizontal line for each section
% \def\nameskip{\bigskip} % The space after your name at the top
% \def\sectionskip{\medskip} % The space after the heading section

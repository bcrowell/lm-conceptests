\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{conceptests}
\LoadClass[20pt]{extarticle} % class allows large font size, http://tex.stackexchange.com/questions/5339/how-to-specify-font-size-less-than-10pt-or-more-than-12pt

\usepackage[letterpaper, landscape, margin=1in]{geometry}


\RequirePackage{amssymb}
\RequirePackage[leqno]{amsmath}
\RequirePackage{wrapfig}
\usepackage{graphicx}
\RequirePackage{hyperref}
\hypersetup{
    colorlinks,
    allcolors=blue
}

\newcounter{probctr}
\setcounter{probctr}{0}
\newenvironment{qu}[1][]
	{\par\refstepcounter{probctr}\addcontentsline{toc}{subsection}{\theprobctr{}. #1}}
	{\par\vfill\pagebreak}
\newcommand{\num}{\noindent\textbf{\theprobctr}. }

\newcommand{\credit}[1]{\vfill\tiny [Based on a question by #1.]}

% \wrap{nlines}{width}{fig}
% simplified version of the command in exams.tex, no caption
\newcommand{\wrap}[3]{ %
        \begin{wrapfigure}[#1]{r}{#2}\includegraphics{#3}\\
        \end{wrapfigure}%
}

\AtBeginDocument{
  \sloppy
  \DeclareGraphicsExtensions{.pdf,.jpg,.png}
}
\newcommand{\mytilde}[1]{\widetilde{#1}}
\newcommand{\mytildewide}[1]{\stackrel{\sim}{\smash{#1}\rule{0pt}{1.1ex}}}
%      ... for use with wide characters like W
%      https://tex.stackexchange.com/questions/471312/large-tilde-over-math-symbol-with-appropriate-horizontal-positioning

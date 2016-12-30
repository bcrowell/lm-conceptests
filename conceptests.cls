\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{conceptests}
\LoadClass[20pt]{extarticle} % class allows large font size, http://tex.stackexchange.com/questions/5339/how-to-specify-font-size-less-than-10pt-or-more-than-12pt


\usepackage[letterpaper, landscape, margin=1in]{geometry}


\RequirePackage{amssymb}
\RequirePackage[leqno]{amsmath}
\RequirePackage{wrapfig}
\usepackage{graphicx}

\newcounter{probctr}
\setcounter{probctr}{0}
\newenvironment{qu}
	{\par\refstepcounter{probctr}}
	{\par\vfill\pagebreak}
\newcommand{\num}{\noindent\textbf{\theprobctr}. }

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

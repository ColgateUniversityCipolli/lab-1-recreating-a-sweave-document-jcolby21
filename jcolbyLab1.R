\documentclass{article}
\usepackage{amsmath} 
\usepackage{amsfonts} #Math font
\usepackage{graphicx} #For including graphics
\usepackage{hyperref} #For Hyperlinks
\usepackage[shortlabels]{enumitem} #For enumerated lists with labels specified
                                  #We had to run tlmgr_install("enumitem") in R
\hypersetup{colorlinks = true,citecolor=black} #set citations to have black (not green) color
\usepackage{natbib}        #For the bibliography
\setlength{\bibsep}{0pt plus 0.3ex}
\bibliographystyle{apalike} #For the bibliography
\usepackage[margin=0.50in]{geometry}
\usepackage{float}
\usepackage{multicol}

#fix for figures
\usepackage{caption}
\newenvironment{Figure}
  {\par\medskip\noindent\minipage{\linewidth}}
  {\endminipage\par\medskip}
\begin{document}
\vspace{-1in}
\title{Lab XX -- MATH 240 -- Computational Statistics}

\author{
  First Author \\
  Affiliation  \\
  Department  \\
  {\tt email@domain}
}

\date{}


\end{document}


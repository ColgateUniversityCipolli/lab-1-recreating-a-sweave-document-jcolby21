\documentclass{article}
\usepackage{amsmath} 
\usepackage{amsfonts} %Math font
\usepackage{graphicx} %For including graphics
\usepackage{hyperref} %For Hyperlinks
\usepackage[shortlabels]{enumitem} %For enumerated lists with labels specified
%We had to run tlmgr_install("enumitem") in R
\hypersetup{colorlinks = true,citecolor=black} %set citations to have black (not green) color
\usepackage{natbib}        %For the bibliography
\setlength{\bibsep}{0pt plus 0.3ex}
\bibliographystyle{apalike} %For the bibliography
\usepackage[margin=0.50in]{geometry}
\usepackage{float}
\usepackage{multicol}

%fix for figures
\usepackage{caption}
\newenvironment{Figure}
{\par\medskip\noindent\minipage{\linewidth}}
{\endminipage\par\medskip}

\begin{document}

\vspace{-1in}
\title{Lab 1 -- MATH 240 -- Computational Statistics}

\author{
  Jackson Colby \\
  Colgate University  \\
  Applied Mathematics  \\
  {\tt jcolby@colgate.edu} }

\date{}

\maketitle

\begin{multicols}{2}
\begin{abstract}
This document provides a basic template for the 2-page labs we will complete each week. Here, you should provide a succinct summary about what you did and why it might be helpful.
\end{abstract}

\textbf{Keywords:} What topics does the lab cover with respect
to class?
  
  
  
  \section{Instructions}
For this lab, you will
\begin{enumerate}[1.]\itemsep0em
\item Install \href{https://cran.rstudio.com/}{R} and \href{https://posit.co/download/rstudio-desktop/}{RStudio}
\item Install tinytex (if necessary): \\ \textbf{install.packages("tinytex")}
\item Create a Github account \href{ https://github.com/}{here}, and email me your username.
\item Install \href{https://github.com/apps/desktop}{Github Desktop} 
\item Accept the Lab 1 Document \href{https://github.com/login?client_id=Iv1.a84bfcae38835499&return_to=%2Flogin%2Foauth%2Fauthorize%3Fclient_id%3DIv1.a84bfcae38835499%26redirect_uri%3Dhttps%253A%252F%252Fclassroom.github.com%252Fauth%252Fgithub%252Fcallback%26response_type%3Dcode%26state%3D3567fc1aae917e5c0b1e3adfdc1ef646081add6f7014be60}{here}
\item Recreate this document (except put your name/info at
                              the top)to get used to writing in \LaTeX~ and to see the
types of things we can do when creating a document
to convey statistical information.Make sure to commit
and push your work using GitHub desktop as you finish
each section.
\end{enumerate}

\textbf{Remark:} You will find the class Sweave cheat sheet to be
\emph{incredibly}(\verb|\emph{incredibly}|)helpful.

\section{Word Processing Tasks}

\subsection{Centering Text}

\begin{center}
We can center text in Sweave.
\end{center}

\subsection{Bolds, Italics, and Underlining}
We can \textbf{bold}, \textit{italicize}, \underline{underline}, and \emph{emphasize} text in Sweave. 

Note, I did a column break here so that the list wasn’t
broken a cross columns.
\columnbreak

\subsection{Lists, and Numbered Lists}
We can write an unordered list in Sweave.
\begin{itemize}\itemsep0em
\item first item
\item second item
\item third item
\end{itemize}
We can write an numbered list in Sweave.
\begin{enumerate}[1.]\itemsep0em
\item first item
\item second item
\item third item
\end{enumerate}
We can write a lettered list in Sweave.
\begin{enumerate}[a.]\itemsep0em
\item first item
\item second item
\item third item
\end{enumerate}

\subsection{Submissions}
This part of the midterm is due Sunday November 14 by 5p.
I will not accept late submissions. Note that you may use
this template to help build your introduction and methods
sections,and you can use the work you did as a group during
the datathon. Still, I expect this submission to be your own
summary and extension of that work without collaboration.

\subsection{Typing Mathematical Equations}
We can write a one line equation that is centered like this
\[\widehat{y_i} = \beta_0 + \beta_1 x_{1i}+ \beta_2 x_{2i} +\beta_3 x_{1i} x_{2i} + \epsilon_i.\]
This can be written in the text, as $\widehat{y_i} = \beta_0 + \beta_1 x_{1i}+ \beta_2 x_{2i} +\beta_3 x_{1i} x_{2i} + \epsilon_i$ using as well.

When we need to show multiple steps,we can create a
multi-line equation that is centered like this:
  \begin{align*}
8(x-5)+x=9(x-5)+5\\
8x-40+x=9x-45+5 \tag{Distributing}\\
9x-40=9x-40 \tag{Combining like terms}\\
9x=9x \tag{Adding 40 to both sides}\\
x=x \tag{Dividing both sides by 9}
\end{align*}
The equality holds for any x.

Note, I did a page break here so that the next section
started on a clean page.
\pagebreak

\subsection{Running R code}
Code chunks can be entered into Sweave; e.g., here are some
comments.
<< >>=
  # R code goes here
  # Output is automatically printed in the pdf
  @
  
  Below, you can see that we can do algebra with \texttt{R}.

<< >>=
  8*(9-5)+9 # 8(x-5) + x for x=9
@
  
  Below,we show we can produced the code without evaluating it.
<<eval=FALSE, >>=
  8*(9-5)+9 # 8(x-5) + x for x=9
@
  Alternatively, we can produced the output without the code.
<<echo=FALSE, >>=
  8*(9-5)+9 # 8(x-5) + x for x=9
@
  We can also call object values from R directly.
<< >>=
  result <- 8*(9-5)+ 9 #8(x-5)+x for x=9
result.with.error <- result + rnorm(1,mean=0,sd =0.1)
result.with.error
@
  The result is \Sexpr{result.with.error}. Note that I did not type the
result, but I used the \verb|\Sexpr{}| command.


\subsection{Plotting}
We can also plot with \texttt{R}.
<<plot1, eval=FALSE, >>=
  #Plot a histogram of random normally distributed data
  hist(rexp(100))
@
  
  \begin{figure}[H]
\begin{center}
%This code is evaluated, but not printed
%warning=FALSE and message=FALSE ensure no text is returned as a by product of
%printing; this would cause an error in that plot+text is returned instead of
%just the plot
<<echo=FALSE, warning=FALSE, message=FALSE, fig.dim=c(5,3.5)>>=
  <<plot1>>
  @
  \caption{A histogram of random exponentially distributed data, $n=100$.}
\label{plot1} %we can now reference plot1
\end{center}
\end{figure}

\columnbreak

\subsection{Tables}

Below,we load and take a peek at some data about the death
rates per 1000 in Virginia in 1940 (\cite{molyneaux1947differences}).

<< >>=
  data("VADeaths")
head(VADeaths) # Take a peek of the data
@
  
  If we want to print this nicely, we can do so using the
xtable package \citep{xtable}, which we can reference
using the label (Table \textcolor{red}{1}).

<< >>=
  library(xtable)
sleep.table<-xtable(VADeaths,
                    label="VADeaths.tab",
                    caption="Death Rates per 1000 in Virginia (1940).")
@
  
  <<results="asis", echo=FALSE>>=
  
  print(sleep.table,
        table.placement = "H", include.rownames=FALSE, size = "small")
@
  
  \begin{tiny}
\bibliography{bib}
\end{tiny}

\pagebreak

\end{multicols}

\section{Appendix}
Below is a table from a paper I’m currently working on. Without the analysis object in \texttt{R}, I have to create this table myself.


\begin{table}[H]
\begin{center}
\begin{tabular}{ l  r  r  r  r  r }\hline
Term & SS Type (III) & df & F & p-value & e \\\hline
(Intercept) & 4.95 & 1.00 & 5.37 & 0.0209 & \\
White-Poor (Z) & 3.17 & 1.00 & 3.44 & 0.0642 & 0.02 \\
Zero-Sum (Z) & 17.96 & 1.00 & 19.48 & <0.0001 & 0.03 \\
Education (Z) & 0.39 & 1.00 & 0.42 & 0.5161 & 0.00 \\
Income (Z) & 0.16 & 1.00 & 0.17 & 0.6817 & 0.00 \\
Democrat & 9.60 & 1.00 & 10.42 & 0.0013 & 0.02 \\
Black-Poor (Z) & 1.92 & 1.00 & 2.08 & 0.1496 & 0.00 \\
White-Poor(Z)×Zero-Sum(Z) & 7.96 & 1.00 & 8.63 & 0.0034 & 0.01 \\
Residuals & 506.92 & 550.00 & & & \\\hline
\end{tabular}
\end{center}
\end{table}
\begin{center}
Table 2: ANOVA table for Case Study I.
\end{center}

The \texttt{palmerpenguins} package for \texttt{R} \citep{palmerpenguins} provides data on adult for aging penguins near Palmer Station, Antarctica. Figure \textcolor{red}{2} is too big to fit nicely in our column-based-template above, so I’ve placed it here in the abstract by saving it and presenting it scaled to 0.75.


<<plot3, >>=
  library(palmerpenguins)
pdf("figure/penguins.pdf",width= 8, height=5)
plot(penguins)
dev.off()
@
  \begin{figure}[H]
\begin{center}
\includegraphics[scale=0.8]{figure/penguins.pdf}
\caption{Data on adult for aging penguins near Palmer Station, Antarctica.}
\label{plot3}
\end{center}
\end{figure} 

\end{document}

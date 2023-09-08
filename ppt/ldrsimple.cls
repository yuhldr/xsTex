\ProvidesClass{ldrsimple}[2023/05/29 v0.02 yuh]
\NeedsTeXFormat{LaTeX2e}

\LoadClass{ctexbeamer}

% \usepackage[utf8]{inputenc}

% 分步动画
\RequirePackage{arev}

% 数学
\RequirePackage{amsmath}
% \RequirePackage{amsfonts}
% \RequirePackage{amssymb}
\RequirePackage{mathrsfs}

% 公式希腊字母Times New Roman 字体，冲突
\RequirePackage{mathptmx}
% \RequirePackage{newtxmath}


% 图
\RequirePackage{graphicx}
\graphicspath{{images/}{figures/}{../figures/}{/usr/local/texlive/texmf-local/tex/latex/yuh/figures/}}


% 图片复杂排版，可以每个图自定义标题
\usepackage{subfigure}
\usepackage{float}


% 三线表格
\RequirePackage{tabularx}
\RequirePackage{booktabs}



%============================ 我自己用的一些小命令 =========%
% 

% 表格文字居中，其实就是相当于表格合并
% 用法 \tabincell{c}{物理//量//单位}
\newcommand{\tabincell}[2]{ \begin{tabular}{ #1 } #2 \end{tabular}}


% 物理单位埃，已经加了 $ $， 不要再放在$$环境里面
\newcommand{\angstrom}{
  \mathring{\text{A}}
}

\RequirePackage[backend=bibtex, isbn=false, url=false]{biblatex}
\setbeamerfont{footnote}{size=\tiny}
\addbibresource{database.bib}



%============================ 我自己用的一些小命令 =========%



% 这个好简洁

% Frankfurt Madrid
\usetheme{Madrid}
\usecolortheme{default}
\useinnertheme{circles}

\definecolor{Logo1}{rgb}{0.208, 0.2865, 0.373}
\definecolor{Logo2}{rgb}{0.000, 0.674, 0.863}


% 复杂的是人。。。。
% 自定义单个界面
\defbeamertemplate*{frametitle}{}{%
  \nointerlineskip%
  \setbeamercolor{titlebar}{fg=white,bg=Logo1}%

  \begin{beamercolorbox}[wd=\paperwidth, ht=0.75cm]{titlebar}
    \strut\hskip 12pt \raisebox{1mm}{\zihao{3}\insertframetitle}\strut
    \hfill
    \includegraphics[width=2.8cm]{lzu_logo_w}
  \end{beamercolorbox}
}

\setbeamercolor*{palette primary}{bg=Logo1, fg=white}
\setbeamercolor*{palette secondary}{bg=Logo2, fg=white}
\setbeamercolor*{palette tertiary}{bg=white, fg=Logo1}
\setbeamercolor*{palette quaternary}{bg=Logo1, fg=white}
% itemize, enumerate, etc
\setbeamercolor{structure}{fg=Logo1}
% TOC sections
\setbeamercolor{section in toc}{fg=Logo1}
\setbeamercolor*{title in head/foot}{bg=Logo2,fg=white}


\RequirePackage{fontspec}
% 设置中文字体
\setCJKmainfont{KaiTi}
\setCJKsansfont{KaiTi}
\setCJKmonofont{KaiTi}
% 设置英文字体
% https://fonts.google.com/specimen/Andika+New+Basic
% \setmainfont{Andika New Basic}
% \setsansfont{Andika New Basic}
\setmainfont{Times New Roman}
\setsansfont{Times New Roman}
% \setmonofont{Andika New Basic}
% \setmonofont{Cascadia Code}
% 代码字体
% https://fonts.google.com/specimen/Ubuntu+Mono
% \setmonofont{Ubuntu Mono}
\setmonofont{Times New Roman}



%------------------------------------------------------------
%目录设置

\AtBeginSection[]
{
  \begin{frame}
    \frametitle{目录}
    \tableofcontents[currentsection]
  \end{frame}
}
%------------------------------------------------------------



% \logo{\includegraphics[height=1cm]{lzu_logo.png}}
\titlegraphic{\includegraphics[height=1.5cm]{lzu_logo.png}}

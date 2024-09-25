\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{LZUThesis}[2024/09/25 V1.0.0.2024 Thesis for LZUer By yuhldr]
\LoadClass[12pt, a4paper, UTF8, openany,oneside]{ctexbook}

% 部分内容参考了https://github.com/suchot/LZUThesis2017，
% - 适配了2021最新的毕业论文要求：http://jwc.lzu.edu.cn/lzupage/2021/02/25/N20210225145827.html
% - 适配了2022最新的毕业论文要求：http://jwc.lzu.edu.cn/lzupage/2023/03/06/N20230306160525.html
% - 2023同2022

%============================ 一些章节的配置文件 =========%
%%
%% the chapter title format
%%
%正文结构，分别以“第一章”、“1”、“1.1”、“1.1.1”….等树层次格式依次标出。
%章的编号居中，字体为黑体，三号，加粗，居中，单倍行距，段前24磅，段后18磅，如“第一章”；
%节的编号置顶格，按顺序分层，如“1”，“1.1”，“1.1.1”层次，以少为宜，编号与标题之间空1个字符间隙，如“1.1 本科生资料使用”、“1.1.1 本科生数据分析”，字体依次为二级标题黑体，四号，顶左，单倍行距，段前24磅，段后6磅；
%三级标题黑体，小四号，首行缩进2个汉字符，单倍行距，段前12磅，段后6磅。各层次标题用阿拉伯数字连续编号，数字之间用小圆点“.”相隔。
%正文另起一行。正文：宋体，小四（英文用Times New Roman字体，12磅），两端对齐，段落首行左缩进2个汉字符，行间距为固定值20磅，段前段后0磅。
%
%\CTEXsetup[format+={\sffamily\bfseries\small}]{chapter}
\def\CTEX@chapter@nameformat{\bfseries\heiti\zihao{3}} % 应该是加粗（黑体加粗）
\def\CTEX@chapter@titleformat{\bfseries\heiti\zihao{3}} % 应该是加粗（黑体加粗）
\def\CTEX@chapter@beforeskip{24pt}
\def\CTEX@chapter@afterskip{18pt}
%\def\CTEX@chapter@titleformat{\bfseries\heiti\fontspec{Times New Roman}\zihao{3}}
%
%%
%% the section title format
%% 二级标题黑体，四号，顶左，单倍行距，段前24磅，段后6磅
\def\CTEX@section@format{\bfseries\songti\zihao{4}}
\def\CTEX@section@beforeskip{24pt}
\def\CTEX@section@afterskip{6pt}
%\def\CTEX@section@beforeskip{-3ex \@plus -1ex \@minus -.2ex}
%\def\CTEX@section@afterskip{1.0ex \@plus .2ex}
%%
%% the subsection title format
%% 三级标题黑体，小四号，首行缩进2个汉字符，单倍行距，段前12磅，段后6磅。
\def\CTEX@subsection@format{\bfseries\songti\zihao{-4}}
% \def\CTEX@subsection@indent{2\ccwd}
\def\CTEX@subsection@beforeskip{12pt}
\def\CTEX@subsection@afterskip{6pt}
%%
%% the subsubsection title format
%%
\def\CTEX@subsubsection@format{\heiti\zihao{-4}}
\def\CTEX@subsubsection@indent{2\ccwd}
\def\CTEX@subsubsection@beforeskip{2ex \@plus 1ex \@minus .2ex}
\def\CTEX@subsubsection@afterskip{1.0ex \@plus .2ex}

\@ifclasslater{ctexbook}{2011/03/13}
{%
    \ctexset{
        % chapter/fixskip = true,
        contentsname={目\quad 录}
    }
}
{%
    \def\CTEX@contentsname{目\quad 录}
}%

\RequirePackage{textcomp}
\RequirePackage{gensymb}

%============================ 一些章节的配置文件 =========%

% 目录设置，图片

\RequirePackage{subfig}
% 修复上面的冲突
\RequirePackage[titles,subfigure]{tocloft}


%============================ 我自己用的一些小命令 =========%
%
% 针对那些使用mendeley这一类软件的，直接复制（导出）过来的参考文献，可以在参考文献处点击跳转到文献所在网址
\providecommand \doibase [0]{http://dx.doi.org/}%

% 正文中有些下角标等公式，我们并不想让它斜体，公式不斜体:如 \eqrm{MoS_2}
\newcommand{\eqrm}[1]{
    $\rm #1 $
}

% 表格文字居中，其实就是相当于表格合并
% 用法 \tabincell{c}{物理//量//单位}
\newcommand{\tabincell}[2]{ \begin{tabular}{ #1 } #2 \end{tabular}}


% 物理单位埃，已经加了 $ $， 不要再放在$$环境里面
\newcommand{\angstrom}{
    $\mathring{\text{A}}$
}

% \makebox[0pt][l]{$\square$}\raisebox{.15ex}{\hspace{0.1em}$\checkmark$}
% \mbox{\ooalign{$\checkmark$\cr\hidewidth$\square$\hidewidth\cr}}

\newcommand{\done}{ \makebox[0pt][l]{$\square$}\raisebox{.15ex}{\hspace{0.1em}$\checkmark$}}

%============================ 我自己用的一些小命令 =========%

\RequirePackage{textcomp}%摄氏度



%=======footnote
%尾注
%=======footnote
\RequirePackage[perpage, bottom]{footmisc}

%%=======page
%页面边距
%页边距为上2.5cm，下2.5cm，左2.5cm，右2cm，页眉边距为1.5cm，页脚边距为1.5cm。行间距为固定值20磅。
% https://github.com/yuhldr/LZUThesis2020/issues/21
%%=======page
\RequirePackage[top=2.5cm, bottom=2.5cm,outer=2cm, inner=2.5cm, headheight=1cm, footskip=1cm, heightrounded]{geometry}


%=======package
%代码风格设置
%=======package
\RequirePackage{listings}

\lstset{
    breaklines=true, %对过长的代码自动换行
    columns=fixed,
    numbers=left,                                        % 在左侧显示行号
    numberstyle=\tiny\color{gray},                       % 设定行号格式
    frame=none,                                          % 不显示背景边框
    backgroundcolor=\color[RGB]{245,245,244},            % 设定背景颜色
    keywordstyle=\color[RGB]{40,40,255},                 % 设定关键字颜色
    numberstyle=\footnotesize\color{darkgray},
    commentstyle=\it\color[RGB]{0,96,96},                % 设置代码注释的格式
    stringstyle=\rmfamily\slshape\color[RGB]{128,0,0},   % 设置字符串格式
    showstringspaces=false,                              % 不显示字符串中的空格
    language=tex,
    alsolanguage=[ANSI]C, %可以添加很多个alsolanguage,如alsolanguage=matlab,alsolanguage=VHDL等
    alsolanguage=python,
    alsolanguage=java,
    alsolanguage=XML,
    alsolanguage=c++,
    alsolanguage=matlab,
}


%=======package
%数学宏包
%图像宏包
%颜色宏包
%字体宏包
%=======package
\RequirePackage{amsmath}
% \RequirePackage{amsfonts}
% \RequirePackage{amssymb}
\RequirePackage{mathrsfs}


% 3.公式。毕业论文（设计）中的公式应另起一行，并缩格书写。如有两个以上公式，应用从“1”开始的阿拉伯数字进行编号，并将编号置于括号内，如“（1）”。公式需要转行时，应尽可能在“＝”、“+”、“－”、“×”、“/”等记号处转行。编号及标题字体为宋体，五号。
\RequirePackage{chngcntr}
% 设置公式编号格式为连续的阿拉伯数字
\renewcommand{\theequation}{\arabic{equation}}


% 确保公式编号在整个文档中连续
\counterwithout{equation}{chapter}

\RequirePackage{graphicx}
\graphicspath{{figures/}{figure/}{pictures/}
        {picture/}{pic/}{pics/}{image/}{images/}}
\RequirePackage[svgnames]{xcolor}


% start ------------ 英文字体（含公式、正文）、加粗、斜体  -------------- start

% 方案一

% \RequirePackage{mathptmx, bm}
% \RequirePackage{bm, mathptmx}

% mathptmx 可以让英文字体（包含公式和正文）为：Times New Roman
% 但是 mathptmx 会导致花体，mathcal和mathscr完全相同，正常mathcal会花的轻一些
% 而且 mathptmx 还会导致boldsymbol 加粗失效
% bm 可以让 boldsymbol 加粗再生效
% 但是需要注意的是，bm 放在前面和后面完全不一样
% bm 放在前面会导致 加粗只是 “描粗” 了的感觉
% bm 放在后面会导致 加粗以后字形变宽，希腊字母相比加粗前有些变形


% 方案二

\RequirePackage{mathptmx, newtxmath}

% 如果觉得上面的不合适，也可以使用 newtxmath，效果略有不同
% 但是问题是，如果只 newtxmath 的话，正文英文字体是不对的，所以也需要 mathptmx

% 最后注意，newtxmath 与 bm 有冲突
% 使用方法详见 `template.tex` 搜索 `boldsymbol`

% end ------------ 英文字体（含公式、正文）、加粗、斜体  -------------- end

\RequirePackage{fontspec} %用电脑上自带的字体

\RequirePackage{float}%控制图片位置 参数H
\RequirePackage[T1]{fontenc}

\RequirePackage{booktabs}
\RequirePackage{harpoon}

\RequirePackage{tablefootnote}
% 可以换页的表格
\RequirePackage{longtable}
% 连续参考文献横杠连接
\RequirePackage{cite}
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}


% 3.图或表的目录。图和表应有序号，序号与名称之间空1个字符间隙，并与正文保持一致。“图/表目录”三个字字体为黑体，三号，居中；标题字体为宋体，四号，如“图1.1本科生总体数据分析”。标题文字居左，页码居右，之间用连续点连接。
% 图表目录编号头
\newcommand{\figlabel}{图}
\newcommand{\tbllabel}{表}


% 自定义目录
\newcommand{\customcontent}{

    \clearpage
    {
        \pagestyle{empty}
        \fancypagestyle{plain}
        {
            \fancyhf{}
            \renewcommand{\headrulewidth}{0pt}
            \renewcommand{\footrulewidth}{0pt}
        }
        \addtocontents{toc}{\protect\thispagestyle{empty}}
        \tableofcontents
        \thispagestyle{empty}


    }

}


%=======head and foot
%页眉页脚
% 1.页眉。“兰州大学本科毕业论文（设计）”字居左排，毕业论文（设计）题目居右排，字体为宋体，小五号；页眉与正文之间用下划线分隔。
% 2.页码。页脚居中排，字体为宋体，五号。封面、目录不编排页码，中英文摘要页用罗马数字单独连续编号，引言、正文用阿拉伯数字连续编号，附录可不编排页码。
%=======head and foot
\RequirePackage{fancyhdr}  % Needed to define custom headers/footers
\RequirePackage{lastpage}  % Number of pages in the document
\RequirePackage{etoolbox}
\pagestyle{fancy}          % Enables the custom headers/footers


\fancypagestyle{frontmatterstyle}{
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}

    \fancyfoot{} % clear all footer fields
    \cfoot[C]{\thepage} %
    \renewcommand{\thepage}{\Roman{page}}
}
\appto\frontmatter{\pagestyle{frontmatterstyle}}

\DeclareOption{doublelines}{
    \def\LZU@doublelines {}
}
\ProcessOptions\relax

\fancypagestyle{mainmatterstyle}{
    \fancyhf{}
    \lhead{\zihao{-5}\the\pageleft}%
    \rhead{\zihao{-5}\@title}
    % Footers
    \fancyfoot{} % clear all footer fields
    \cfoot[C]{\zihao{5}\thepage}
    \renewcommand\headrule{ \kern 0.8pt \hrule width \hsize height 0.3pt}
}

\appto\mainmatter{\pagestyle{mainmatterstyle}}
\appto\mainmatter{
    \linespread{1.5}\selectfont

    % \fontsize{12pt}{1.5\baselineskip}\selectfont
}
\fancypagestyle{plain}{
    \thispagestyle{mainmatterstyle}
}


%=======format
%标题样式
%=======format

% 1.“目录”两字间空1个字符间隙，字体为黑体，三号，加粗，居中，单倍行距，段前24磅，段后18磅；目录中标题不能超过三级，
% 一级标题字体为宋体，四号，加粗；
% 二级标题字体为宋体，四号；
% 三级标题字体为宋体，小四号。

\RequirePackage[font=small]{caption}

\RequirePackage[titles]{tocloft}
\renewcommand\cftchapdotsep{0.5}                %虚线间隔
\renewcommand\cftdotsep{0.5}                    %虚线间隔
% \renewcommand{\cftchapafterpnum}{\vspace{6pt}} %章节间隔 ，节前6磅
\setlength{\cftbeforesecskip}{6pt}
%             %章节间隔 ，节前6磅

\setlength{\cftbeforechapskip}{6pt}
\setlength{\cftbeforesubsecskip}{6pt}

\renewcommand\cftchapfont{\zihao{4}\bfseries\songti}  % 目录中一级标题，应该是加粗（宋体加粗）
\renewcommand\cftsecfont{\zihao{4} \songti}
\renewcommand\cftsubsecfont{\zihao{-4} \songti}
\renewcommand\cftchappagefont{\mdseries}
\setlength\cftbeforetoctitleskip{24pt}
\setlength\cftaftertoctitleskip{18pt}


%%=======information
%（一）封面
% 1. 毕业论文（设计）题目。简明扼要，核心内容明确。中文题目一般不超过25个字，字体为宋体，三号；英文题目一般不超过150个字母，字体为Times New Roman，三号。根据论文内容，可以加副标题。
% 2.学生姓名、指导教师、学院、专业、年级字体为宋体，三号。
%
%%=======information
\newtoks\advisor
\newtoks\xykh
\newtoks\college
\newtoks\coverbottom
\newtoks\covercenter
\newtoks\pageleft
\newtoks\major
\newtoks\grade
\newtoks\titlextra %标题多余一行时添加
%=======english title
\newtoks\entitle
\newtoks\entitletra %标题多余一行时添加
%%=======statement
%标题页
%需要添加循环函数，判定多于一行的情况
%%=======statement

\RequirePackage{array}
\def\LZU@underline[#1]#2{%
    \underline{\hbox to #1{\hfill#2\hfill}}}
\def\LZUunderline{\@ifnextchar[\LZU@underline\underline}

\RequirePackage{makecell}
%\RequirePackage{pgffor}
\RequirePackage{forloop}
\RequirePackage{xstring}
\renewcommand\maketitle{%
    \cleardoublepage
    \thispagestyle{empty}
    \begin{center}
        \vspace*{30pt}
        \includegraphics[width=10cm]{lzu_logo_w.pdf}\\
        \vspace*{70pt}

        {\zihao{0}\bfseries\heiti{\the\covercenter}}
        \vspace{24pt}
        \par
        \zihao{4}
        \def\tabcolsep{6pt}
        \expandarg
        \newcounter{title_str_number}
        \vspace*{150pt}

        \begin{tabular}{cc}
            {\songti \zihao{3}{学生姓名}}       &
            {\LZUunderline[180pt]{ \songti \zihao{-2}\@author}}       \\[0.40cm]
            {\songti \zihao{3}{校园卡号}}       &
            {\LZUunderline[180pt]{ \songti \zihao{-2}  \the\xykh}}    \\[0.40cm]
            {\songti \zihao{3}{学\qquad 院}}  &
            {\LZUunderline[180pt]{ \songti  \zihao{-2} \the\college}} \\[0.40cm]
            {\songti \zihao{3} {专\hfill 业}} &
            {\LZUunderline[180pt]{ \songti  \zihao{-2} \the\major}}   \\[0.40cm]
            {\songti \zihao{3}{年\qquad 级}}  &
            {\LZUunderline[180pt]{ \songti \zihao{-2}  \the\grade}}   \\[0.40cm]
        \end{tabular}
        \par
        \vspace{80pt}
        {\ziju{0}\zihao{4} \songti{\the\coverbottom}}
    \end{center}
    \clearpage
}



\newtoks \teachertime
\newtoks \mysignature
\newtoks \mytime


%---------------------------
%论文成绩
%---------------------------
\RequirePackage{tabularx}

%---------------------------
%超链接
%---------------------------
\RequirePackage[unicode,psdextra]{hyperref} % Required for hyperlinks
\hypersetup{hidelinks,breaklinks=true,bookmarksopen=false}
%自动写入pdf信息
\AtBeginDocument{
    \hypersetup{
        pdftitle = {\@title},
        pdfauthor = {\@author},
        pdfsubject = {兰州大学本科毕业论文}
    }
}


\RequirePackage[nameinlink]{cleveref}
\crefformat{equation}{#2式(#1)#3}
\crefformat{figure}{#2图#1#3}
\crefformat{table}{#2表#1#3}
\crefformat{chapter}{#2第\zhnumber{#1}章#3}
\crefformat{section}{#2#1节#3}
\crefformat{subsection}{#2#1小节#3}
\crefformat{subsubsection}{#2#1小节#3}


%item style
\RequirePackage{enumitem}
\setenumerate[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=5pt}
\setitemize[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=0pt}
\setdescription{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=5pt}




%======%math theorem
% 英文名称改为汉字
%
%======%math theorem
\RequirePackage[amsmath,thmmarks,hyperref]{ntheorem}
\theorembodyfont{\rmfamily\songti}
\theoremheaderfont{\rmfamily\heiti}
\theoremsymbol{\ensuremath{\square}}
\newtheorem*{proof}{证明}
\theoremstyle{plain}
\theoremsymbol{}
\qedsymbol{\ensuremath{\square}}
\newtheorem{assumption}{假设}[chapter]
\newtheorem{definition}{定义}[chapter]
\newtheorem{proposition}{命题}[chapter]
\newtheorem{lemma}{引理}[chapter]
\newtheorem{theorem}{定理}[chapter]
\newtheorem{axiom}{公理}[chapter]
\newtheorem{corollary}{推论}[chapter]
\newtheorem{example}{例}[chapter]
\newtheorem{conjecture}{猜想}[chapter]

\crefname{theorem}{定理}{定理}
\crefname{assumption}{假设}{假设}
\crefname{definition}{定义}{定义}
\crefname{proposition}{命题}{命题}
\crefname{lemma}{引理}{引理}
\crefname{theorem}{定理}{定理}
\crefname{axiom}{公理}{公理}
\crefname{corollary}{推论}{推论}
\crefname{example}{例}{例}
\crefname{remark}{注释}{注释}
\crefname{conjecture}{猜想}{猜想}



%---------------------------
%程序伪代码实现
%---------------------------
\RequirePackage{algorithm}
\RequirePackage{algpseudocode}
\floatname{algorithm}{算法}
\renewcommand{\algorithmicrequire}{\bfseries{输入:}}
\renewcommand{\algorithmicensure}{\bfseries{输出:}}


%改变图表的编号格式

% 图：图名置于图的下方，五号字，宋体，居中（英文用Times New Roman体10.5磅），单倍行距，段前6磅，段后12磅，图序与图名之间空1个汉字符。
% 表：表名置于表的上方，五号字，宋体，居中（英文用Times New Roman体10.5磅），单倍行距，段前6磅，段后6磅，表序与表名之间空1个汉字符。 
% 图和表下方的注释为五号字，宋体，居左（英文用Times New Roman体10.5磅），单倍行距。

\renewcommand{\thefigure}{\thechapter.\@arabic \c@figure}
\renewcommand{\thetable}{\thechapter.\@arabic \c@table}
% 图序与图名之间空1个汉字符。  
\RequirePackage[labelsep = quad]{caption}
% 这应该图和表单独设置，但是我都设置了6，你可以自己在插入表格时单独设定图的要求
% 参考如下： https://www.latexstudio.net/archives/8652.html
\setlength{\abovecaptionskip}{6pt}
\setlength{\belowcaptionskip}{6pt}


% 修复url打乱引文格式问题，修改url字体使其符合文件规定
\urlstyle{rm}
\def\UrlBreaks{\do\A\do\B\do\C\do\D\do\E\do\F\do\G\do\H\do\I\do\J
    \do\K\do\L\do\M\do\N\do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V
    \do\W\do\X\do\Y\do\Z\do\[\do\\\do\]\do\^\do\_\do\`\do\a\do\b
    \do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j\do\k\do\l\do\m\do\n
    \do\o\do\p\do\q\do\r\do\s\do\t\do\u\do\v\do\w\do\x\do\y\do\z
    \do\.\do\@\do\\\do\/\do\!\do\_\do\|\do\;\do\>\do\]\do\)\do\,
    \do\?\do\'\do+\do\=\do\#}

\endinput
%%
%% End of file `LZUThesis.cls'.

\ProvidesClass{myNotes}[2025/03/22 v1.0 Custom Math Notes Class]

\LoadClass[11pt,a4paper,oneside]{article}

% 编码与字体
\RequirePackage[T1]{fontenc}
% \RequirePackage{ctex}  % 如需中文支持可启用
\RequirePackage{lmodern}
\RequirePackage{graphicx}
\RequirePackage{mathpazo}
% \RequirePackage{kpfonts}

% 数学包
\RequirePackage{amsmath,amssymb,amsthm,mathtools,bm,enumitem,tikz-cd}

% 页面布局
\RequirePackage[a4paper, margin=1in]{geometry}
\RequirePackage{setspace}
\onehalfspacing

% 加载水印包
\RequirePackage{draftwatermark}
% 设置水印的内容和属性
\SetWatermarkText{PlayMaker} % 水印文本
\SetWatermarkLightness{0.99} % 设置水印透明度 (0 为完全透明，1 为完全不透明)
\SetWatermarkScale{1} % 设置水印的大小

% 页眉和页脚设置
\RequirePackage{fancyhdr} % 页眉页脚包

% 设置页眉的最小高度
\setlength{\headheight}{13.6pt}  % 增加页眉高度以避免警告

% 设置页眉样式
\pagestyle{fancy}

% 清除默认页眉和页脚
\fancyhf{} 

% 设置页眉
\fancyhead[L]{Wir müssen wissen, Wir werden wissen.} % 左侧显示章节标题
\fancyhead[R]{\thepage}  % 右侧显示页码

% 颜色与超链接
\RequirePackage[dvipsnames, x11names]{xcolor}
\RequirePackage[most]{tcolorbox}
\RequirePackage[colorlinks=true, linkcolor=black, urlcolor=black]{hyperref}
\RequirePackage{cleveref}

% 定理样式
\theoremstyle{definition}
\newtheorem{definition}{Definition}[section]
\newtheorem{theorem}{Theorem}[section]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{corollary}[theorem]{Corollary}

% 定理美化
\tcolorboxenvironment{theorem}{
    colback=SeaGreen!10!CornflowerBlue!10,
    colframe=RoyalPurple!55!Aquamarine!100!,
    coltitle=black,
    fonttitle=\bfseries,
    before skip=5pt,
    after skip=5pt,
    width=\textwidth,
    boxrule=1pt,
    arc=3pt,
    enhanced,
    breakable,
    after title={\par\noindent}
}
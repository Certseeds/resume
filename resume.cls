\NeedsTeXFormat{LaTeX2e}[2020/02/02]
\ProvidesClass{resume}[2015/05/25 An elegant Résumé class]
\LoadClass[a4paper,UTF8]{ctexart}

% disable indent globally
\setlength{\parindent}{0pt}
% some general improvements, defines the XeTeX logo
\RequirePackage{xltxtra}
% use xifthen
\RequirePackage{xifthen}
% use fontawesome
%\RequirePackage{sty/fontawesome}
% use xcolor for customizing color
\RequirePackage[usenames,dvipsnames]{xcolor}
% loading fonts
\RequirePackage{sty/fonts/en}
\RequirePackage{sty/fonts/cn}
\RequirePackage{sty/zihao}
\RequirePackage{sty/pageupdown}
\RequirePackage{sty/command}
\RequirePackage{sty/school}
\RequirePackage{hyperref}
\RequirePackage{fontawesome}
\RequirePackage[
	a4paper,
	left=0.7in,
	right=0.7in,
	top=0.50in,
	bottom=0.5in,
	nohead
]{geometry}

\RequirePackage{titlesec}
\RequirePackage{enumitem}
\setlist{noitemsep} % removes spacing from items but leaves space around the whole list
%\setlist{nosep} % removes all vertical spacing within and around the list
\setlist[itemize]{topsep=0.25em, leftmargin=1.5pc}
\setlist[enumerate]{topsep=0.25em, leftmargin=1.5pc}
\RequirePackage[super]{nth}

\titleformat{\section}         % Customise the \section command 
  {\三号\黑体\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]                 % Inserts a horizontal line after the heading
\titlespacing*{\section}{0cm}{*1}{*1}

\titleformat{\subsection}
  {\raggedright}
  {}{0em}
  {}
\titlespacing*{\subsection}{0cm}{*1}{*0.5}

\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}
\newcommand{\datedline}[2]{%
  {\par #1 \hfill #2 \par}%
}

\newcommand{\name}{
  \centerline{\一号\姓名}
  \vspace{1.2ex}
}

\RequirePackage{marvosym} % a few 徽标

\newcommand{\showinfo}{
  \centerline{
  \faPhone \phantom{e} {\电话号码} \textperiodcentered\
  \Email \phantom{e} \href{mailto:\邮箱}{\nolinkurl{\邮箱}} \textperiodcentered\

  {\岗位名称} \textperiodcentered\
  GitHub \faGithub \phantom{e} \href{https://github.com/\GitHubName}{\nolinkurl{@\GitHubName}}
  }
  \vspace{0.7ex}
}

\newcommand{\role}[2]{
  {\par \textit{#1} ~ #2 \par}
  \vspace{0.5ex}
}

\RequirePackage{sty/linespacing_fix} % disable extra space before next section

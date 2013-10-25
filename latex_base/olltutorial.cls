%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                         %
%      This file is part of the 'openLilyLib' library.                    %
%                                ===========                              %
%                                                                         %
%              https://github.com/lilyglyphs/openLilyLib                  %
%                                                                         %
%  Copyright 2012-13 by Urs Liska, lilyglyphs@ursliska.de                 %
%                                                                         %
%  'openLilyLib' is free software: you can redistribute it and/or modify  %
%  it under the terms of the GNU General Public License as published by   %
%  the Free Software Foundation, either version 3 of the License, or      %
%  (at your option) any later version.                                    %
%                                                                         %
%  This program is distributed in the hope that it will be useful,        %
%  but WITHOUT ANY WARRANTY; without even the implied warranty of         %
%  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the           %
%  GNU General Public License for more details.                           %
%                                                                         %
%  You should have received a copy of the GNU General Public License      %
%  along with this program.  If not, see <http://www.gnu.org/licenses/>.  %
%                                                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Document class for an openLilyLib book

\NeedsTeXFormat{LaTeX2e} 
\ProvidesClass{olltutorial}

% Use the KOMA-script book class as the base class
\LoadClass[oneside]{scrbook}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% General font selection

\RequirePackage{fontspec}

% fontspec base settings
\defaultfontfeatures{%
	Ligatures=TeX
}
\setmainfont[%
	Numbers=OldStyle,
	]{Linux Libertine O}
\setsansfont[%
	Scale=MatchLowercase,
	ItalicFont=LinBiolinumOI,
	BoldFont=LinBiolinumOB]{LinBiolinumO}
\setmonofont[
	Scale=MatchLowercase]{DejaVu Sans Mono}

% Include the basic options that are common to OLL documents
%\RequirePackage{OLLbase}

% Include style sheets, special constructs etc.
%\RequirePackage{OLLstyles}





% Enable the use of colors
\RequirePackage{color}

\RequirePackage{xcolor}

% Let \chapter restart its numbering after \part
\makeatletter
\@addtoreset{chapter}{part}
\makeatother  

% Do not restart footnote numbering for each chapter
\RequirePackage{chngcntr}
\counterwithout*{footnote}{chapter}

% Enable import of images
\RequirePackage{graphicx}


% Enhanced table commands
\RequirePackage{booktabs}

% Enhanced lists
\RequirePackage{mdwlist}
\RequirePackage{paralist}

% Typeset listings
% (Special styles defined in OLLstyles.sty)
\RequirePackage{listings}
% Format listings with typewriter font by default
\lstset{
    frame=single,
    basicstyle=\fontspec{Liberation Mono}\footnotesize}
    
    
% use 'fancyref' for smart cross-references
\RequirePackage{fancyref}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Add fancyref categories for subsection and subsubsection:

% subsection - subsec:

\newcommand*{\fancyrefsubseclabelprefix}{subsec}

\fancyrefaddcaptions{english}{%
  \providecommand*{\frefsubsecname}{subsection}%
  \providecommand*{\Frefsubsecname}{Subsection}%
}

\frefformat{plain}{\fancyrefsubseclabelprefix}{\frefsubsecname\fancyrefdefaultspacing#1}
\Frefformat{plain}{\fancyrefsubseclabelprefix}{\Frefsubsecname\fancyrefdefaultspacing#1}

\frefformat{vario}{\fancyrefsubseclabelprefix}{%
  \frefsubsecname\fancyrefdefaultspacing#1#3%
}
\Frefformat{vario}{\fancyrefsubseclabelprefix}{%
  \Frefsubsecname\fancyrefdefaultspacing#1#3%
}

% subsubsection - subsubsec:

\newcommand*{\fancyrefsubsubseclabelprefix}{subsubsec}

\fancyrefaddcaptions{english}{%
  \providecommand*{\frefsubsubsecname}{subsection}% the same as for subsection
  \providecommand*{\Frefsubsubsecname}{Subsection}%
}

\frefformat{plain}{\fancyrefsubsubseclabelprefix}{\frefsubsubsecname\fancyrefdefaultspacing#1}
\Frefformat{plain}{\fancyrefsubsubseclabelprefix}{\Frefsubsubsecname\fancyrefdefaultspacing#1}

\frefformat{vario}{\fancyrefsubsubseclabelprefix}{%
  \frefsubsubsecname\fancyrefdefaultspacing#1#3%
}
\Frefformat{vario}{\fancyrefsubsubseclabelprefix}{%
  \Frefsubsubsecname\fancyrefdefaultspacing#1#3%
}

% End fancyref
%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Include further style files that might rely on the above

% General styles and commands
\usepackage{olltutorial}
% Handle documents as standalone or included files
\usepackage{ollbookparttools}

%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Options for use of hyperlinks
% (make sure this is included last)
\RequirePackage[%
	colorlinks,
	urlcolor=blue,
	bookmarks=true,
	bookmarksnumbered=true]{hyperref}



\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{trmbook}[2010/01/23 v1.0 Classe de cours]

\LoadClassWithOptions{book}

\RequirePackage{customtheorem}
\RequirePackage{xcolor,graphicx}
\RequirePackage{calc}
\RequirePackage{enumitem}
\RequirePackage{ifthen}
\RequirePackage{multicol}
\RequirePackage{soul}
\RequirePackage{ifpdf}
\RequirePackage{fancyhdr}

\RequirePackage{tikz}
\usetikzlibrary{calc}
\usetikzlibrary{shapes}

\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{titletoc}

% pour éviter un message d'erreur si on compile en dvi
\ifpdf
\else
  \def\pgfsyspdfmark#1#2#3{}
\fi

% pour s'assurer que addto est disponible même si babel n'est pas chargé
\def\addto#1#2{%
  \ifx#1\@undefined
    \def#1{#2}%
  \else
    \ifx#1\relax
      \def#1{#2}%
    \else
      {\toks@\expandafter{#1#2}%
        \xdef#1{\the\toks@}}%
    \fi
  \fi
}

% marges
\geometry{papersize={18.5cm,25.5cm}}
\geometry{margin=1cm,bottom=1.5cm}

% sauvegarde de l'indentation (pour les minipages)
\newlength{\originalparindent}
\setlength{\originalparindent}{\parindent}
% indentation à l'intérieur des chapitres
\newlength{\indentationcours}
\setlength{\indentationcours}{3.35cm}

% proondeur de numérotation
\setcounter{secnumdepth}{3}

% commande pour choisir la taille de police avec interligne automatique
\newcommand{\autofontsize}[1]{\fontsize{#1}{\dimexpr #1*1.2}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% THÉORÈMES %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% redefinition du format leftellipse pour compatibilite avec \setindent
\def\leftellipsetheorembegin{%
  \TestIfCmdExistsFromPackageWhenUsing{\tikzpicture}{tikz}{leftellipse}
  \TestIfTikZShapeLibraryLoadedFor{leftellipse}
% there should be a warning if used in two or more columns style
  \clearbeforetheorem\addvspace{\thetheorempreskip}%
  \noindent\hspace{\thetheoremleftmargin}%
  \setlength{\temptheoremlength}%
        {\linewidth-\thetheoremleftmargin-\thetheoremrightmargin}%
  \noindent\begin{minipage}{\temptheoremlength}%
  \begin{lrbox}{\temptheoremtextbox}%
     \begin{minipage}{0.95\linewidth}%
     {\formattheoremhead\thetheoremnote}%
     \parindent=\saveparindent\color{\thetheorembodycolor}%
     \formattheorembody}
\def\leftellipsetheoremend{%
   \end{minipage}\end{lrbox}%
   \begin{tikzpicture}
     \tikzstyle{titlebox}=[fill=\thetheorembodyfill, rectangle, 
                           inner sep=10pt, inner ysep=10pt]
     \tikzstyle{title}=[left=0.1cm,color=\thetheoremheadborder,
                        fill=\thetheoremheadfill,ellipse,draw,
                        very thick,text=\thetheoremheadcolor,
                        inner ysep=2pt]
     \node[titlebox] (textbox) at (0,0)
        {\usebox{\temptheoremtextbox}};
     \useasboundingbox (textbox);
     \draw[color=\thetheorembodyborder,very thick]
        (textbox.north west)--(textbox.south west);
     \node[title] at (textbox.west)
        {\makebox[2cm]{%
         % code un peu complexe pour la hauteur dans l'ellipse
         \raisebox{\depthof{\formattheoremhead p}/4
                            -\depthof{\formattheoremhead x}/4}%
         [0pt][0pt]{\formattheoremhead\thetheoremname
                       \thetheoremnumber}\vphantom{T}}%
        };
   \end{tikzpicture}\end{minipage}\par
   \addvspace{\thetheorempostskip}}

% on utilise \AtBeginDocument pour que les théorèmes soient définis après que hyperref ait été chargé (si l'utilisateur le souhaite), afin d'éviter des problèmes de "PDF Destination"
\AtBeginDocument{
%%%%%%%%%%% théorèmes, lemmes, corollaires, et propriétés %%%%%%%%%%%

\theoremformat{leftellipse}% style des théorèmes
\theoremheadsize{\small}% noms des théorèmes en petit
\thmnote{#1\endgraf}% l'argument optionnel des théorèmes est sur une ligne à part au début des encadrés
\theoremfilledcolor{\resultcolor}% les théorèmes, lemmes, corollaires, propriétés sont en vert foncé
\theorembodyfont{\upshape}% l'intérieur des théorèmes est en italique
\newtheorem{theoreme}{Théorème}[chapter]
\renewcommand{\thetheoreme}{\arabic{theoreme}}
\newtheorem{lemme}{Lemme}[chapter]
\renewcommand{\thelemme}{\arabic{lemme}}
\newtheorem{corollaire}{Corollaire}[chapter]
\renewcommand{\thecorollaire}{\arabic{corollaire}}
\newtheorem{propriete}{Propriété}[chapter]
\renewcommand{\thepropriete}{\arabic{propriete}}
\newtheorem{proprietes}[propriete]{Propriétés}

%%%%%%%%%%% définitions %%%%%%%%%%%

\theoremfilledcolor{\othercolor}% les définitions sont en bleu
\newtheorem{definition}{Définition}[chapter]
\renewcommand{\thedefinition}{\arabic{definition}}

%%%%%%%%%%% exemples et remarques %%%%%%%%%%%

\theoremstyle{standard}% on vide les définitions précédents
\theorembodyfont{\upshape}% le texte du théorème est en droit
\theoremheadcolor{\othercolor}% couleur bleu pour les exemples/remarques
\newtheorem*{exemple}{Exemple}
\newtheorem*{exemples}{Exemples}
\newtheorem*{remarque}{Remarque}
\newtheorem*{remarques}{Remarques}

%%%%%%%%%%% listes dans certains théorèmes %%%%%%%%%%%

\newenvironment{sousexemples}{\begin{enumerate}[topsep=\parsep,itemsep=0pt,label=\textcolor{\othercolor}{\bfseries\alph*.}]}{\end{enumerate}}
\newenvironment{sousremarques}{\begin{enumerate}[topsep=\parsep,itemsep=0pt,label=\textcolor{\othercolor}{\bfseries\alph*.}]}{\end{enumerate}}
\newenvironment{sousproprietes}{\begin{enumerate}[topsep=\parsep,itemsep=0pt,label=\textcolor{\resultcolor}{\bfseries\alph*.}]}{\end{enumerate}}

%%%%%%%%%%% exercices %%%%%%%%%%%
\theoremstyle{plain}% en remet à zéro les styles
\theorembodyfont{\upshape}% texte en droit dans les exercices
\thmname{}% pas de texte, juste le numéro de l'exercice
% on encadre les numéros d'exercices dans une boîte d'une largeur de 2 numéros
\thmnumber{\setlength{\fboxsep}{4pt}%
           \colorbox{\exercicecolor}{%
              \color{\exercicenegcolor}\fontfamily{ugq}\selectfont
              \makebox[\widthof{00}-2pt]{#1}}}% < 100 exos/chaptitre
\theoremheadpunct{}% pas de ponctuation
\newtheorem{exercice}{Exercice}[section]
\renewcommand{\theexercice}{\arabic{exercice}}

% questions et sousquestion dans les exercices
\newenvironment{questions}{\begin{enumerate}[label=\textcolor{\exercicecolor}{\fontfamily{ugq}\selectfont\alph*.},leftmargin=*]}{\end{enumerate}}
\newenvironment{sousquestions}{\begin{enumerate}}{\end{enumerate}}

% commande annexe pour la difficulté des exercices (* = un peu plus dur, ** = plus dur, *** = dur) ; la macro \replicate{4}{*} fournira **** (autrement dit, imprime #1 fois #2)
\newcommand{\replicate}[2]{%
   \ifthenelse{#2=0}{}{#1\replicate{#1}{\number\numexpr#2-1 }}%
}
\newcommand{\difficulte}[1]{\textcolor{red}{\replicate{\raisebox{1pt}{\footnotesize$\bigstar$}}{#1}}}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%% DÉMONSTRATIONS %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% démonstration ; le carré de fin de démonstration laisse à désirer (trop basique, il faudrait adapter les commandes d'amsthm)
\newenvironment{demonstration}[1][\proofname]{\par\addvspace{\topsep}\noindent\textbf{\itshape\color{\resultcolor}#1.}\nobreakspace\ignorespaces}{\hfill$\Box$\par\addvspace{\topsep}}
% listes dans les démonstrations [est-ce la bonne façon de faire ?]
\newenvironment{sousdemonstration}{\begin{enumerate}[topsep=0pt,itemsep=0pt,label=\textcolor{\resultcolor}{\bfseries\alph*.}]}{\end{enumerate}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% SECTIONS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%% gestion de l'identation pour les chapitres %%%%%%%%%%%

\newlength{\originallinewidth}
\setlength{\originallinewidth}{\textwidth}
\newcommand{\setindent}[1]{%
\setlength{\linewidth}{\originallinewidth}%
\setlength{\leftmargin}{0cm}%
\setlength{\@totalleftmargin}{0cm}%
% le code suivant est la façon dont les listes font pour décaler le texte à gauche ; c'est juste une simple reprise
\@setpar{\if@newlist
             \advance\par@deathcycles \@ne
             \ifnum \par@deathcycles >\@m
               \@noitemerr
               {\@@par}%
             \fi
           \else
             {\@@par}%
           \fi}%
\setlength{\leftmargin}{#1}%
\addtolength{\linewidth}{-\leftmargin}%
\addtolength{\@totalleftmargin}{\leftmargin}%
\parshape \@ne \@totalleftmargin \linewidth}

%%%%%%%%%%% définition des chapitres %%%%%%%%%%%

\newcommand{\chaptercmd}{}
\titleformat{\chapter}[block]
  {\renewcommand\chaptercmd\chaptercmdstar}
  {\global\let\chaptercmd\chaptercmdnostar}
  {0pt}
  {\chaptercmd}
  {}
\titlespacing*{\chapter}{0pt}{0pt}{0pt}

%%%%%%%%%%% chapitre non numéroté %%%%%%%%%%%

\newcounter{chapterstar}
%\newcommand{\chaptercmdstar}[1]{%
%  \thispagestyle{fancy}% style de page fancy (au lieu de plain)
%  \setindent{0cm}% supprime l'indentation pour le titre de chapitre
%  \vspace{-1.5cm}% ajustment pour contrebalancer un espace parasite de titlesec
%  \refstepcounter{chapterstar}% compteur pour les identifiants de bookmarks du PDF
%  \begin{center}
%  \pdfbookmark[0]{#1}{chapterstar.\arabic{chapterstar}}% ajoute les chapitres non numérotés dans les bookmarks du PDF
%  \makebox[0pt]{\fboxsep=0pt\colorbox{\chapterbackcolor}{% titre dans une boîte rouge
%    \begin{minipage}{\textwidth}\leavevmode\centering
%    \autofontsize{36pt}\fontfamily{pag}\selectfont
%    \color{\chapternbcolor}\vrule width 1.5cm\hfill\color{\chaptertitlecolor}% rectangle orange de début
%    % titre de chapitre proprement dit
%    \parbox{\textwidth-3cm}{\leavevmode\centering
%      % ajustement de la hauteur
%      \vphantom{É}%
%      \rule[\heightof{Q}+\depthof{Q}-\depthof{O}]{0pt}{0pt}%
%      % ajustement de la profondeur
%      \vphantom{Q}%
%      \rule[\heightof{E}-\heightof{É}]{0pt}{0pt}%
%      % en minuscules
%      \MakeLowercase{#1}%
%    }%
%    \hfill\color{\chapternbcolor}\vrule width 1.5cm\null % rectangle orange de fin
%    \end{minipage}%
%  }}%
%  \end{center}
%}

\newlength{\chaptercmdstartitlelength}
\newcommand{\chaptercmdstar}[1]{%
  \thispagestyle{plain}% pas de numéros de pages
  \setindent{0cm}% indentation à 0cm
  \setlength{\chaptercmdstartitlelength}%
     {\widthof{\fontfamily{phv}\selectfont\Large
      \color{\chaptertextcolor}%
      \MakeUppercase{\so{#1}}}}%
  % pour les bookmarks
  \refstepcounter{chapterstar}%
  \pdfbookmark[0]{#1}{chapterstar.\arabic{chapterstar}}%
  \begin{tikzpicture}[remember picture,overlay]
%  % fond de la page
%  \fill[fill=\chapterbackcolor] (current page.north west)
%     rectangle (current page.south east);
  % trait vertical
  \draw[color=\chapterbackcolor] ($ (current page.north west) + (0.75cm,-1cm) $)
     -- ($ (current page.north west) + (0.75cm,-3cm-5cm) $);
  % trait horizontal
  \draw[color=\chapterbackcolor] ($ (current page.north west) + (1.3cm+\chaptercmdstartitlelength+1.3cm+4cm,-3cm) $)
     -- ($ (current page.north west) + (,-3cm) $);
  % rectangle blanc contenant le titre de chapitre
  \filldraw[color=\chapterbackcolor] ($ (current page.north west) + (0cm,-3cm) $)
     rectangle ($ (current page.north west) + (1.3cm+\chaptercmdstartitlelength+1.3cm,-2.25cm) $);
  % mot "CHAPITRE"
  \node[above right] at
     ($ (current page.north west) + (1.3cm,-3cm) $)
     {\begin{minipage}{\chaptercmdstartitlelength}%
      \fontfamily{phv}\selectfont\Large
      \color{\chaptertitlecolor}%
      \MakeUppercase{\so{#1}}\end{minipage}};
%  \fill[fill=white] ($(current page.north west) + (1cm,-4cm)$) rectangle ($(current page.south east) + (-1cm,1cm)$);
  \end{tikzpicture}
  \vspace*{2.5cm}%
  \pagestyle{fancy}% style de page fancy
}

%%%%%%%%%%% chapitre non numéroté %%%%%%%%%%%

% définition de l'image utilisée par un chapitre
\newcommand*{\thechapterimage}{}
\newcommand*{\chapterimage}[1]{\renewcommand*{\thechapterimage}{#1}}
% définition du texte utilisé par un chapitre
% (pas d'étoile dans \renewcommand, #1 peut contenir des paragraphes)
\newcommand{\thechaptertext}{}
\newcommand{\chaptertext}[1]{\renewcommand{\thechaptertext}{#1}}
% N.B \@chapapp = \chaptername avant \appendix et = \appendixname après
\newcommand{\chaptercmdnostar}[1]{%
  \thispagestyle{empty}% pas de numéros de pages
  \setindent{0cm}% indentation à 0cm
  \pagecolor{\chapterbackcolor}% page en rouge
  \begin{tikzpicture}[remember picture,overlay]
  % numéro de chapitre
  \node[below] (numberbox) at ($ (current page.north) + (0,-1cm)$)
    {\fontfamily{phv}\fontsize{600pt}{600pt}\selectfont
     \bfseries\color{\chapternbcolor}\thechapter};
  % titre du chapitre
  \node[below right] (titlebox) at
    ($ (current page.north west) + (numberbox.west)
                 - (numberbox.north west) + (1.5cm,0cm)$)
    {\begin{minipage}{\textwidth}\raggedright
     \fontfamily{phv}\autofontsize{50pt}\selectfont
     \bfseries\color{\chaptertitlecolor}#1\end{minipage}};
  % trait vertical
  \draw[color=\chaptertitlecolor] ($ (current page.north west) + (1cm,-1cm) $)
     --($ (current page.west) + (1cm,0cm) $);
  % trait horizontal
  \draw[color=\chaptertitlecolor] ($ (current page.north west) + (0cm,-3cm) $)
     --($ (current page.north) + (2cm,-3cm) $);
  % rectangle blanc contenant le mot "CHAPITRE"
  \filldraw[color=\chaptertitlecolor] ($ (current page.north west) + (0cm,-3cm) $)
     rectangle ($ (current page.north west) + (5cm,-2.25cm) $);
  % mot "CHAPITRE"
  \node[above right] at
     ($ (current page.north west) + (1.3cm,-3cm) $)
     {\begin{minipage}{5cm}\fontfamily{phv}\selectfont\Large
      \color{\chaptertextcolor}%
      \MakeUppercase{\so{\@chapapp}}\end{minipage}};
  % texte si présent (test avec ifthenelse)
  \ifthenelse{\equal{\thechaptertext}{}}{%
  }{%
    \node[left,rectangle,draw,fill=\chaptertitlecolor,color=\chaptertitlecolor,inner sep=0.5cm] at ($ (current page.south east) + (0.15cm,6cm) $)
       {\color{\chaptertextcolor}\begin{minipage}{\textwidth-5cm}%
        \setlength{\parindent}{\originalparindent}%
        \noindent\thechaptertext
        \end{minipage}};
  }
  % iamge si présente (test avec ifthenelse)
  \ifthenelse{\equal{\thechapterimage}{}}{%
  }{%
    \node[right] at ($ (current page.south west) + (1cm,6cm) $)
       {\includegraphics[width=\ifdim\Gin@nat@width>5cm % si l'image est de largeur > 5cm
                                  5cm% sa largeur sera 5cm
                               \else
                                  \Gin@nat@width % sinon, ce sera la largeur naturelle
                               \fi]% il faudrait aussi contrôler la hauteur de l'image [--> à faire]
        {\thechapterimage}};
  }
  \end{tikzpicture}
  \gdef\thechapterimage{}% on vide l'image de chapitre
  \long\gdef\thechaptertext{}% on vide le texte de chapitre
  \clearpage
  \pagecolor{white}% on revient à des pages de couleur blanche
  \pagestyle{fancy}% style de page fancy
}

%%%%%%%%%%% section non numéroté %%%%%%%%%%%

\newcommand{\sectioncmd}{}
\def\losangexsep{3pt}% espace à gauche et à droite du numéro dans le losange
\def\losangeysep{7pt}% espace en haut et en bas du numéro dans le losange
\def\losangeoutersep{8pt}% espace supplémentaire autour du numéro dans le losange
\def\thesectionnumberfont{\LARGE\fontfamily{ugq}\selectfont\color{\sectioncomplcolor}}
\def\thesectiontitlefont{\Large\fontfamily{ugq}\selectfont\color{\sectioncolor}}
\newlength{\losangewidth}% longeur pour le losange contenant le numéro de section
\def\losangeruleoverlap{0.5pt}% ajustement pour que la ligne grise masque le losange
\def\sectionxsep{5pt}% séparation à gauche et à droite du titre de section

\newcommand{\sectioncmdstar}[1]{%
\setindent{0cm}%
\begin{tikzpicture}
  % tire de la section
  \node[above right,inner xsep=\sectionxsep,inner ysep=0.5*\losangeoutersep] (titlebox)
      at (0,0)
      {\begin{minipage}{\linewidth-\sectionxsep*2}%
       \thesectiontitlefont#1\vphantom{p}\end{minipage}};
  % ligne sous le titre de section
  \draw[line width=1pt,color=\sectionrulecolor] (titlebox.south east)
     -- (titlebox.south west);
  \end{tikzpicture}%
}

%%%%%%%%%%% section numéroté %%%%%%%%%%%

\newcommand{\sectioncmdnostar}[1]{%
\setindent{0cm}%
\setlength{\losangewidth}{\widthof{\thesectionnumberfont
                   \hspace{\losangexsep}\arabic{section}%
                   \hspace{\losangexsep}\null}}%
\begin{tikzpicture}
  % taille du numéro (sert pour tracer le losange *dessous*)
  \node[above left,inner sep=0pt] (numberbox)
      at (0,\losangeoutersep)
      {\phantom{\thesectionnumberfont
                \hspace{\losangexsep}\arabic{section}%
                \hspace{\losangexsep}\null}};
  % tire de la section
  \node[above right,inner xsep=\sectionxsep,inner ysep=0.5*\losangeoutersep] (titlebox)
      at ($(numberbox.south east) + 
                (2*\losangeoutersep,-\losangeoutersep)$)
      {\begin{minipage}{\linewidth-\losangeoutersep*3%
                        -\losangewidth-\losangeruleoverlap*2-\sectionxsep*2}%
       \thesectiontitlefont#1\vphantom{p}\end{minipage}};
  % ombre du losange entourant le numéro
  \shade ($(numberbox.north west) + (0pt,\losangeysep)$)
      -- ($(numberbox.north east) + (\losangeoutersep,\losangeysep)$)
      -- ($(numberbox.south east) + 
                 (2*\losangeoutersep,-\losangeoutersep) $)
      -- ($(numberbox.south east) + (0pt,-\losangeoutersep)$)
      -- cycle;
  % losange entourant le numéro
  \filldraw[color=\sectioncolor]
     ($(numberbox.south west) + 
               (-\losangeoutersep,-\losangeoutersep)$)
      -- ($(numberbox.south east) + (0pt,-\losangeoutersep)$)
      -- ($(numberbox.north east) + (\losangeoutersep,\losangeysep)$) 
      -- ($(numberbox.north west) + (0pt,\losangeysep)$)
      -- cycle;
  % ligne sous le titre de section
  \draw[line width=1pt,color=\sectionrulecolor]
     ($(numberbox.south west) + 
          (-\losangeoutersep-\losangeruleoverlap,-\losangeoutersep)$)
     -- (titlebox.south east);
  % numéro de section
  \node[above left,inner sep=0pt]
     at (0,0.5*\losangeysep+0.5*\losangeoutersep)
     {\thesectionnumberfont
      \hspace{\losangexsep}\arabic{section}%
      \hspace{\losangexsep}\null};
  \end{tikzpicture}%
}%

% le document a deux modes :
%  - le mode normal pour le cours
%  - le mode exercice pour les exercices
% les sections et sous-sections ont une apparence différente dans les deux modes

% définition des sections et sous-sections en mode normal
\newcommand*{\modenormal}{%
\setindent{\indentationcours}% restaure, au besoin, l'identation
\titleformat{\section}[block]
  {\global\let\sectioncmd\sectioncmdstar}
  {\global\let\sectioncmd\sectioncmdnostar}
  {0pt}
  {\sectioncmd}
  {}
\titlespacing*{\section}{0em}{2em}{1em}
\titleformat{\subsection}
  {\fontfamily{ugq}\selectfont\normalsize}
  {\colorbox{\sectioncolor!70}{\vphantom{0123456789}%
                   \color{\sectionnegcolor}\arabic{section}}%
   \colorbox{\sectioncolor}
            {\vphantom{0123456789}\color{\sectioncomplcolor}%
                   \arabic{subsection}}~~}
% note : le \vphantom{0123456789} est là car pour être sûr que tous les chiffres soient de la même hauteur (sinon les boîtes pourraient être de tailles différentes, ce qui est moche)
  {0em}
  {}
  {}
\titlespacing*{\subsection}{0pt}{0.75em}{0.5em}
\titleformat{\subsubsection}
  {\color{\sectioncolor}\bfseries}
  {\arabic{subsubsection}.~}
  {0em}
  {}
  {}
\titlespacing*{\subsubsection}{0pt}{1em}{0.25em}
}
\AtBeginDocument{\modenormal}% on passe en mode normal au début du document

% commandes pour les titre de sections et sous-sections dans le mode exercice
\newcommand*{\boitetitresubsection}[1]{%
  \colorbox{\exercicecolor}{% le \rule est là pour ajuster la hauteur
     \makebox[\linewidth]{% le \vphantom{p} est là pour la profondeur
         \hfill\rule{0pt}{8pt}#1\vphantom{p}\hfill}}%
}
\newcommand*{\boitetitresection}[1]{%
  \colorbox{\exercicecolor}{% le \rule est là pour ajuster la hauteur
     \makebox[\linewidth]{\hfill\rule[-10pt]{0pt}{32pt}%
                          #1\hfill}}%
}

% mode spécial pour les exercices
\newcommand*{\modeexercice}{%
\clearpage
\setindent{0cm}%
\titleformat{\section}[block]
  {\LARGE\color{\exercicecomplcolor}%
   \bfseries\fontfamily{ugq}\selectfont}
  {}
  {0pt}
  {\boitetitresection}
  {}
\titlespacing*{\section}{0em}{0em}{1em}
\titleformat{\subsection}
  {\small\bfseries\color{\exercicenegcolor}%
   \fontfamily{ugq}\selectfont}
  {}%
  {0em}
  {\boitetitresubsection}
  {}
\titlespacing*{\subsection}{0pt}{1em}{0.5em}
}

% pour mettre la liste d'exercices en deux colonnes
\newenvironment{listeexercices}
  {\setlength{\columnsep}{20pt}\begin{multicols*}{2}}
  {\end{multicols*}}

% pas d'en-têtes ni de pieds de pages
\pagestyle{fancy}
\fancyhead{}
\fancyfoot{}
\fancyfoot[ro,le]{\thepage}
\renewcommand{\headrulewidth}{0pt}

% table des matières
\setcounter{tocdepth}{1}
\addto\captionsfrench{\renewcommand{\contentsname}{Sommaire}}
\renewcommand\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname}%
    \begingroup
    \setindent{0cm}
    \@starttoc{toc}%
    \endgroup
    \if@restonecol\twocolumn\fi
    }
\titlecontents{chapter}%
  [1.5em]
  {\addvspace{1em}\bfseries\fontfamily{ugq}\selectfont}
  {\contentslabel{1.3em}}
  {\hspace{-1.3em}}
  {\hfill\contentspage}
  [\addvspace{0.2em}]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%% PAGES DE TITRE %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\thecoverillustration}{}
\newcommand{\coverillustration}[1]{\renewcommand{\thecoverillustration}{#1}}

\renewcommand{\maketitle}{%
\begingroup
\pagestyle{empty}% en-têtes vides
\setindent{0cm}% pas d'indentation
\begin{tikzpicture}[remember picture, overlay]
% fond noir
\fill[fill=\coverbackcolor] (current page.north west) rectangle (current page.south east);
% bande bleu à droite
\fill[fill=\covercolor] (current page.north east) rectangle ($ (current page.south east) + (-1.5cm,0cm)$);
% bande bleu à gauche
\fill[fill=\covercolor] (current page.north west) rectangle ($ (current page.south west) + (6cm,0cm)$);
% carré noir en bas à gauche
\fill[fill=\coverbackcolor] ($ (current page.south west) + (6cm-2.5pt,3cm)$) rectangle ($ (current page.south west)$);
% hachures blanches
\foreach \i in {1,2,...,17} {
  \draw[color=\covernegcolor] ($ (current page.north west) + (\i*6cm/18,0cm)$) -- ($ (current page.south west) + (\i*6cm/18,3cm)$);
}
% mot maths en travers des hachures
\node[above left=-0.2cm,rotate=90] at ($ (current page.north west) + (6cm,0cm)$) {\fontfamily{pag}\autofontsize{200pt}\selectfont\color{\covernegcolor}maths};
\node[below,draw,rounded corners=15pt,color=\coverbackcolor,fill=\covercolor,inner sep=8pt] at ($ (current page.north east) + (0cm,-1cm)$) {\fontfamily{pag}\autofontsize{18pt}\selectfont\color{\covernegcolor}\bfseries \,\@date~~~\phantom{\@date}~\null};
\node[below right=-0.20cm] at ($ (current page.north west) + (8cm,-4.5cm)$)
  {\begin{minipage}{\textwidth-6cm-1.5cm-1cm-1cm}\centering
   \fontfamily{pag}\autofontsize{16pt}\selectfont
   \color{\covernegcolor}%
   Terminale~S
   \end{minipage}};
\node[below right=-0.20cm] (titlebox) at ($ (current page.north west) + (8cm,-7.5cm)$)
  {\begin{minipage}{\textwidth-6cm-1.5cm-1cm-1cm}\centering
   \fontfamily{pag}\autofontsize{24pt}\selectfont
   \color{\covernegcolor}\bfseries
   \@title
   \end{minipage}};
\node at ($ (current page.south west) + ({6cm + (\textwidth-6cm-1.5cm)/2+1cm},3cm+5cm)$)
  {\begin{minipage}{\textwidth-6cm-1.5cm}\centering
   \thecoverillustration
   \end{minipage}};
\node[above] at ($ (current page.south west) + ({6cm + (\textwidth-6cm-1.5cm)/2+1cm},1cm)$)
  {\fontfamily{pag}\selectfont
   \color{white}%
   \@author};
\end{tikzpicture}
\cleardoublepage
% page de faux titre
\null\vfill
\begin{center}
\autofontsize{50pt}%
\fontfamily{pag}\selectfont
\color{\chapterbackcolor}%
\MakeLowercase{\@title}
\end{center}
\begin{center}\autofontsize{18pt}\fontfamily{pag}\selectfont
\bfseries\MakeLowercase{Cours avec exercices}
\end{center}
\vfill\vfill
\cleardoublepage
\endgroup
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% GESTION DES COULEURS %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% éléments de personnalisation de la page de titre
\newcommand{\coverbackcolor}{black}% couleur du fond
\newcommand{\covercolor}{blue}% couleur des cadres aux bord
\newcommand{\covernegcolor}{white}% couleur du texte

% éléments de personnalisation des pages de chapitre
\newcommand{\chapterbackcolor}{red}% couleur du fond
\newcommand{\chapternbcolor}{orange}% couleur nu numéro
\newcommand{\chaptertitlecolor}{white}% couleur du titre et du rectangle contenant "chapitre" et la biographie du chapitre
\newcommand{\chaptertextcolor}{black}% couleur du mot "chapitre" et du texte de la biographie

% éléments de personnalisation des sections
\newcommand{\sectioncolor}{blue}% couleur de la section
\newcommand{\sectioncomplcolor}{orange!50!yellow}% couleur du numéro principal de sectionnement
\newcommand{\sectionnegcolor}{white}% couleur du numéro secondaire de sectionnement
\newcommand{\sectionrulecolor}{gray}% couleur du trait en dessous de la section

% éléments de personnalisation des exercices
\newcommand{\exercicecolor}{green!60!black}% couleur des exercices
\newcommand{\exercicecomplcolor}{orange!50!yellow}% couleur du titre "exercice et problèmes"
\newcommand{\exercicenegcolor}{white}% couleur des sous-sections dans les exercices

% éléments de personnalisation des théorèmes
\newcommand{\resultcolor}{green!60!black}% couleur des théorèmes de type résultats (théorème, corollaire, propriété, lemme)
\newcommand{\othercolor}{blue}% couleur des autres théorèmes (définition, exemple, remarque)

\endinput
%%
%% End of file `trmbook.cls'.

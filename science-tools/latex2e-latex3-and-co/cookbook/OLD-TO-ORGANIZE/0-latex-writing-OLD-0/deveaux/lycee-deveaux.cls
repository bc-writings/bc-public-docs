%%
%% Ceci définie ma classe.
%% Je l'utilise pour mes contrôle, mes cours et mes listes d'exercices.
%%
%% V. Deveaux (c) 2013-2016
%% Pour toute question, vincent.deveaux@ac-grenoble.fr
%%

%% DISCLAIMER:
%%
%% Cette classe est fournie sans prétention aucune. Elle n'est pas parfaite.
%% Je ne garantie pas qu'il n'y ait aucun bug ou problème de compatibilité.
%% Je décline toute responsabilité en cas de perte de données ou autre, 
%% supposé être causé par l'utilisation de cette classe.
%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Informations generales %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}[1999/01/01]
\ProvidesClass{lycee-deveaux}[2016/09/10]

%% classe de base
\LoadClass[a4paper,11pt]{article}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Chargement des extensions %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[french]{babel}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{dsfont}  %% pour indicatrice
\RequirePackage{fancyhdr}  %% pour le \pagestyle
\RequirePackage{a4wide}
\RequirePackage{eucal}  %% pour mathcal

\RequirePackage[tikz]{mdframed} %% pour les environments en couleurs page-breakable
\RequirePackage{pifont} %% pour symbole devant exercices (classe exo en test)
\RequirePackage{titlesec} %% pour redefinir les \section, \subsection,...


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Déclaration des options %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@cours      \@coursfalse
\newif\if@exo        \@exofalse
\newif\if@controle   \@controlefalse

\newif\if@derniere   \@dernieretrue
\newif\if@numsection \@numsectionfalse
\newif\if@draft      \@draftfalse


\DeclareOption{cours}{\@courstrue} %% pour un cours
\DeclareOption{exos}{\@exotrue} %% pour une liste d'exercices
\DeclareOption{controle}{\@controletrue} %% pour un contrôle

\DeclareOption{draft}{\@drafttrue} %% mode brouillon
\DeclareOption{nolast}{\@dernierefalse} %% une seule page
\DeclareOption{numsection}{\@numsectiontrue} %% nulérotation dans des sections
\DeclareOption*{}
\ProcessOptions

\if@draft %% Si brouillon, pas de graphics et les labels sont affichés
    \RequirePackage[draft]{graphicx}
    \RequirePackage{showkeys}
\else
    \RequirePackage{graphicx}
\fi

\if@derniere %% Si une seule page, on ne charge pas lastpage.
  \RequirePackage{lastpage}
\fi

\RequirePackage{color}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Définition des commandes %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\LaClasseVariable}{La classe}
\newcommand{\LaDateVariable}{\today}
\newcommand{\LAuteurVariable}{V. Deveaux}
\newcommand{\LeTitreVariable}{Type du contrôle/Titre de la leçon}
\newcommand{\CommentaireVariable}{Commentaires}

\newcommand{\LaClasse}[1]{\renewcommand{\LaClasseVariable}{#1}}
\newcommand{\LeTitre}[1]{\renewcommand{\LeTitreVariable}{#1}}
\newcommand{\LaDate}[1]{\renewcommand{\LaDateVariable}{#1}}
\newcommand{\LAuteur}[1]{\renewcommand{\LAuteurVariable}{#1}}
\newcommand{\Commentaires}[1]{\renewcommand{\CommentaireVariable}{#1}}


%% grande case pour les tableaux
\newcommand{\GrandeCase}[1][5ex]{\rule[-2ex]{0pt}{#1}}


%% chemin pour les images
\graphicspath{{./Images/}{./}}


%% personalisation de la numerotation des pages
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0.4pt}
\lhead[\LaDateVariable]{\LaClasseVariable}
\chead[]{}
\rhead[\LaClasseVariable]{\LaDateVariable}
\renewcommand{\footrulewidth}{0.4pt}
\lfoot[]{}
\cfoot[]{}
\rfoot[]{}


%% personalisation des listes numérottées
\renewcommand{\theenumi}{\arabic{enumi}}
\renewcommand{\labelenumi}{\textbf{\theenumi .}}
\renewcommand{\theenumii}{\alph{enumii}}
\renewcommand{\labelenumii}{\textbf{(\theenumii)}}


%% personalisation des listes non-numérottées
\renewcommand{\labelitemi}{$\bullet$}
%\addto\captionsfrench{\renewcommand{\labelitemi}{$\bullet$}}



%% les ensembles et autres choses "génériques"
%\newcommand{\AA}{\mathds{A}}
%\newcommand{\BB}{\mathds{B}}
\newcommand{\CC}{\mathds{C}}
\newcommand{\DD}{\mathds{D}}
%\newcommand{\EE}{\mathds{E}}
%\newcommand{\FF}{\mathds{F}}
%\newcommand{\GG}{\mathds{G}}
%\newcommand{\HH}{\mathds{H}}
%\newcommand{\II}{\mathds{I}}
%\newcommand{\JJ}{\mathds{J}}
%\newcommand{\KK}{\mathds{K}}
%\newcommand{\LL}{\mathds{L}}
%\newcommand{\MM}{\mathds{M}}
\newcommand{\NN}{\mathds{N}}
%\newcommand{\OO}{\mathds{O}}
%\newcommand{\PP}{\mathds{P}}
%\newcommand{\QQ}{\mathds{Q}}
\newcommand{\RR}{\mathds{R}}
%\newcommand{\SS}{\mathds{S}}
%\newcommand{\TT}{\mathds{T}}
%\newcommand{\UU}{\mathds{U}}
%\newcommand{\VV}{\mathds{V}}
%\newcommand{\WW}{\mathds{W}}
%\newcommand{\XX}{\mathds{X}}
%\newcommand{\YY}{\mathds{Y}}
\newcommand{\ZZ}{\mathds{Z}}

\newcommand{\A}{\mathcal{A}}
\newcommand{\B}{\mathcal{B}}
\newcommand{\C}{\mathcal{C}}
\newcommand{\D}{\mathcal{D}}
\newcommand{\E}{\mathcal{E}}
\newcommand{\F}{\mathcal{F}}
\newcommand{\G}{\mathcal{G}}
%\newcommand{\H}{\mathcal{H}}
\newcommand{\I}{\mathcal{I}}
\newcommand{\J}{\mathcal{J}}
\newcommand{\K}{\mathcal{K}}
%\newcommand{\L}{\mathcal{L}}
\newcommand{\M}{\mathcal{M}}
\newcommand{\N}{\mathcal{N}}
%\newcommand{\O}{\mathcal{O}}
%\newcommand{\P}{\mathcal{P}}
\newcommand{\Q}{\mathcal{Q}}
\newcommand{\R}{\mathcal{R}}
%\newcommand{\S}{\mathcal{S}}
\newcommand{\T}{\mathcal{T}}
\newcommand{\U}{\mathcal{U}}
\newcommand{\V}{\mathcal{V}}
\newcommand{\W}{\mathcal{W}}
\newcommand{\X}{\mathcal{X}}
\newcommand{\Y}{\mathcal{Y}}
\newcommand{\Z}{\mathcal{Z}}


\newcommand{\vect}[1]{\overrightarrow{#1}}
\newcommand{\ssi}{\Longleftrightarrow}
\newcommand{\prive}{\backslash}


%% symboles plus jolis.
\renewcommand{\leq}{\leqslant}
\renewcommand{\geq}{\geqslant}
\renewcommand{\emptyset}{\varnothing}
\renewcommand{\rho}{\varrho}
\renewcommand{\phi}{\varphi}
\renewcommand{\epsilon}{\varepsilon}


%% Definition des espaces inter-exos
\newlength{\EspaceAvantExercice} %% espace avant l'exercice
\setlength{\EspaceAvantExercice}{1cm}
\newlength{\EspaceApresExercice} %% espace après l'exercice
\setlength{\EspaceApresExercice}{0.5cm}


%% definition d'un style pour les environments
\if@cours
    \newtheoremstyle{exostyle}% NAME
    {}% ABOVESPACE
    {}% BELOWSPACE
    {\normalfont}% BODYFONT
    {}% INDENT
    {\bfseries\sffamily}% HEADFONT
    {}% HEADPUNCT
    {\newline}% HEADSPACE
    {}% CUSTOM-HEAD-SPEC
\else
    \newtheoremstyle{exostyle}% NAME
    {\EspaceAvantExercice}% ABOVESPACE
    {\EspaceApresExercice}% BELOWSPACE
    {\normalfont}% BODYFONT
    {}% INDENT
    {\bfseries\sffamily\large}% HEADFONT
    {}% HEADPUNCT
    {\newline}% HEADSPACE
    {\underline{\thmname{#1}\thmnumber{ #2}\thmnote{ (#3)}}}% CUSTOM-HEAD-SPEC
\fi


\newtheoremstyle{theostyle}% NAME
    {}% ABOVESPACE
    {}% BELOWSPACE
    {\itshape}% BODYFONT
    {}% INDENT
    {\bfseries}% HEADFONT
    {.}% HEADPUNCT
    {\newline}% HEADSPACE
    {}% CUSTOM-HEAD-SPEC
\newtheoremstyle{defstyle}% NAME
    {}% ABOVESPACE
    {}% BELOWSPACE
    {\normalfont}% BODYFONT
    {}% INDENT
    {\bfseries}% HEADFONT
    {.}% HEADPUNCT
    {\newline}% HEADSPACE
    {}% CUSTOM-HEAD-SPEC


%% Definition d'un environnement exercice avec saut de ligne.
\theoremstyle{exostyle}
\if@numsection
    \newtheorem{exercice}{Exercice}[section]
    %% numerotation des equations et figures dans la section
    \numberwithin{equation}{section}
    \numberwithin{figure}{section}
\else
    \newtheorem{exercice}{Exercice}
\fi


%% redefinition des section et subsection
\titleformat{\section}[hang]{\bfseries\huge\sffamily\scshape}{\thesection}{1em}{}
\titleformat{\subsection}[hang]{\bfseries\Large\slshape}{\thesubsection}{1em}{}

%% renommage des section (I,II) et subsection (1, 2)
\renewcommand{\thesection}{\Roman{section}}
\renewcommand{\thesubsection}{\arabic{subsection})}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% a titre expérimental

\definecolor{bleufonce}{rgb}{0.4,0.4,1}
\definecolor{bleuclair}{rgb}{0.8,0.8,1}

\definecolor{vertfonce}{rgb}{0.4,1,0.4}
\definecolor{vertclair}{rgb}{0.8,1,0.8}

\definecolor{violetfonce}{rgb}{0.6,0.4,1}
\definecolor{violetclair}{rgb}{0.85,0.8,1}


\theoremstyle{theostyle}
\newmdtheoremenv[linecolor=violetfonce, backgroundcolor=violetclair,
  linewidth=2pt, skipabove=1em, skipbelow=1em, roundcorner=2pt]
                {theoreme}[exercice]{Théorème}
\newmdtheoremenv[linecolor=bleufonce,backgroundcolor=bleuclair,
  linewidth=2pt,skipabove=1em,skipbelow=1em, roundcorner=2pt]
                {proposition}[exercice]{Proposition}
\newmdtheoremenv[linecolor=bleufonce,backgroundcolor=bleuclair,
  linewidth=2pt,skipabove=1em,skipbelow=1em, roundcorner=2pt]
                {propriete}[exercice]{Propriété}
\newmdtheoremenv[linecolor=bleufonce,backgroundcolor=bleuclair,
  linewidth=2pt,skipabove=1em,skipbelow=1em, roundcorner=2pt]
                {corollaire}[exercice]{Corollaire}
\newmdtheoremenv[backgroundcolor=white,
  skipabove=1em,skipbelow=1em, roundcorner=2pt]{lemme}[exercice]{Lemme}

\theoremstyle{defstyle}
\newmdtheoremenv[linecolor=vertfonce,backgroundcolor=vertclair,
  linewidth=2pt,skipabove=1em,skipbelow=1em, roundcorner=2pt]
                {definition}[exercice]{Définition}
\newmdtheoremenv[hidealllines=true,
  skipabove=1em,skipbelow=1em, roundcorner=2pt]{remarque}[exercice]{Remarque}
\newmdtheoremenv[topline=false, bottomline=false, rightline = false,
  skipabove=1em,skipbelow=1em]
                {exemple}[exercice]{Exemple}

\newenvironment{preuve}[1][Preuve]
               {\noindent\textit{#1.}\par\noindent}
               {}
\surroundwithmdframed[backgroundcolor=black!10,hidealllines=true,skipabove=2pt,skipbelow=1em,footnoteinside=false]{preuve}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%
%%% controle, interrogation, TP
%%%
\if@controle
   %pour rétro-compatibilité
    \newcommand{\DocumentsAutorisesVariable}{\Commentaire}
    \newcommand{\DocumentsAutorises}[1]{\renewcommand{\CommentaireVariable}{#1}}

    \newcommand{\TitreControle}{%
      \begin{center}%
        {\LARGE\textsc{\bfseries{\LeTitreVariable}}}\\
        \vspace{3mm}\emph{\CommentaireVariable}\vspace{3mm}
      \end{center}}
    
    \newcommand{\NomEleve}{\vspace{5mm}{\large\textsc{\bfseries{nom :}}}\dotfill\hspace{7cm}\vspace{1cm}}
    \newcommand{\NomEleveClasse}{\vspace{5mm}{\large\textsc{\bfseries{nom :}}}\makebox[7cm][c]{\dotfill}\hspace{5cm}{\large\textsc{\bfseries{classe :}}}\makebox[1cm][c]{\dotfill}\vspace{1cm}}

    \lhead[\LaDateVariable]{\LaClasseVariable}
    \rhead[\LaClasseVariable]{\LaDateVariable}
    \if@derniere
        \lfoot[\thepage/\pageref{LastPage}]{}
        \rfoot[]{\thepage/\pageref{LastPage}}
    \fi

\fi
%%% fin controle


%%%
%%% cours
%%%
\if@cours
    % redefinition si maketitle
    \author{\LAuteurVariable}
    \title{\LeTitreVariable}
    \date{\LaDateVariable}


    \newcommand{\TitreEtIndex}{%
      ~\vspace{\stretch{20}}%
      \begin{center}%
        {\Huge\bfseries\textsc\LeTitreVariable}\\%
      \end{center}%
      \vspace{\stretch{2}}%
      \begin{center}%
        \LaClasseVariable\\%
      \end{center}%
      \vspace{\stretch{1}}%
      \begin{center}%
        \textsc{\large\LAuteurVariable}\\%
      \end{center}%
      \vspace{\stretch{2}}%
      \begin{center}%
        \LaDateVariable%
      \end{center}%
      \thispagestyle{empty}%
      \vspace{\stretch{20}}%
      \tableofcontents\newpage}
    
    \newcommand{\ExerciceAFaire}[1]{~\\ \par\noindent {\ttfamily $\leadsto$\underline{{\scshape Exercices}} : {\itshape #1}}\\~\\}
    
    \lhead[\LeTitreVariable]{\LaClasseVariable}
    \rhead[\LaClasseVariable]{\LeTitreVariable}
    \cfoot[\leftmark]{\leftmark}
    \if@derniere
        \lfoot[\thepage/\pageref{LastPage}]{}
        \rfoot[]{\thepage/\pageref{LastPage}}
    \fi

    %% commande pour les definitions: \dfn et \dfn*
    \makeatletter
    \newcommand{\dfn}{\@ifstar\dfnStar\dfnNostar}
    \newcommand{\dfnStar}[1]{\emph{#1}}
    \newcommand{\dfnNostar}[1]{{\bf \emph{#1}}}
    \makeatother

    %% voir fourier-orns pour un panneau
    \newcommand{\ATTENTION}{\par\noindent{\underline{\textsc{\bfseries Attention}}}\ :\ }

\fi
%%% fin cours


%%%
%%% liste d'exercices
%%%
\if@exo
    \chead{\LeTitreVariable}
    \newcommand{\TitreLecon}{%
      \begin{center}%
        {\large\textsc{\bfseries{\LeTitreVariable}}}%
      \end{center}%
      \vspace{1cm}}

\fi
%%% fin exos

%%%%%%%%%%%%%%%%%%%%
%% Fin du package %%
%%%%%%%%%%%%%%%%%%%%
\endinput

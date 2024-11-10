%%%
% refs::
%     + https://tex.stackexchange.com/a/729929/6880
%     + https://tex.stackexchange.com/a/729913/6880
%%%

\ExplSyntaxOn

\ProvidesExplClass{ main }
                  { 2024-11-01 }
                  { 0.0.0 }
                  { Passing unprocessed options to another class }

\newcommand{ \selectedoptions }{ color }

\keys_define:nn { class / options }{
  theme .choices:nn = { bw, color, dark, draft } {
    \exp_args:NNV \renewcommand \selectedoptions \l_keys_choice_tl
  }
}

\DeclareUnknownKeyHandler[ class / options ]{
  \PassOptionsToClass{ \CurrentOption }{ article }
}

\ProcessKeyOptions[ class / options ]

\LoadClass{ article }

\ExplSyntaxOff

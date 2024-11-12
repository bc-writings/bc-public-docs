%%%
% refs::
%     + https://tex.stackexchange.com/a/729929/6880
%     + https://tex.stackexchange.com/a/729913/6880
%%%

\ExplSyntaxOn

%%%
% Voici la carte d'identité de notre classe.
%%
\ProvidesExplClass{ main }
                  { 2024-11-01 }
                  { 0.0.0 }
                  { Passing unprocessed options to another class }

%%%
% L'option de classe sera stockée dans la macro ''\selectedoptions''.
% Nous choisissons la valeur par défaut ''color'', et si besoin l'emploi
% de ''\renewcommand'' permettra d'actualiser ''\selectedoptions''.
%%
\newcommand{ \selectedoptions }{ color }

%%%
% Dans l'espace de noms ''class / options'', nous définissons une option
% ''theme'' ne pouvant avoir que la valeur ''bw'', ''color'', ''dark'',
% ou ''draft''.
%
% note::
%     Nous déléguons à \l3 la gestion d'une clé illégale.
%
% caution::
%     Ci-dessous, ''\l_keys_choice_tl'' fait référence à un choix
%     correct de la valeur de ''theme''. Sans ''\exp_args:NNV'', nous
%     pourions ne pas avoir la bonne valeur, car ''\l_keys_choice_tl''
%     peut être utilisée pour chaque option de type "choix". Nous
%     devons donc développer ''\l_keys_choice_tl'' immédiatement.
%%
\keys_define:nn { class / options }{
  theme .choices:nn = {
% Les valeurs possibles.
    bw, color, dark, draft
  } {
% L'action faite avec une valeur autorisée.
    \exp_args:NNV \renewcommand \selectedoptions \l_keys_choice_tl
  }
}


%%%
% Nous indiquons de passer à la classe ''article'' toutes les options
% qui ne seront pas traitées dans l'espace de noms ''class / options''.
%%
\DeclareUnknownKeyHandler[ class / options ]{
  \PassOptionsToClass{ \CurrentOption }{ article }
}

%%%
% Nous demandons le traitement de toutes les options dans l'espace de
% noms ''class / options''.
%%
\ProcessKeyOptions[ class / options ]

%%%
% Nous pouvons maintenant charger la classe ''article''.
%%
\LoadClass{ article }

\ExplSyntaxOff

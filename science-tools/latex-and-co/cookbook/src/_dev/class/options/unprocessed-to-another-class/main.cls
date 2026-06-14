%%%
% src::
%     urls = https://tex.stackexchange.com/a/729929/6880 ,
%            https://tex.stackexchange.com/a/729913/6880
%%%

%%%
% Voici la carte d'identité de notre classe.
%%
\ProvidesExplClass
  { main }
  { 2024-11-01 }
  { 0.0.0 }
  { Passing unprocessed options to another class }

%%%
% L'option de la classe sera stockée dans ''\selectedoption'',
% cette macro valant ''color'' par défaut.
%%
\newcommand{ \selectedoption }{ color }

%%%
% Dans l'espace de noms ''class / options'', nous définissons
% une option ''theme'' ne pouvant avoir que la valeur ''bw'',
% ''color'', ''dark'' ou ''draft''.
%
%
% note::
%     Nous déléguons à \l3 la gestion d'une clé illégale.
%%%
\keys_define:nn { class / options }{
  theme .choices:nn = {
% Les valeurs possibles.
    bw, color, dark, draft
  } {
% Mise à jour de la valeur de ''\selectedoption''.
    \tl_set_eq:NN \selectedoption \l_keys_choice_tl
  }
}


%%%
% Nous indiquons de passer à la classe ''article'' toutes les
% options non traitées dans l'espace de noms ''class / options''.
%%
\DeclareUnknownKeyHandler[ class / options ]{
  \PassOptionsToClass{ \CurrentOption }{ article }
}

%%%
% Nous demandons le traitement de toutes les options dans
% l'espace de noms ''class / options'', avec au passage le
% traitement des cas inconnus comme indiqué, ci-dessus, via
% ''\DeclareUnknownKeyHandler''.
%%
\ProcessKeyOptions[ class / options ]

%%%
% Nous pouvons maintenant charger la classe ''article'' avec
% le passage des options non traitées dans ''class / options''.
%%
\LoadClass{ article }

\ExplSyntaxOn

\tl_new:N \l_cookbook_cls_option_tl

\newcommand{ \selectedoptions } { color }

\keys_define:nn { class / options } {
  theme .choices:nn = {
    bw,
    color,
    dark,
    draft
  } {
    \renewcommand{ \selectedoptions } {
      \tl_use:N \l_keys_choice_tl
    }
  }
}

\ProcessKeyOptions[class / options]

\exp_last_unbraced:NNV \LoadClass[ \l_cookbook_cls_option_tl ]%
          { article }%
          [ 2022-06-01 ]

\ExplSyntaxOff

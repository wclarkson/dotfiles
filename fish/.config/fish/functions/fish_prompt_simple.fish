function fish_prompt_simple
  set -l textcol  white
  set -l bgcol    446879
  set -l arrowcol 7b9fb3
  set_color $textcol -b $bgcol
  echo -n " "(basename $PWD)" "
  set_color $arrowcol -b normal
  echo -n "⮀ "
end

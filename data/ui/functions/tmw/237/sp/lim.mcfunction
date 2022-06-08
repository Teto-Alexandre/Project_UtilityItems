# Fキー

# スペシャルウェポン発動
execute if score @s ui_paint < $spneed ui_temp run function ui:tmw/237/sp/fail
execute if score @s ui_paint = $spneed ui_temp at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/237/sp/core
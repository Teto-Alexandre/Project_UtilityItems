# Qキー

# サブウェポン発動
execute if score $ink ui_temp < $ink.sub ui_temp run function ui:tmw/237/sub/fail
execute if score $ink ui_temp >= $ink.sub ui_temp at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/237/sub/core
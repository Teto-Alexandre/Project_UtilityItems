scoreboard players add $temp ui_temp 1
execute unless score $width ui_temp = $temp ui_temp positioned ^ ^ ^0.4 run function ui:tmw/255/player/crossbow/attack/roll/moveleft
execute if score $width ui_temp = $temp ui_temp rotated ~180 ~ run function ui:tmw/255/player/crossbow/attack/roll/hitbox
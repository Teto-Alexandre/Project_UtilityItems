scoreboard players set $count ui_temp -1
fill ~-1 ~ ~-1 ~1 ~1 ~1 slime_block replace #ui:nocol
summon armor_stand ~ ~ ~ {Tags:["tmw601_feet_4"],Marker:1b,Invisible:1b,NoGravity:1b}
schedule function ui:tmw/601/feet/4/ss 1t append
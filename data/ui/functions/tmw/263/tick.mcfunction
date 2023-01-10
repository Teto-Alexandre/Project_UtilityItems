execute unless score #tmw_263_game ui_world matches 1 as @s[scores={ui_use1=1..}] at @s run function ui:tmw/263/ranged
execute if score #tmw_263_game ui_world matches 1 as @s[scores={ui_use1=1..,ui_st=0}] at @s run function ui:tmw/263/ranged
execute if score #tmw_263_game ui_world matches 1 as @s[scores={ui_use1=1..,ui_st=1..}] at @s run function ui:tmw/263/gamemode
execute if score #tmw_263_menu ui_world matches 1 as @s[tag=tmw_drop_n] run function ui:tmw/263/menu
execute if score #tmw_263_menu ui_world matches 1 as @s[tag=tmw_drop_s] run function ui:tmw/263/menu2

#
tag @s[tag=tmw_drop_n] add tmw_drop_s

#
execute as @e[tag=tmw272_deck_dropper_core] if score @s ui_id = $id ui_temp run tag @s add ui_temp_targetable_dropper
execute if entity @s[tag=tmw_use_n] run function ui:tmw/272/id/-1/n
execute if entity @s[tag=tmw_use_s] run function ui:tmw/272/id/-1/s
execute if entity @s[tag=tmw_drop_s] unless entity @e[tag=ui_temp_targetable_dropper] run function ui:tmw/272/id/-1/deck_edit/drop
execute if entity @s[tag=tmw_oh_n] run function ui:tmw/272/id/-1/ready
execute if entity @s[tag=tmw_oh_s,scores={ui_st2=..20}] run function ui:tmw/272/id/-1/clone
execute if entity @s[scores={ui_st2=41}] at @s run particle dust 1 0 1 2 ~ ~ ~ 1 1 1 0 15 force
execute if entity @s[scores={ui_st2=41}] at @s run playsound entity.enderman.teleport player @a ~ ~ ~ 1 0.5 0
execute if entity @s[scores={ui_st2=41}] at @s run tellraw @s [{"text":"[Idling] > ","color": "light_purple"},{"text":"長Sneak+Fキーで羊を分解","color": "gray"}]
#execute if entity @s[scores={ui_st2=101}] at @s run function ui:tmw/272/id/-1/title_edit
execute if entity @s[tag=tmw_oh_s,scores={ui_st2=41..}] as @e[type=sheep,sort=nearest,limit=1] at @s run function ui:tmw/272/id/-1/sheep_decomposer
execute if entity @s[tag=tmw_drop_s] if entity @e[tag=ui_temp_targetable_dropper] unless entity @s[tag=tmw272_active] as @e[tag=ui_temp_targetable_dropper] at @s run function ui:tmw/272/id/-1/deck_edit/success

#
execute at @s[tag=tmw272_ready] run particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 1 force

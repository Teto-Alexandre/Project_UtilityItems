# カードを引く
execute if data storage ui:temp temp.effect{effect_mode:"steal"} run tag @s add tmw272_temp_steal

execute as @e[tag=tmw272_temp_card_effect_target] at @s run function ui:tmw/272/effect/effect_type/draw/2

execute as @e[tag=tmw272_temp_card_effect_target] run tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"selector":"@s"},{"text":"がカードを"},{"score":{"name": "$var","objective": "ui_temp"}},{"text": "枚ドローしました"}]

tag @e[tag=tmw272_temp_steal] remove tmw272_temp_steal

# カードを捨てるテスト
#execute as @e[tag=tmw272_temp_card_effect_target] if entity @s[type=player] run tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"selector":"@s"},{"text":"がカードを"},{"score":{"name": "$var","objective": "ui_temp"}},{"text": "枚捨てます"}]
#execute as @e[tag=tmw272_temp_card_effect_target] if entity @s[type=!player] run tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"selector":"@s"},{"text":"は非プレイヤーのため、カードを"},{"score":{"name": "$var","objective": "ui_temp"}},{"text": "枚捨てられませんでした"}]

execute unless data storage ui:temp temp.effect.no_condition run scoreboard players set $condition_checker ui_temp 0
execute as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/effect/effect_type/discard/2

data remove storage ui:temp temp.discard

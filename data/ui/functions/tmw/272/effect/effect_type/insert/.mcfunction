# カードを与えるテスト
execute as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/effect/effect_type/insert/2

execute unless data storage ui:temp temp.effect.mute if score $var ui_temp matches 1.. as @e[tag=tmw272_temp_card_effect_target] run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"が特殊カードを"},{"score":{"name": "$var","objective": "ui_temp"}},{"text": "枚山札に加えた！"}]
execute unless data storage ui:temp temp.effect.mute if score $var ui_temp matches 0 as @e[tag=tmw272_temp_card_effect_target] run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"が特殊カードを山札に加えた！"}]

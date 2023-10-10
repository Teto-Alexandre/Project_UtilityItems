# カードを与えるテスト
execute as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/effect/effect_type/insert/2

execute as @e[tag=tmw272_temp_card_effect_target] run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"が特殊カードを"},{"score":{"name": "$var","objective": "ui_temp"}},{"text": "枚山札に加えた！"}]

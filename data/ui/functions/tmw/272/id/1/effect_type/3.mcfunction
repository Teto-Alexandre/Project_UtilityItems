# ドローするテスト
execute as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/id/1/effect_type/3.2

execute as @e[tag=tmw272_temp_card_effect_target] if entity @s[type=player] run tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"selector":"@s"},{"text":"がカードを"},{"score":{"name": "$var","objective": "ui_temp"}},{"text": "枚ドローしました"}]
execute as @e[tag=tmw272_temp_card_effect_target] if entity @s[type=!player] run tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"selector":"@s"},{"text":"は非プレイヤーのため、カードを"},{"score":{"name": "$var","objective": "ui_temp"}},{"text": "枚ドローできませんでした"}]

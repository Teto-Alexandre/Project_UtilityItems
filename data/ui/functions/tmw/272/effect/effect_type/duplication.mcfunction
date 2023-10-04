# カードを与えるテスト
execute as @e[tag=tmw272_temp_card_effect_target] run scoreboard players operation @s ui_tmw272_duplication += $var ui_temp

execute as @e[tag=tmw272_temp_card_effect_target] run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の次のカードの効果が"},{"score":{"name": "$var","objective": "ui_temp"}},{"text": "回複製されるようになった！"}]

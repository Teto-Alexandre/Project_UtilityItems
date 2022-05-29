# メイン
    item modify entity @s weapon.mainhand ui:gun/add_glow
    playsound entity.player.levelup player @a ~ ~ ~ 1 1.5 0
    particle firework ~ ~1 ~ 0.5 0.5 0.5 0.03 10 normal
    scoreboard players set $changed ui_temp 1
    scoreboard players set $sp ui_temp 1

# 何チャージしたの？
execute if score $sptype ui_temp matches 101 run tellraw @s [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"ノヴァ","color":"gold"},{"text":"]","color":"gray"},{"text":"のチャージを完了しました","color":"white"}]
execute if score $sptype ui_temp matches 102 run tellraw @s [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"スーパースター","color":"gold"},{"text":"]","color":"gray"},{"text":"のチャージを完了しました","color":"white"}]
execute if score $sptype ui_temp matches 103 run tellraw @s [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"ボムラッシュ","color":"gold"},{"text":"]","color":"gray"},{"text":"のチャージを完了しました","color":"white"}]
execute if score $sptype ui_temp matches 104 run tellraw @s [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"インクリメント","color":"gold"},{"text":"]","color":"gray"},{"text":"のチャージを完了しました","color":"white"}]
execute if score $sptype ui_temp matches 105 run tellraw @s [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"レーダー","color":"gold"},{"text":"]","color":"gray"},{"text":"のチャージを完了しました","color":"white"}]

# メイン
    item modify entity @s weapon.mainhand ui:gun/add_glow
    playsound entity.player.levelup player @a ~ ~ ~ 1 1.5 0
    particle firework ~ ~1 ~ 0.5 0.5 0.5 0.03 10 normal
    scoreboard players set $changed ui_temp 1
    scoreboard players set $sp ui_temp 1

# 何チャージしたの？
execute if score $sptype ui_temp matches 151 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"トルネード","color":"gold"},{"text":"]","color":"gray"},{"text":"のチャージを完了しました！","color":"white"}]
execute if score $sptype ui_temp matches 152 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"アメフラシ","color":"gold"},{"text":"]","color":"gray"},{"text":"のチャージを完了しました！","color":"white"}]
execute if score $sptype ui_temp matches 251 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"ノヴァ","color":"gold"},{"text":"]","color":"gray"},{"text":"のチャージを完了しました！","color":"white"}]
execute if score $sptype ui_temp matches 252 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"スーパースター","color":"gold"},{"text":"]","color":"gray"},{"text":"のチャージを完了しました！","color":"white"}]
execute if score $sptype ui_temp matches 253 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"ボムラッシュ","color":"gold"},{"text":"]","color":"gray"},{"text":"のチャージを完了しました！","color":"white"}]
execute if score $sptype ui_temp matches 254 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"インクリメント","color":"gold"},{"text":"]","color":"gray"},{"text":"のチャージを完了しました！","color":"white"}]
execute if score $sptype ui_temp matches 255 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"レーダー","color":"gold"},{"text":"]","color":"gray"},{"text":"のチャージを完了しました！","color":"white"}]
execute if score $sptype ui_temp matches 256 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"スーパーチャクチ","color":"gold"},{"text":"]","color":"gray"},{"text":"のチャージを完了しました！","color":"white"}]
execute if score $sptype ui_temp matches 257 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"サヴァイブ","color":"gold"},{"text":"]","color":"gray"},{"text":"のチャージを完了しました！","color":"white"}]
execute if score $sptype ui_temp matches 351 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"メガホンレーザー","color":"gold"},{"text":"]","color":"gray"},{"text":"のチャージを完了しました！","color":"white"}]
execute if score $sptype ui_temp matches 451 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"スーパーショット","color":"gold"},{"text":"]","color":"gray"},{"text":"のチャージを完了しました！","color":"white"}]
execute if score $sptype ui_temp matches 452 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"マルチミサイル","color":"gold"},{"text":"]","color":"gray"},{"text":"のチャージを完了しました！","color":"white"}]
execute if score $sptype ui_temp matches 453 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"トライアングル","color":"gold"},{"text":"]","color":"gray"},{"text":"のチャージを完了しました！","color":"white"}]
execute if score $sptype ui_temp matches 454 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"ハイドロポンプ","color":"gold"},{"text":"]","color":"gray"},{"text":"のチャージを完了しました！","color":"white"}]
execute if score $sptype ui_temp matches 455 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"ジェットパック","color":"gold"},{"text":"]","color":"gray"},{"text":"のチャージを完了しました！","color":"white"}]

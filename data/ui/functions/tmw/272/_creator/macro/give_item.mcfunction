tellraw @s [{"text":"[_creator] > ","color":"aqua"},{"text":"データ変換を実行しました","color":"gray"}]
playsound block.ender_chest.close player @s ~ ~ ~ 1 1 0
particle dust 1 1 1 1 ~ ~1 ~ 0.3 0.3 0.3 0 20 force @s

$item replace entity @s weapon.mainhand with $(id)$(tag)
#item replace entity @s weapon.mainhand with air
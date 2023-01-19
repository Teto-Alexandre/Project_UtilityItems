## 死なない、満腹度常時回復、暗視

# ロビー

# 帰還時
execute if entity @s[tag=tmw_501_19_lobby_first] run function ui:tmw/501/19/periodic/lobby_first

# インベントリを定期更新
execute if score $world ui_tc matches 2 run function ui:tmw/501/19/functions/inventory/lobby

# アイテム自動消去
kill @e[type=item,distance=..5]

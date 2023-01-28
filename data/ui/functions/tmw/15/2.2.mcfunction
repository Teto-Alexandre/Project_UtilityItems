# ダイス
    execute store result score $c.dice.max ui_temp run data get storage ui:common temp.max
    execute store result score $c.dice.add ui_temp run data get storage ui:common temp.add
    execute store result score @s ui_d_luck run data get storage ui:common temp.luk
    scoreboard players set $c.dice.dis ui_temp 0
    function ui:common/dice/
    scoreboard players operation $temp ui_temp += @s ui_d_num

# リピート
    scoreboard players remove $mult ui_temp 1
    execute if score $mult ui_temp matches 1.. run function ui:tmw/15/2.2

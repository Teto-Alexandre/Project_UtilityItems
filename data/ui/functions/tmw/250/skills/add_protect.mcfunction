#
    scoreboard players operation $type.temp ui_temp = $type ui_temp
    scoreboard players remove $type.temp ui_temp 10

#
    scoreboard players operation $old ui_temp = @s ui_is
    scoreboard players operation @s ui_is += $type.temp ui_temp

#
    tellraw @a[tag=ui_temp_this] ["",{"text":"MineSquare","color":"gold"},{"text":"> ","color":"green"},{"text":"Protection: ","color":"white"},{"score":{"name":"$old","objective":"ui_temp"},"color":"white"},{"text":" → ","color":"white"},{"score":{"name":"@s","objective":"ui_is"},"color":"white"}]
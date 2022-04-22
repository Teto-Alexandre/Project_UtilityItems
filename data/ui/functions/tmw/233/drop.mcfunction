# バースト回数記録
    execute store result storage ui:temp value int 1 run scoreboard players set $temp ui_temp 5
    item modify entity @s weapon.mainhand ui:temp/tmw.temp
    execute store result score $temp ui_temp run time query gametime
    execute store result storage ui:temp value int 1 run scoreboard players operation $temp ui_temp += #5 ui_num
    item modify entity @s weapon.mainhand ui:temp/tmw.ct
    item modify entity @s weapon.mainhand ui:damage1p
    playsound block.iron_trapdoor.open player @a ~ ~ ~ 0.5 1.4 0
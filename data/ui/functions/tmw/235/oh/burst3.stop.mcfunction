# バースト回数記録
    execute store result score $burst ui_temp run data get storage ui:gun temp.bc
    execute store result score $burst ui_temp store result storage ui:beacongametemp value int 1 run scoreboard players get #0 ui_num
    item modify entity @s weapon.offhand ui:gun/value/now.bc
    execute at @s run playsound block.tripwire.detach player @a ~ ~ ~ 1 1.4 0
    execute at @s run playsound block.iron_trapdoor.open player @a ~ ~ ~ 0.8 1.2 0

# クリック回数リセット
    scoreboard players reset @s ui_use1
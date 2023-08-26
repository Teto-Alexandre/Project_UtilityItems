# バースト回数記録
    execute store result storage ui:temp value int 1 run scoreboard players operation $temp ui_temp -= #1 ui_num
    item modify entity @s weapon.mainhand ui:temp/tmw.temp
    execute store result score $temp ui_temp in overworld run time query gametime
    execute store result storage ui:temp value int 1 run scoreboard players operation $temp ui_temp += #3 ui_num
    item modify entity @s weapon.mainhand ui:temp/tmw.ct
    execute at @s run playsound block.dispenser.launch player @a ~ ~ ~ 0.5 1.8 0

# インベントリ内に矢があるなら
    execute unless score $ammo ui_world matches 1 store result score $success ui_temp run clear @s arrow 1
    execute if score $ammo ui_world matches 1 run scoreboard players set $success ui_temp 1
    execute if score $success ui_temp matches 1 run summon item ~ ~ ~ {Tags:["tmw_233_1"],PortalCooldown:40,Motion:[0.0d,0.8d,0.0d],PickupDelay:30s,Age:-32768s,Item:{id:"minecraft:arrow",Count:1b,tag:{tmw:{id:233,temp:-1}}}}
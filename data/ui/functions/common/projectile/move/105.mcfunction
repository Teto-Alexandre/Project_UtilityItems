# 〇ァンネル！

execute if score @s ui_br matches 21..40 run teleport @s ^ ^ ^
execute if score @s ui_br matches ..20 run teleport @s ^ ^ ^-0.5

particle dust 1 1 1 1 ~ ~ ~ 0.3 0.3 0.3 0 2 force
execute if score @s ui_br matches 1 run data modify storage ui:common temp set value {DisableHit:1,Spread:200,Speed:30,Range:100,FlyParticle:101,EndParticle:101,MultiShot:1,Sound:3}
execute if score @s ui_br matches 1 facing entity @a[gamemode=adventure,tag=!ui_temp_team,sort=nearest,limit=1] feet run function ui:tmw/15/1.2
execute if score @s ui_br matches 11 run data modify storage ui:common temp set value {DisableHit:1,Spread:200,Speed:30,Range:100,FlyParticle:101,EndParticle:101,MultiShot:1,Sound:3}
execute if score @s ui_br matches 11 facing entity @a[gamemode=adventure,tag=!ui_temp_team,sort=nearest,limit=1] feet run function ui:tmw/15/1.2
execute if score @s ui_br matches 21 run data modify storage ui:common temp set value {DisableHit:1,Spread:200,Speed:30,Range:100,FlyParticle:101,EndParticle:101,MultiShot:1,Sound:3}
execute if score @s ui_br matches 21 facing entity @a[gamemode=adventure,tag=!ui_temp_team,sort=nearest,limit=1] feet run function ui:tmw/15/1.2
execute if score @s ui_br matches 31 run data modify storage ui:common temp set value {DisableHit:1,Spread:200,Speed:30,Range:100,FlyParticle:101,EndParticle:101,MultiShot:1,Sound:3}
execute if score @s ui_br matches 31 facing entity @a[gamemode=adventure,tag=!ui_temp_team,sort=nearest,limit=1] feet run function ui:tmw/15/1.2
execute if score @s ui_br matches 41 run data modify storage ui:common temp set value {DisableHit:1,Spread:200,Speed:30,Range:100,FlyParticle:101,EndParticle:101,MultiShot:1,Sound:3}
execute if score @s ui_br matches 41 facing entity @a[gamemode=adventure,tag=!ui_temp_team,sort=nearest,limit=1] feet run function ui:tmw/15/1.2
execute if score @s ui_br matches 51 run data modify storage ui:common temp set value {DisableHit:1,Spread:200,Speed:30,Range:100,FlyParticle:101,EndParticle:101,MultiShot:1,Sound:3}
execute if score @s ui_br matches 51 facing entity @a[gamemode=adventure,tag=!ui_temp_team,sort=nearest,limit=1] feet run function ui:tmw/15/1.2
execute if score @s ui_br matches 61 run data modify storage ui:common temp set value {DisableHit:1,Spread:200,Speed:30,Range:100,FlyParticle:101,EndParticle:101,MultiShot:1,Sound:3}
execute if score @s ui_br matches 61 facing entity @a[gamemode=adventure,tag=!ui_temp_team,sort=nearest,limit=1] feet run function ui:tmw/15/1.2
execute if score @s ui_br matches 71 run data modify storage ui:common temp set value {DisableHit:1,Spread:200,Speed:30,Range:100,FlyParticle:101,EndParticle:101,MultiShot:1,Sound:3}
execute if score @s ui_br matches 71 facing entity @a[gamemode=adventure,tag=!ui_temp_team,sort=nearest,limit=1] feet run function ui:tmw/15/1.2

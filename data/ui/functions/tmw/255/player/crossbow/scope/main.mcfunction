# 精密射撃レベル設定
scoreboard players set @s ui_ct 20
execute if entity @s[nbt={OnGround:0b}] run function ui:tmw/255/player/crossbow/scope/sky
tp @s @s
execute run summon area_effect_cloud ~ ~ ~ {Duration:6000,Age:4,Effects:[{Id:2,Amplifier:0b,Duration:6,ShowParticles:0b}],Tags:["ui","tmw_255.snipe"]}
execute run playsound entity.ender_dragon.flap player @a ~ ~ ~ 0.4 1.8 0
execute run playsound item.spyglass.use player @a ~ ~ ~ 1 0.8 0
execute store result entity @e[tag=tmw_255.snipe,sort=nearest,limit=1] Effects.[0].Amplifier byte 1 run scoreboard players get $temp ui_temp

#
scoreboard players set $success ui_temp 1
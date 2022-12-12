# 精密射撃レベル設定
execute store result score $temp ui_temp run data get storage ui:gun temp.snipe
execute if score $temp ui_temp matches 1.. run tp @s @s
execute if score $temp ui_temp matches 1.. run summon area_effect_cloud ~ ~ ~ {Duration:6000,Age:4,Effects:[{Id:2,Amplifier:0b,Duration:6,ShowParticles:0b}],Tags:["ui","tmw_235.snipe"]}
execute if score $temp ui_temp matches 1.. run playsound entity.ender_dragon.flap player @a ~ ~ ~ 0.4 1.8 0
execute if score $temp ui_temp matches 1.. run playsound item.spyglass.use player @a ~ ~ ~ 1 0.8 0
execute if score $temp ui_temp matches 1.. store result entity @e[tag=tmw_235.snipe,sort=nearest,limit=1] Effects.[0].Amplifier byte 1 run scoreboard players get $temp ui_temp
# 精密射撃レベル設定
tp @s @s
summon area_effect_cloud ~ ~ ~ {Duration:6000,Age:4,Effects:[{Id:2b,Amplifier:0b,Duration:6,ShowParticles:0b}],Tags:["ui","tmw_235.snipe"]}
playsound entity.ender_dragon.flap player @a ~ ~ ~ 0.4 1.8 0
playsound item.spyglass.use player @a ~ ~ ~ 1 0.8 0
execute store result entity @e[tag=tmw_235.snipe,sort=nearest,limit=1] Effects.[0].Amplifier byte 1 run data get entity @s SelectedItem.tag.tmw.gun.snipe
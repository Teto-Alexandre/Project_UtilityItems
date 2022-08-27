# 爆発時
summon firework_rocket ~ ~ ~ {Life:0,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16711680,16756224,16514816],FadeColors:[I;16777215]}]}}}}
particle explosion ~ ~ ~ 0 0 0 0 1 force
effect give @a[scores={ui_tmw_id2=249},distance=..4] glowing 1 0
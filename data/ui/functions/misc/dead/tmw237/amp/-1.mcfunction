# 王が死んだとき

# ドドドンと花火が上がって大爆発
    execute if score @s ui_team matches 2 run summon firework_rocket ~-2 ~ ~-2 {Life:0,LifeTime:10,Motion:[0.0,0.5,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
    execute if score @s ui_team matches 2 run summon firework_rocket ~-2 ~ ~2 {Life:0,LifeTime:14,Motion:[0.0,0.3,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
    execute if score @s ui_team matches 2 run summon firework_rocket ~2 ~ ~-2 {Life:0,LifeTime:16,Motion:[0.0,0.2,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
    execute if score @s ui_team matches 2 run summon firework_rocket ~2 ~ ~2 {Life:0,LifeTime:12,Motion:[0.0,0.4,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
    execute if score @s ui_team matches 2 run summon firework_rocket ~ ~ ~ {Tags:["ui_17_aqua"],Life:0,LifeTime:18,Motion:[0.0,0.1,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
    execute if score @s ui_team matches 2 run tellraw @a {"text":"青チームの勝利！","color":"aqua","bold":true}
    execute if score @s ui_team matches 1 run summon firework_rocket ~-2 ~ ~-2 {Life:0,LifeTime:10,Motion:[0.0,0.6,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16711935,16777215],FadeColors:[I;16777215]}]}}}}
    execute if score @s ui_team matches 1 run summon firework_rocket ~-2 ~ ~2 {Life:0,LifeTime:18,Motion:[0.0,0.2,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16711935,16777215],FadeColors:[I;16777215]}]}}}}
    execute if score @s ui_team matches 1 run summon firework_rocket ~2 ~ ~-2 {Life:0,LifeTime:22,Motion:[0.0,0.0,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16711935,16777215],FadeColors:[I;16777215]}]}}}}
    execute if score @s ui_team matches 1 run summon firework_rocket ~2 ~ ~2 {Life:0,LifeTime:14,Motion:[0.0,0.4,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16711935,16777215],FadeColors:[I;16777215]}]}}}}
    execute if score @s ui_team matches 1 run summon firework_rocket ~ ~ ~ {Tags:["ui_17_pink"],Life:0,LifeTime:18,Motion:[0.0,0.1,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16711935,16777215],FadeColors:[I;16777215]}]}}}}
    execute if score @s ui_team matches 1 run tellraw @a {"text":"赤チームの勝利！","color":"light_purple","bold":true}
    particle explosion_emitter ~ ~1.5 ~ 0 0 0 0 1 force
    playsound entity.generic.explode player @a ~ ~ ~ 5 0.5 0
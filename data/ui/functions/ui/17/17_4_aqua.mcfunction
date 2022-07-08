# ドドドンと花火が上がって大爆発  青勝利演出
    summon firework_rocket ~-2 ~ ~-2 {Life:0,LifeTime:10,Motion:[0.0,0.5,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
    summon firework_rocket ~-2 ~ ~2 {Life:0,LifeTime:14,Motion:[0.0,0.3,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
    summon firework_rocket ~2 ~ ~-2 {Life:0,LifeTime:16,Motion:[0.0,0.2,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
    summon firework_rocket ~2 ~ ~2 {Life:0,LifeTime:12,Motion:[0.0,0.4,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
    summon firework_rocket ~ ~ ~ {Tags:["ui_17_aqua"],Life:0,LifeTime:18,Motion:[0.0,0.1,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
    setblock ~ ~-1 ~ light_blue_concrete
    particle explosion_emitter ~ ~1.5 ~ 0 0 0 0 1 force
    playsound entity.generic.explode player @a ~ ~ ~ 5 0.5 0
    tellraw @a {"text":"青チームの勝利！","color":"aqua","bold":true}
    kill @e[tag=ui_17_2_they]
    kill @e[tag=ui_17_3_they]
    kill @e[tag=ui_17_4_they]
    kill @s
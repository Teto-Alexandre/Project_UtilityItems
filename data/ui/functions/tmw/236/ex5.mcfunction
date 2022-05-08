# 花火
    playsound entity.generic.explode player @a ~ ~ ~ 1 1.8 0
    playsound entity.item.break player @a ~ ~ ~ 1 1.2 0
    particle explosion ~ ~ ~ 0 0 0 0 1 force
    summon firework_rocket ~ ~ ~ {Life:0,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;64511,7535613,11861759],FadeColors:[I;16777215]}]}}}}
    kill @s
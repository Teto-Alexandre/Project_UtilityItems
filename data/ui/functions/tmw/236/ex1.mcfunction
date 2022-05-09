# グレネード
    playsound entity.generic.explode player @a ~ ~ ~ 3 0.6 0
    summon creeper ~ ~ ~ {Fuse:1s,ignited:1b,ExplosionRadius:6,Invulnerable:1b,CustomName:'{"text":"ネオングレネード","color":"aqua"}'}
    particle dust 0.5 1 1 1.5 ~ ~ ~ 2.5 2.5 2.5 0 60 force
    kill @s
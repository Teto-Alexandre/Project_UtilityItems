# 敵の色の羊毛を踏んだ時

# スリップダメージ
    effect clear @s speed
    effect clear @s invisibility
    effect clear @s regeneration
    effect give @s slowness 1 1 true
    #一回消して様子見
    #effect give @s levitation 1 128 true
    execute store result score $health ui_temp run data get entity @s Health -1.5
    data merge storage tds: {temp:{Damage:2.00,DamageType:1,DeathMessage:-1,WeaponName:"",EPF:-1,BypassArmor:0,BypassResistance:false}}
    execute store result storage tds: temp.EPF int 1 run scoreboard players add $health ui_temp 30
    function tds:attack
    scoreboard players set @s ui_st2 0

# 消す
    setblock ~ ~-0.3 ~ white_wool replace

# エフェクト
    execute if score $team ui_temp matches 1 run particle dust_color_transition 0.5 1 1 0.8 0 0 0 ~ ~1 ~ 0.5 0.5 0.5 0 16 normal
    execute if score $team ui_temp matches 2 run particle dust_color_transition 1 0.5 1 0.8 0 0 0 ~ ~1 ~ 0.5 0.5 0.5 0 16 normal
    execute if score $team ui_temp matches 3 run particle dust_color_transition 1 1 0.5 0.8 0 0 0 ~ ~1 ~ 0.5 0.5 0.5 0 16 normal
    execute if score $team ui_temp matches 4 run particle dust_color_transition 0.5 1 0.5 0.8 0 0 0 ~ ~1 ~ 0.5 0.5 0.5 0 16 normal
    playsound block.honey_block.hit player @a ~ ~ ~ 1 0.8 0
    playsound block.honey_block.step player @a ~ ~ ~ 1 0.65 0
    playsound minecraft:item.bucket.fill player @a ~ ~ ~ 1 1.3 0
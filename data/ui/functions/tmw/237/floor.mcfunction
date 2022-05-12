# 敵の色の羊毛を踏んだ時

# スリップダメージ
    effect clear @s speed
    effect clear @s invisibility
    effect clear @s regeneration
    effect give @s slowness 1 3 true
    effect give @s jump_boost 1 129 true
    data merge storage tds: {Damage:2.00,DamageType:1,DeathMessage:-1,WeaponName:"",EPF:-1,BypassArmor:false,BypassResistance:false}
    function tds:attack

# 消す
    setblock ~ ~-0.3 ~ white_wool replace

# エフェクト
    execute if score $color ui_temp matches 1 run particle dust_color_transition 1 0.5 1 0.8 0 0 0 ~ ~1 ~ 0.5 0.5 0.5 0 16 normal
    execute if score $color ui_temp matches 1 run particle block pink_concrete ~ ~1 ~ 0.5 0.5 0.5 0 16 normal
    execute if score $color ui_temp matches 2 run particle dust_color_transition 0.5 1 1 0.8 0 0 0 ~ ~1 ~ 0.5 0.5 0.5 0 16 normal
    execute if score $color ui_temp matches 2 run particle block light_blue_concrete ~ ~1 ~ 0.5 0.5 0.5 0 16 normal
    playsound block.honey_block.hit player @a ~ ~ ~ 1 0.8 0
    playsound block.honey_block.step player @a ~ ~ ~ 1 0.65 0
    playsound minecraft:item.bucket.fill player @a ~ ~ ~ 1 1.3 0
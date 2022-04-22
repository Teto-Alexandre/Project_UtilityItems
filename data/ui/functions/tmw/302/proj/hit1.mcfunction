#攻撃の種類を判別
    tag @s add tds_ether_bullet

#ヒット音
    playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1 1

#ダメージ本体
    data merge storage tds: {Damage:1.00,EPF:-1,BypassArmor:false,BypassResistance:false}
    scoreboard players operation #temp tds_dmg = @e[tag=ui_302_1,sort=nearest,limit=1] ui_dmg
    scoreboard players operation #temp tds_dmg *= #5 ui_num
    execute store result storage tds: Damage float 0.1 run scoreboard players get #temp tds_dmg
    execute at @s run function tds:attack

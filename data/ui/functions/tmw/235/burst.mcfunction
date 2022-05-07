# バースト回数記録
    execute store result score $burst temp store result storage bg:temp value int 1 run data get entity @s SelectedItem.tag.bg.gun.bc
    #tellraw @a {"score":{"name":"$burst","objective":"temp"},"color":"gold"}
    item modify entity @s weapon.mainhand bg:gun/value/now.bc
    #execute at @s run playsound entity.experience_orb.pickup player @a ~ ~ ~ 0.5 1.8 0

# クリック回数リセット
    scoreboard players reset @s player.usec
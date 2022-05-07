# バースト回数記録
    execute store result score $burst ui_temp store result storage ui:beacongametemp value int 1 run data get entity @s SelectedItem.tag.tmw.gun.bc
    #tellraw @a {"score":{"name":"$burst","objective":"ui_temp"},"color":"gold"}
    item modify entity @s weapon.mainhand ui:gun/value/now.bc
    #execute at @s run playsound entity.experience_orb.pickup player @a ~ ~ ~ 0.5 1.8 0

# クリック回数リセット
    scoreboard players reset @s ui_use1
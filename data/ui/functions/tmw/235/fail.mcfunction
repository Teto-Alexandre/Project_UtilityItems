# 発射音
    playsound minecraft:block.dispenser.fail player @a ~ ~ ~ 1 2 0

# クールタイム
    execute unless score $burst ui_temp matches 1 store result storage ui:beacongametemp value int 1 run data get storage ui:gun temp.ct1
    execute if score $burst ui_temp matches 1 store result storage ui:beacongametemp value int 1 run data get storage ui:gun temp.ct2
    item modify entity @s weapon.mainhand ui:gun/value/now.ct
    scoreboard players remove $burst ui_temp 1
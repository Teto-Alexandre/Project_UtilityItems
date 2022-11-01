#頭装備を一瞬で外す演出用

item replace entity @s weapon.mainhand from entity @s armor.head
item replace entity @s armor.head with air

# 発動成功
    #scoreboard players set $success ui_temp 1
summon armor_stand ~ ~ ~ {Tags:["ui_temp_item"]}

scoreboard players set $mod ui_calc1 39
function ui:common/rand
scoreboard players operation $temp ui_temp = $rand ui_calc1
function ui:common/rand
scoreboard players operation $temp2 ui_temp = $rand ui_calc1

execute if score $temp ui_temp matches 0 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s weapon.mainhand
execute if score $temp ui_temp matches 1 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s weapon.offhand
execute if score $temp ui_temp matches 2 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s armor.head
execute if score $temp ui_temp matches 3 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s hotbar.0
execute if score $temp ui_temp matches 4 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s hotbar.1
execute if score $temp ui_temp matches 5 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s hotbar.2
execute if score $temp ui_temp matches 6 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s hotbar.3
execute if score $temp ui_temp matches 7 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s hotbar.4
execute if score $temp ui_temp matches 8 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s hotbar.5
execute if score $temp ui_temp matches 9 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s hotbar.6
execute if score $temp ui_temp matches 10 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s hotbar.7
execute if score $temp ui_temp matches 11 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s hotbar.8
execute if score $temp ui_temp matches 12 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s inventory.0
execute if score $temp ui_temp matches 13 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s inventory.1
execute if score $temp ui_temp matches 14 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s inventory.2
execute if score $temp ui_temp matches 15 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s inventory.3
execute if score $temp ui_temp matches 16 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s inventory.4
execute if score $temp ui_temp matches 17 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s inventory.5
execute if score $temp ui_temp matches 18 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s inventory.6
execute if score $temp ui_temp matches 19 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s inventory.7
execute if score $temp ui_temp matches 20 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s inventory.8
execute if score $temp ui_temp matches 21 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s inventory.9
execute if score $temp ui_temp matches 22 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s inventory.10
execute if score $temp ui_temp matches 23 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s inventory.11
execute if score $temp ui_temp matches 24 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s inventory.12
execute if score $temp ui_temp matches 25 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s inventory.13
execute if score $temp ui_temp matches 26 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s inventory.14
execute if score $temp ui_temp matches 27 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s inventory.15
execute if score $temp ui_temp matches 28 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s inventory.16
execute if score $temp ui_temp matches 29 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s inventory.17
execute if score $temp ui_temp matches 30 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s inventory.18
execute if score $temp ui_temp matches 31 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s inventory.19
execute if score $temp ui_temp matches 32 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s inventory.20
execute if score $temp ui_temp matches 33 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s inventory.21
execute if score $temp ui_temp matches 34 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s inventory.22
execute if score $temp ui_temp matches 35 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s inventory.23
execute if score $temp ui_temp matches 36 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s inventory.24
execute if score $temp ui_temp matches 37 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s inventory.25
execute if score $temp ui_temp matches 38 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.mainhand from entity @s inventory.26

execute if score $temp2 ui_temp matches 0 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s weapon.mainhand
execute if score $temp2 ui_temp matches 1 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s weapon.offhand
execute if score $temp2 ui_temp matches 2 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s armor.head
execute if score $temp2 ui_temp matches 3 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s hotbar.0
execute if score $temp2 ui_temp matches 4 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s hotbar.1
execute if score $temp2 ui_temp matches 5 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s hotbar.2
execute if score $temp2 ui_temp matches 6 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s hotbar.3
execute if score $temp2 ui_temp matches 7 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s hotbar.4
execute if score $temp2 ui_temp matches 8 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s hotbar.5
execute if score $temp2 ui_temp matches 9 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s hotbar.6
execute if score $temp2 ui_temp matches 10 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s hotbar.7
execute if score $temp2 ui_temp matches 11 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s hotbar.8
execute if score $temp2 ui_temp matches 12 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s inventory.0
execute if score $temp2 ui_temp matches 13 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s inventory.1
execute if score $temp2 ui_temp matches 14 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s inventory.2
execute if score $temp2 ui_temp matches 15 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s inventory.3
execute if score $temp2 ui_temp matches 16 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s inventory.4
execute if score $temp2 ui_temp matches 17 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s inventory.5
execute if score $temp2 ui_temp matches 18 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s inventory.6
execute if score $temp2 ui_temp matches 19 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s inventory.7
execute if score $temp2 ui_temp matches 20 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s inventory.8
execute if score $temp2 ui_temp matches 21 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s inventory.9
execute if score $temp2 ui_temp matches 22 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s inventory.10
execute if score $temp2 ui_temp matches 23 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s inventory.11
execute if score $temp2 ui_temp matches 24 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s inventory.12
execute if score $temp2 ui_temp matches 25 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s inventory.13
execute if score $temp2 ui_temp matches 26 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s inventory.14
execute if score $temp2 ui_temp matches 27 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s inventory.15
execute if score $temp2 ui_temp matches 28 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s inventory.16
execute if score $temp2 ui_temp matches 29 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s inventory.17
execute if score $temp2 ui_temp matches 30 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s inventory.18
execute if score $temp2 ui_temp matches 31 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s inventory.19
execute if score $temp2 ui_temp matches 32 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s inventory.20
execute if score $temp2 ui_temp matches 33 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s inventory.21
execute if score $temp2 ui_temp matches 34 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s inventory.22
execute if score $temp2 ui_temp matches 35 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s inventory.23
execute if score $temp2 ui_temp matches 36 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s inventory.24
execute if score $temp2 ui_temp matches 37 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s inventory.25
execute if score $temp2 ui_temp matches 38 run item replace entity @e[tag=ui_temp_item,limit=1] weapon.offhand from entity @s inventory.26

execute if score $temp ui_temp matches 0 run item replace entity @s weapon.mainhand from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 1 run item replace entity @s weapon.offhand from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 2 run item replace entity @s armor.head from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 3 run item replace entity @s hotbar.0 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 4 run item replace entity @s hotbar.1 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 5 run item replace entity @s hotbar.2 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 6 run item replace entity @s hotbar.3 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 7 run item replace entity @s hotbar.4 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 8 run item replace entity @s hotbar.5 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 9 run item replace entity @s hotbar.6 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 10 run item replace entity @s hotbar.7 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 11 run item replace entity @s hotbar.8 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 12 run item replace entity @s inventory.0 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 13 run item replace entity @s inventory.1 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 14 run item replace entity @s inventory.2 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 15 run item replace entity @s inventory.3 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 16 run item replace entity @s inventory.4 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 17 run item replace entity @s inventory.5 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 18 run item replace entity @s inventory.6 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 19 run item replace entity @s inventory.7 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 20 run item replace entity @s inventory.8 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 21 run item replace entity @s inventory.9 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 22 run item replace entity @s inventory.10 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 23 run item replace entity @s inventory.11 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 24 run item replace entity @s inventory.12 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 25 run item replace entity @s inventory.13 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 26 run item replace entity @s inventory.14 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 27 run item replace entity @s inventory.15 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 28 run item replace entity @s inventory.16 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 29 run item replace entity @s inventory.17 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 30 run item replace entity @s inventory.18 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 31 run item replace entity @s inventory.19 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 32 run item replace entity @s inventory.20 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 33 run item replace entity @s inventory.21 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 34 run item replace entity @s inventory.22 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 35 run item replace entity @s inventory.23 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 36 run item replace entity @s inventory.24 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 37 run item replace entity @s inventory.25 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand
execute if score $temp ui_temp matches 38 run item replace entity @s inventory.26 from entity @e[tag=ui_temp_item,limit=1] weapon.offhand

execute if score $temp2 ui_temp matches 0 run item replace entity @s weapon.mainhand from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 1 run item replace entity @s weapon.offhand from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 2 run item replace entity @s armor.head from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 3 run item replace entity @s hotbar.0 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 4 run item replace entity @s hotbar.1 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 5 run item replace entity @s hotbar.2 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 6 run item replace entity @s hotbar.3 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 7 run item replace entity @s hotbar.4 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 8 run item replace entity @s hotbar.5 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 9 run item replace entity @s hotbar.6 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 10 run item replace entity @s hotbar.7 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 11 run item replace entity @s hotbar.8 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 12 run item replace entity @s inventory.0 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 13 run item replace entity @s inventory.1 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 14 run item replace entity @s inventory.2 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 15 run item replace entity @s inventory.3 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 16 run item replace entity @s inventory.4 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 17 run item replace entity @s inventory.5 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 18 run item replace entity @s inventory.6 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 19 run item replace entity @s inventory.7 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 20 run item replace entity @s inventory.8 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 21 run item replace entity @s inventory.9 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 22 run item replace entity @s inventory.10 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 23 run item replace entity @s inventory.11 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 24 run item replace entity @s inventory.12 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 25 run item replace entity @s inventory.13 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 26 run item replace entity @s inventory.14 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 27 run item replace entity @s inventory.15 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 28 run item replace entity @s inventory.16 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 29 run item replace entity @s inventory.17 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 30 run item replace entity @s inventory.18 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 31 run item replace entity @s inventory.19 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 32 run item replace entity @s inventory.20 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 33 run item replace entity @s inventory.21 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 34 run item replace entity @s inventory.22 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 35 run item replace entity @s inventory.23 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 36 run item replace entity @s inventory.24 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 37 run item replace entity @s inventory.25 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand
execute if score $temp2 ui_temp matches 38 run item replace entity @s inventory.26 from entity @e[tag=ui_temp_item,limit=1] weapon.mainhand

kill @e[tag=ui_temp_item,limit=1]

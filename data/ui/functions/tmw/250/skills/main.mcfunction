#
    tag @s add ui_temp_this
    scoreboard players operation $type ui_temp = @s ui_calc1
    scoreboard players operation $obj_id ui_temp = @e[tag=ui_common_mine_square,sort=nearest,limit=1] ui_obj_id
    execute as @e[tag=ui_common_mine_square] if score @s ui_obj_id = $obj_id ui_temp run tag @s add ui_temp_mine_square

#
    execute if score $type ui_temp matches 1 as @e[tag=ui_temp_mine_square,sort=nearest,limit=1] at @s run function ui:tmw/250/skills/detect_mono
    execute if score $type ui_temp matches 2 as @e[tag=ui_temp_mine_square,sort=nearest,limit=1] at @s run function ui:tmw/250/skills/detect_color
    execute if score $type ui_temp matches 3..6 run scoreboard players set $count ui_temp 0
    execute if score $type ui_temp matches 3 as @e[tag=ui_temp_mine_square,sort=nearest,limit=5] at @s run function ui:tmw/250/skills/detect_color
    execute if score $type ui_temp matches 4 as @e[tag=ui_temp_mine_square,tag=!ui_common_mine_square_clear,sort=nearest,limit=9] at @s run function ui:tmw/250/skills/detect_color
    execute if score $type ui_temp matches 5 as @e[tag=ui_temp_mine_square,tag=!ui_common_mine_square_clear,sort=nearest,limit=20] at @s run function ui:tmw/250/skills/detect_color
    execute if score $type ui_temp matches 6 as @e[tag=ui_temp_mine_square,tag=!ui_common_mine_square_clear,sort=nearest,limit=50] at @s run function ui:tmw/250/skills/detect_color
    execute if score $type ui_temp matches 3..6 run tellraw @a[tag=ui_temp_this] ["",{"text":"MineSquare","color":"gold"},{"text":"> ","color":"green"},{"text":"> ","color":"red"},{"score":{"name":"$count","objective":"ui_temp"},"color":"red"},{"text":" Bomb detected ! <","color":"red"}]

    execute if score $type ui_temp matches 11..16 as @e[tag=ui_common_mine_square_core,sort=nearest,limit=1] run function ui:tmw/250/skills/add_protect
    execute if score $type ui_temp matches 21 as @e[tag=ui_temp_mine_square,tag=ui_common_mine_square_bomb,sort=nearest,limit=1] at @s run function ui:tmw/250/skills/defuse_mono
    execute if score $type ui_temp matches 22 as @e[tag=ui_temp_mine_square,tag=ui_common_mine_square_bomb,sort=nearest,limit=2] at @s run function ui:tmw/250/skills/defuse_mono
    execute if score $type ui_temp matches 23 as @e[tag=ui_temp_mine_square,tag=ui_common_mine_square_bomb,sort=nearest,limit=3] at @s run function ui:tmw/250/skills/defuse_color
    execute if score $type ui_temp matches 24 as @e[tag=ui_temp_mine_square,tag=ui_common_mine_square_bomb,sort=nearest,limit=5] at @s run function ui:tmw/250/skills/defuse_color
    execute if score $type ui_temp matches 25 as @e[tag=ui_temp_mine_square,tag=ui_common_mine_square_bomb,sort=nearest,limit=8] at @s run function ui:tmw/250/skills/defuse_color
    execute if score $type ui_temp matches 26 as @e[tag=ui_temp_mine_square,tag=ui_common_mine_square_bomb,sort=nearest,limit=15] at @s run function ui:tmw/250/skills/defuse_color
    execute if score $type ui_temp matches 31 as @e[tag=ui_temp_mine_square,sort=nearest,limit=1] at @s run function ui:tmw/250/skills/radar
    execute if score $type ui_temp matches 32 as @e[tag=ui_temp_mine_square,sort=nearest,limit=1] at @s run function ui:tmw/250/skills/radar2
    execute if score $type ui_temp matches 33 as @e[tag=ui_temp_mine_square,sort=random,limit=5] at @s run function ui:tmw/250/skills/radar2
    execute if score $type ui_temp matches 34 as @e[tag=ui_temp_mine_square,sort=random,limit=7] at @s run function ui:tmw/250/skills/radar3
    execute if score $type ui_temp matches 35 as @e[tag=ui_temp_mine_square,sort=random,limit=9] at @s run function ui:tmw/250/skills/radar4
    execute if score $type ui_temp matches 36 as @e[tag=ui_temp_mine_square,sort=random,limit=10] at @s run function ui:tmw/250/skills/radar5
    execute if score $type ui_temp matches 41 as @e[tag=ui_temp_mine_square,tag=ui_common_mine_square_clear,sort=nearest,limit=1] at @s run function ui:tmw/250/skills/refresh
    execute if score $type ui_temp matches 42 as @e[tag=ui_temp_mine_square,tag=ui_common_mine_square_clear,sort=nearest,limit=4] at @s run function ui:tmw/250/skills/refresh
    execute if score $type ui_temp matches 43 as @e[tag=ui_temp_mine_square,tag=ui_common_mine_square_clear,sort=nearest,limit=12] at @s run function ui:tmw/250/skills/refresh
    execute if score $type ui_temp matches 44 as @e[tag=ui_temp_mine_square,tag=ui_common_mine_square_clear] at @s run function ui:tmw/250/skills/refresh
    execute if score $type ui_temp matches 45 as @e[tag=ui_temp_mine_square,tag=ui_common_mine_square_clear] at @s run function ui:tmw/250/skills/refresh2
    execute if score $type ui_temp matches 46 as @e[tag=ui_temp_mine_square,tag=ui_common_mine_square_clear] at @s run function ui:tmw/250/skills/refresh3

#
    particle firework ~ ~0.9 ~ 0.3 0.3 0.3 0.05 10 force
    playsound block.beacon.activate player @a ~ ~ ~ 1 2
    item replace entity @s weapon.mainhand with air

#
    tag @s remove ui_temp_this
    tag @e[tag=ui_temp_mine_square] remove ui_temp_mine_square

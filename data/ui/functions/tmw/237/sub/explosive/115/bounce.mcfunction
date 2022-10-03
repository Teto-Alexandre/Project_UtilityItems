# 跳ねる
    function ui:tmw/237/sub/explosive/115/explode
    execute rotated ~ -45 run summon marker ^ ^ ^1.5 {Tags:["ui_temp_marker"]}
    execute as @e[tag=ui_temp_marker] run function ui:template/square_shuffle
    execute facing entity @e[tag=ui_temp_marker] feet run function ui:template/accelerator/0.5
    kill @e[tag=ui_temp_marker]
    scoreboard players set @s ui_is -1
    scoreboard players add @s ui_is2 1
# 大鎌 -範囲攻撃-
    execute rotated ~ 0 run particle sweep_attack ^ ^0.5 ^2 2 0 2 0 25 normal
    execute rotated ~ 0 run particle cloud ^ ^0.5 ^2 2 0 2 0.1 5 normal
    execute rotated ~ 0 run particle cloud ^ ^0.5 ^2 2 0 2 0.3 10 normal
    execute rotated ~ 0 run particle cloud ^ ^0.5 ^2 2 0 2 0.5 10 normal

#同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
    scoreboard players operation $team ui_temp = @s ui_team
    execute as @e[predicate=ui:load_unhurtable] if score @s ui_team = $team ui_temp run tag @s add ui_temp_team

# ダメージを与える
    data modify storage ui:temp Name set value '{"text":"範囲攻撃","color":"gray"}'
    scoreboard players set @s ui_bdt 1
    scoreboard players set @s ui_dmg 40
    execute rotated ~ 0 positioned ^ ^ ^2 at @e[distance=..3.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/241/hit

# タグ消し
    tag @e[tag=ui_temp_team] remove ui_temp_team

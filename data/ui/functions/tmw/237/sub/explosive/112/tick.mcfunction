# アクセラレーター

# 常時実行
    execute if score @s ui_is matches 10 run playsound block.lever.click player @a ~ ~ ~ 1 0.9 0
    execute if score @s ui_is matches 15 run playsound entity.evoker.prepare_attack player @a ~ ~ ~ 1 1.4 0
    execute if score @s ui_is matches 70.. run tag @s add ui_237_sub_explode
    #設置数上限デストロイ
    scoreboard players set $count ui_temp 0
    execute as @e[tag=tmw_237_sub] if score @s ui_id = $id ui_temp run scoreboard players add $count ui_temp 1
    execute if score $count ui_temp matches 4.. run function ui:tmw/237/sub/explosive/mult.ex

# 見た目
    scoreboard players operation $time ui_temp = @s ui_is
    scoreboard players operation $time ui_temp %= #10 ui_num
    execute if score @s ui_is matches 10.. if score $team ui_temp matches 1 run function ui:tmw/237/sub/explosive/112/1/master
    execute if score @s ui_is matches 10.. if score $team ui_temp matches 2 run function ui:tmw/237/sub/explosive/112/2/master
    execute if score @s ui_is matches 10.. if score $team ui_temp matches 3 run function ui:tmw/237/sub/explosive/112/3/master
    execute if score @s ui_is matches 10.. if score $team ui_temp matches 4 run function ui:tmw/237/sub/explosive/112/4/master

# 処理終了
    scoreboard players add @s ui_is 1
    execute if score @s ui_is matches 10 run tag @s add ui_237_sub_stop
    execute if score @s ui_is matches 10 run data merge entity @s {NoGravity:1b,Motion:[0.0d,0.01d,0.0d]}
    execute if score @s ui_is matches 11 run data merge entity @s {Motion:[0.0d,0.0d,0.0d]}
    execute if score @s ui_is matches 10 run tag @s add ui_c_acc

# 処理終了
    execute if entity @s[tag=ui_237_sub_explode] run function ui:tmw/237/sub/explosive/112/end
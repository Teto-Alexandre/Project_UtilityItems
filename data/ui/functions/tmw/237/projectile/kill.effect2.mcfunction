# 同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
    scoreboard players operation $team ui_temp = @s ui_team
    execute as @e[predicate=ui:load_unhurtable] if score @s ui_team = $team ui_temp run tag @s add ui_temp_team

# ヒット音
    #execute if score @s ui_hpart matches 0 run playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1 1
    playsound minecraft:block.honey_block.break neutral @a ~ ~ ~ 1 1

# 塗り値を初期化
    scoreboard players set $paint ui_temp 0

# ヒットパーティクル
    execute if score @s ui_hpart matches 1 run function ui:tmw/237/projectile/killeffect/1
    execute if score @s ui_hpart matches 5 run function ui:tmw/237/projectile/killeffect/5
    execute if score @s ui_hpart matches 6 run function ui:tmw/237/projectile/killeffect/6
    execute if score @s ui_hpart matches 7 run function ui:tmw/237/projectile/killeffect/7

# その他
    execute as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_paint += $paint ui_temp

# キル
    kill @s

# 一時タグ削除
    tag @e[tag=ui_temp_team] remove ui_temp_team
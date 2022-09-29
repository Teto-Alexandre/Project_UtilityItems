# 爆発時

# 同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
    tag @s add ui_temp_this
    scoreboard players operation $id ui_temp = @s ui_id
    scoreboard players operation $team ui_temp = @s ui_team
    execute as @e[predicate=ui:load_unhurtable] if score @s ui_team = $team ui_temp run tag @s add ui_temp_team

# ヒット音
    playsound minecraft:block.honey_block.break neutral @a ~ ~ ~ 1 1

# 塗り値を初期化
    scoreboard players set $paint ui_temp 0

# ヒットパーティクル
    function ui:tmw/237/projectile/killeffect/5

# キル
    kill @s

# 一時タグ削除
    tag @s remove ui_temp_this
    tag @e[tag=ui_temp_team] remove ui_temp_team
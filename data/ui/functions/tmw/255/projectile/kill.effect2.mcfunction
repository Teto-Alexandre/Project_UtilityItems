# 同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
    tag @s add ui_temp_this
    scoreboard players operation $id ui_temp = @s ui_id
    scoreboard players operation $team ui_temp = @s ui_team
    execute as @e[predicate=ui:load_unhurtable] if score @s ui_team = $team ui_temp run tag @s add ui_temp_team

# ヒット音
    #execute if score @s ui_hpart matches 0 run playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1 1
    playsound block.stone.break block @a ~ ~ ~ 0.8 1.5
    execute positioned ^ ^ ^-0.5 run particle crit ~ ~ ~ 0 0 0 0.25 1

# 塗り値を初期化
    scoreboard players set $paint ui_temp 0

# ヒットパーティクル
    # サイズ別通常爆発
        execute if score @s ui_hpart matches 3 run function ui:tmw/255/projectile/killeffect/3
        execute if score @s ui_hpart matches 4 run function ui:tmw/255/projectile/killeffect/4
        execute if score @s ui_hpart matches 5 run function ui:tmw/255/projectile/killeffect/5
        execute if score @s ui_hpart matches 6 run function ui:tmw/255/projectile/killeffect/6
        execute if score @s ui_hpart matches 7 run function ui:tmw/255/projectile/killeffect/7
        execute if score @s ui_hpart matches 8 run function ui:tmw/255/projectile/killeffect/8
        execute if score @s ui_hpart matches 9 run function ui:tmw/255/projectile/killeffect/9
        execute if score @s ui_hpart matches 10 run function ui:tmw/255/projectile/killeffect/10
    # 個別
        execute if score @s ui_hpart matches 101 run function ui:tmw/255/projectile/killeffect/101

# その他
    execute if score @s ui_hpart matches ..200 as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_paint += $paint ui_temp

# キル
    kill @s

# 一時タグ削除
    tag @s remove ui_temp_this
    tag @e[tag=ui_temp_team] remove ui_temp_team
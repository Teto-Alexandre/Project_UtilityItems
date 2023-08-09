# 同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
    tag @s add ui_temp_this
    scoreboard players operation $id ui_temp = @s ui_id
    scoreboard players operation $team ui_temp = @s ui_team
    function ui:common/tag_temp_team

# ヒット音
    #execute if score @s ui_hpart matches 0 run playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1 1
    playsound block.stone.break block @a ~ ~ ~ 0.8 1.5
    execute positioned ^ ^ ^-0.5 run particle crit ~ ~ ~ 0 0 0 0.25 1

# ヒットパーティクル
    execute unless score @s ui_hpart matches 0 run function ui:tmw/255/projectile/killeffect/id

# キル
    kill @s

# 一時タグ削除
    tag @s remove ui_temp_this

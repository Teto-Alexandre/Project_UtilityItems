# ドラゴンの各部位が独立している条件の検証用アイテム

# これです
    tag @s add ui_temp_this
    scoreboard players operation $id ui_temp = @s ui_id
    scoreboard players operation $team ui_temp = @s ui_team

# ターゲット出来るエンティティを周囲に表示
    execute at @s as @e[distance=1..100,predicate=ui:load_unhurtable,type=ender_dragon] run function ui:tmw/245/target_marker
    execute at @e[tag=ui_temp_marker] run particle dust 0 1 0 1 ~ ~1.5 ~ 0 0 0 0 1 normal @s
    kill @e[tag=ui_temp_marker]

# タグ消し
    tag @s remove ui_temp_this

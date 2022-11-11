# トリプルトルネード

#>
# ショートカット用
# @private
#declare tag tmw_256_sub_153
#declare tag ui_temp_obj

# 最初idがないなら生成
    execute unless score @s ui_obj_id matches -2147483648..2147483647 run function ui:misc/act/make_obj_id

# idを共有
    scoreboard players operation $obj_id ui_temp = @s ui_obj_id

# 同idにタグ付与
    execute as @e if score @s ui_obj_id = $obj_id ui_temp run tag @s add ui_temp_obj

# 同じidのビットを召喚
    #外側
    execute if score @s ui_uses matches 20 run summon armor_stand ~ ~ ~ {Tags:["ui_temp_this","tmw_256_sub_153_1","ui_temp_obj"],Invisible:1b,NoGravity:1b,Marker:1b}
    #idコピー
    execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_id = $id ui_temp
    execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_obj_id = $obj_id ui_temp
    execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_team = $team ui_temp
    tag @e[tag=ui_temp_this] remove ui_temp_this

# ラインを配置して座標を塗り回転する（これを4回繰り返す）
    scoreboard players set $count ui_temp 6
    scoreboard players operation $age ui_temp = @s ui_uses
    scoreboard players remove $age ui_temp 20
    execute as @e[tag=tmw_256_sub_153_1,tag=ui_temp_obj] at @s if score $age ui_temp matches 1.. run function ui:tmw/256/sub/explosive/153/tick.rotator
    execute as @e[tag=tmw_256_sub_153_1,tag=ui_temp_obj] at @s run teleport @s ~ ~ ~ ~24 ~

# チームを認識
    execute as @e[type=!#ui:notmob] if score @s ui_team = $team ui_temp run tag @s add ui_temp_team
    scoreboard players set $damage ui_temp 40
    scoreboard players operation $temp2 ui_temp = @s ui_uses
    scoreboard players operation $temp2 ui_temp %= #2 ui_num

# 当たり判定
    execute if score $temp2 ui_temp matches 0 if score @s ui_uses matches 21..24 at @e[distance=..2,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/256/sub/explosive/153/hit
    execute if score $temp2 ui_temp matches 0 if score @s ui_uses matches 25..28 at @e[distance=..3,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/256/sub/explosive/153/hit
    execute if score $temp2 ui_temp matches 0 if score @s ui_uses matches 29..32 at @e[distance=..4,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/256/sub/explosive/153/hit
    execute if score $temp2 ui_temp matches 0 if score @s ui_uses matches 33..36 at @e[distance=..5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/256/sub/explosive/153/hit
    execute if score $temp2 ui_temp matches 0 if score @s ui_uses matches 37..40 at @e[distance=..6,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/256/sub/explosive/153/hit

# 音響
    execute if score @s ui_uses matches 2 run playsound block.redstone_torch.burnout player @a ~ ~ ~ 1.2 0.8 0
    execute if score @s ui_uses matches 2 run playsound item.elytra.flying player @a ~ ~ ~ 1 1.8 0
    execute if score @s ui_uses matches 2 run playsound entity.minecart.inside.underwater player @a ~ ~ ~ 2 1.2 0
    execute if score $temp2 ui_temp matches 0 if score @s ui_uses matches 2..30 run playsound block.honey_block.step player @a ~ ~ ~ 1 1.2 0

# チーム識別解除
    tag @e[tag=ui_temp_team] remove ui_temp_team

# 死ぬ(同じidの奴らまとめて)
    execute if score @s ui_uses matches 40.. run tag @s add ui_256_sub_explode
    execute if entity @s[tag=ui_256_sub_explode] run kill @e[tag=ui_temp_obj]
    tag @e[tag=ui_temp_obj] remove ui_temp_obj
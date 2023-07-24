#> ui:tmw/255/projectile/tick
#
# 「飛び道具コモン」で召喚された「防具立て」を管理
#
# @public

# これはこれ
tag @s add ui_temp_this

# キルログを宣言
scoreboard players set $deathmessage ui_temp 0
execute if entity @s[tag=ui_refd,tag=!tmw_255_noref] run scoreboard players set $deathmessage ui_temp 2
execute if entity @s[tag=tmw_255_deathmessage_14] run scoreboard players set $deathmessage ui_temp 1

# 射程うんぬん
scoreboard players operation @s ui_temp = @s ui_bm
scoreboard players operation @s ui_temp += @s ui_bm_temp
scoreboard players operation $rangetype ui_temp = @s ui_gpc

# 攻撃力を計算
scoreboard players operation $damage ui_temp = @s ui_dmg
scoreboard players operation $damage ui_temp *= @s ui_bm
scoreboard players operation $damage ui_temp /= #50 ui_num
scoreboard players operation $damage_type ui_temp = @s ui_bdt
# 破壊力を計算
scoreboard players operation $break ui_temp = $damage ui_temp
scoreboard players operation $break ui_temp *= #2 ui_num
scoreboard players operation $break.max ui_temp = $break ui_temp

# idを共有
scoreboard players operation $id ui_temp = @s ui_id

# 同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
scoreboard players operation $team ui_temp = @s ui_team
execute as @a[predicate=ui:load_unhurtable] if score @s ui_team = $team ui_temp run tag @s add ui_temp_team

# 追加効果
#execute if score @s ui_bmods matches 1.. run function ui:tmw/255/projectile/modifiers

# 重力補正
function ui:tmw/255/projectile/gravity

# tick毎ループ
execute at @s[scores={ui_temp=10..}] run function ui:tmw/255/projectile/move
scoreboard players operation @s ui_bm_temp = @s ui_temp
tag @s[tag=ui_temp_col] remove ui_temp_col

# 破壊力の減り具合を速度に掛ける
#tellraw @a [{"text":"move_airres : "},{"score":{"name":"@s","objective":"ui_bm"}}]
scoreboard players operation @s ui_bm *= $break ui_temp
scoreboard players operation @s ui_bm /= $break.max ui_temp
#tellraw @a [{"text":"move_processed : "},{"score":{"name":"@s","objective":"ui_bm"}},{"text":","},{"text":"Break:","color":"aqua"},{"score":{"name":"$break","objective":"ui_temp"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"$break.max","objective":"ui_temp"},"color":"aqua"}]

# キル条件
#tellraw @a [{"score":{"name":"@s","objective":"ui_br"}},{"text":"<"},{"score":{"name":"@s","objective":"ui_bm"}},{"text":"[res:"},{"score":{"name":"@s","objective":"ui_autohit"}},{"text":"],"},{"text":"Break:","color":"red"},{"score":{"name":"$break","objective":"ui_temp"},"color":"red"},{"text":"/","color":"red"},{"score":{"name":"$break.max","objective":"ui_temp"},"color":"red"},{"text":","},{"text":"Mass:","color":"aqua"},{"score":{"name":"@s","objective":"ui_dmg"},"color":"aqua"}]
#tellraw @a [,{"text":" : "},{"score":{"name":"@s","objective":"ui_bm"}}]
execute if score @s ui_bm <= @s ui_bm_lim at @s run function ui:tmw/255/projectile/end
execute if score @s ui_br_temp >= @s ui_br at @s run function ui:tmw/255/projectile/end

# 一時タグ削除
tag @a[tag=ui_temp_team] remove ui_temp_team
tag @e[tag=ui_temp_this] remove ui_temp_this
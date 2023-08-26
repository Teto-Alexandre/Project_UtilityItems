# タレットアクティベート
scoreboard players set $TurretPlace ui_temp 1
execute store result score $TurretType ui_temp run data get entity @s SelectedItem.tag.tmw.TurretType
execute unless score $TurretType ui_temp matches 1.. run scoreboard players set $TurretType ui_temp 1
scoreboard players operation $obj_id ui_temp = $base ui_obj_id
summon marker ~ ~ ~ {Tags:["tmw_270","tmw_270_core","tmw_270_activator","ui_temp_unpower"]}
execute as @e[tag=ui_temp_unpower] run function ui:misc/act/make_obj_id
scoreboard players operation @e[tag=ui_temp_unpower] ui_id = $id ui_temp
scoreboard players operation @e[tag=ui_temp_unpower] ui_team = $team ui_temp
scoreboard players operation @e[tag=ui_temp_unpower] ui_is = $TurretType ui_temp
scoreboard players set @e[tag=ui_temp_unpower] ui_dhp 100
scoreboard players set @e[tag=ui_temp_unpower] ui_dhpm 100
scoreboard players set $mod ui_calc1 100
function ui:common/rand
scoreboard players operation @e[tag=ui_temp_unpower] ui_is2 = $rand ui_calc1
execute if score $TurretType ui_temp matches 1 as @e[tag=ui_temp_unpower] at @s run function ui:tmw/270/id/type/1
tag @e[tag=ui_temp_unpower] remove ui_temp_unpower
tellraw @a [{"text":"TurretSystem","color": "gray"},{"text": "> ","color": "green"},{"text":"oID","color": "gray"},{"score":{"name": "$obj_id","objective": "ui_temp"},"color": "aqua"},{"text":"のタレットがビルドされました","color": "gray"}]
tellraw @a [{"text":"TurretSystem","color": "gray"},{"score":{"name": "$obj_id","objective": "ui_temp"},"color": "gray"},{"text": "> ","color": "green"},{"text":"ユーザー認証:","color": "gray"},{"score":{"name": "$id","objective": "ui_temp"},"color": "aqua"},{"text":"番,","color": "gray"},{"selector":"@a[tag=ui_temp_player]","color": "gray"},{"text":" 適正ユーザーです","color": "gray"}]
scoreboard players add $tmw270 ui_temp 1
tellraw @a [{"text":"TurretSystem","color": "gray"},{"text": "> ","color": "green"},{"text":"世界タレット数が","color": "gray"},{"score":{"name": "$tmw270","objective": "ui_temp"},"color": "aqua"},{"text":"になりました","color": "gray"}]
execute if score $tmw270 ui_temp matches 1 run tellraw @a [{"text":"TurretSystem","color": "gray"},{"text": "> ","color": "green"},{"text":"tmw270のSSメソッドをロード開始します","color": "gray"}]
schedule function ui:tmw/270/ss/ 1t replace
scoreboard players set $changed ui_temp 1
scoreboard players reset $TurretType ui_temp
scoreboard players reset $TurretPlace ui_temp
playsound ui.button.click player @a ~ ~ ~ 1 1 0
playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 1.4 0

scoreboard players set $type ui_temp 0
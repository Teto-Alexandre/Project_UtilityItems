# "ゲーム開始" だ

# ゲームスタートの初期読み込みをする
tag @s remove tmw_501_19_lobby
tag @s remove tmw_501_19_dead
tag @s add tmw_501_19_battle
tag @s add tmw_501_19_battle_first

# 残機設定
scoreboard players operation @s ui_tmw501_19_now_life = $life ui_tmw501_19_world

# アイテムを消す
item replace entity @s weapon.offhand with air
item replace entity @s armor.head with air
item replace entity @s hotbar.0 with air
item replace entity @s hotbar.1 with air
item replace entity @s hotbar.2 with air
item replace entity @s hotbar.3 with air
item replace entity @s hotbar.4 with air
item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air
item replace entity @s hotbar.7 with air
item replace entity @s hotbar.8 with air
item replace entity @s inventory.0 with air
item replace entity @s inventory.2 with air
item replace entity @s inventory.4 with air
item replace entity @s inventory.6 with air
item replace entity @s inventory.8 with air
item replace entity @s inventory.9 with air
item replace entity @s inventory.17 with air
item replace entity @s inventory.18 with air
item replace entity @s inventory.26 with air

# ID共有
scoreboard players operation $id ui_temp = @s ui_id

# PDA追跡
execute as @e[tag=tmw_501_19_armorstand_pda] if score @s ui_id = $id ui_temp run tag @s add ui_temp_pda

# ポイント読み取り
function ui:tmw/501/19/functions/inventory/point/
execute if score $Return ui_temp matches 0 run tag @s add tmw_501_19_point_over

# データアンカーにプッシュ
data modify entity @e[tag=ui_temp_pda,limit=1] ArmorItems[0].tag.PDA.Inventory set from entity @s Inventory

# PDA追跡解除
tag @e[tag=ui_temp_pda] remove ui_temp_pda
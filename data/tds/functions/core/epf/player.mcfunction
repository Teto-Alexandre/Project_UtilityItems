# プレイヤーのEPFを取得する

# 明示的に0に設定
    scoreboard players set $EPF tds_dmg 0

# ストレージにタグを記入
    data modify storage tds:temp armor_head set from entity @s Inventory[{Slot:103b}].tag
    data modify storage tds:temp armor_chest set from entity @s Inventory[{Slot:102b}].tag
    data modify storage tds:temp armor_legs set from entity @s Inventory[{Slot:101b}].tag
    data modify storage tds:temp armor_feet set from entity @s Inventory[{Slot:100b}].tag

# 共通に処理を飛ばす
    function tds:core/epf/master
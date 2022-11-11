# 武装系ウェポン発動

# スパショ
    execute if score $activator ui_temp matches 401..458 run playsound block.iron_trapdoor.close player @a ~ ~ ~ 2 0.6 0
    execute if score $activator ui_temp matches 401..458 run playsound block.piston.contract player @a ~ ~ ~ 1.5 0.8 0

# ロケッティア
    execute if score $activator ui_temp matches 459 run playsound entity.ender_dragon.growl player @a ~ ~ ~ 1.2 1.5 0
    execute if score $activator ui_temp matches 459 run playsound block.piston.contract player @a ~ ~ ~ 1.5 0.6 0
    execute if score $activator ui_temp matches 459 run playsound block.iron_door.open player @a ~ ~ ~ 2 1.2 0

# ナイスダマ
    execute if score $activator ui_temp matches 460 run playsound block.beacon.activate player @a ~ ~ ~ 1.2 1.5 0
    execute if score $activator ui_temp matches 460 run playsound block.bell.resonate player @a ~ ~ ~ 1.2 1.5 0
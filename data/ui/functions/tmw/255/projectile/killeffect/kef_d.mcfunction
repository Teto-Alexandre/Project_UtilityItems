# ヒットパーティクル

# 個別

# 存在しない
#execute if score @s ui_hpart matches -1
# LiDAR
execute if score @s ui_hpart matches -2 run function ui:tmw/255/projectile/killeffect/downer/2
# 軌道破壊
execute if score @s ui_hpart matches -3 run function ui:tmw/255/projectile/killeffect/downer/3

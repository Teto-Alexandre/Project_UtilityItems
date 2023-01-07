# 使用後に消える武器
execute if score $hand ui_temp matches 0 run item replace entity @s weapon.mainhand with air
execute if score $hand ui_temp matches 1 run item replace entity @s weapon.offhand with air

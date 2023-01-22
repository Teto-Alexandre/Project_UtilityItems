# 最前列の弾の情報を取得
    execute store result score $stack ui_temp run data get storage ui:tmw temp.this.tag.tmw.bullet.Stack
    execute if score $stack ui_temp matches 0 run scoreboard players set $stack ui_temp 1
    scoreboard players operation $magazine ui_temp -= $stack ui_temp
    scoreboard players operation $magazine ui_temp > #0 ui_num
    execute if score $magazine ui_temp matches 1.. run scoreboard players set $add ui_temp 1
    scoreboard players operation $magazine.temp ui_temp = $magazine.max ui_temp

# 銃側の書き込み情報を取得
    data modify storage ui:temp temp set from storage ui:tmw temp.this.tag.tmw.bullets
    execute run data modify storage ui:temp temp set value [{Count:1}]
    execute store result storage ui:temp temp[0].Count int 1 run scoreboard players operation $magazine.temp ui_temp -= $magazine ui_temp
    #tellraw @a [{"score":{"name":"$stack","objective":"ui_temp"}}]

# 書き込み終了
    execute if score $hand ui_temp matches 0 run item modify entity @s weapon.mainhand ui:gun/value/bullets
    execute if score $hand ui_temp matches 1 run item modify entity @s weapon.offhand ui:gun/value/bullets
    scoreboard players set $success ui_temp 1

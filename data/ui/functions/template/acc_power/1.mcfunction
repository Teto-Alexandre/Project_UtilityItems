# マーカー出現
summon marker ^ ^ ^1 {Tags:["ui_temp_template"]}
# 必要データ収集
data modify storage ui:template temp.Pos1 set from entity @s Pos
data modify storage ui:template temp.Pos2 set from entity @e[tag=ui_temp_template,limit=1] Pos

# 計算
execute store result score $temp ui_temp run data get storage ui:template temp.Pos1.[0] 100
execute store result score $temp2 ui_temp run data get storage ui:template temp.Pos2.[0] 100
execute store result storage ui:template temp.Pos1.[0] double 0.01 run scoreboard players operation $temp2 ui_temp -= $temp ui_temp
execute store result score $temp ui_temp run data get storage ui:template temp.Pos1.[1] 100
execute store result score $temp2 ui_temp run data get storage ui:template temp.Pos2.[1] 100
execute store result storage ui:template temp.Pos1.[1] double 0.01 run scoreboard players operation $temp2 ui_temp -= $temp ui_temp
execute store result score $temp ui_temp run data get storage ui:template temp.Pos1.[2] 100
execute store result score $temp2 ui_temp run data get storage ui:template temp.Pos2.[2] 100
execute store result storage ui:template temp.Pos1.[2] double 0.01 run scoreboard players operation $temp2 ui_temp -= $temp ui_temp

# 結果データ入力
data modify entity @s power set from storage ui:template temp.Pos1

# マーカー消し
kill @e[tag=ui_temp_template]

# 一時的ストレージクリア
data remove storage ui:template temp
#$say $(id)
$execute store success score $editing_temp ui_temp run data get storage ui:temp temp.list2[{id:$(id)}]
execute if score $editing_temp ui_temp matches 1.. run tellraw @a[tag=ui_temp_player] ["",{"text":" ▼ ","color":"red"},{"text":"重複が発見されました"}]
execute if score $editing_temp ui_temp matches 1.. run scoreboard players add $editing_deck1 ui_temp 1

execute if score $editing_temp ui_temp matches 0 run data modify storage ui:temp temp.list2 prepend value {id:""}
execute if score $editing_temp ui_temp matches 0 run data modify storage ui:temp temp.list2[0].id set from storage ui:temp temp.list[0].tag.tmw.cg.id

scoreboard players reset $editing_temp ui_temp

#tellraw @a [{"storage":"ui:temp","nbt":"temp.list2"}]
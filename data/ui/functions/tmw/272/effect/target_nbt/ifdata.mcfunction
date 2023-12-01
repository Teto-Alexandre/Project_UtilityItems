# 指定のタグを持つエンティティ以外をターゲットから外す
$execute unless data storage ui:temp temp.effect.target_nbt.invert as @e[tag=ui_temp_players] unless data entity @s $(ifdata) run tag @s add ui_temp_players_no_target
$execute if data storage ui:temp temp.effect.target_nbt.invert as @e[tag=ui_temp_players] if data entity @s $(ifdata) run tag @s add ui_temp_players_no_target

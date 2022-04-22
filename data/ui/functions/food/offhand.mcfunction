#オフハンド検知
    execute as @a[scores={ui_tmw_id2=400..499}] run scoreboard players operation @s ui_tmw_id = @s ui_tmw_id2
    scoreboard players set @a[scores={ui_tmw_id2=400..499},nbt={SelectedItem:{id:"minecraft:cookie"}}] ui_tmw_id 0
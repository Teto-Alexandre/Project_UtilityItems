execute if score $lore_count ui_temp matches 0 run tellraw @a ["",{"selector":"@s"},{"text":"> ","color":"red"},{"text":"["},{"storage":"ui:temp","nbt":"card.name","interpret":true},{"text":"]"}]
execute if score $lore_count ui_temp matches 1 run tellraw @a ["",{"selector":"@s"},{"text":"> ","color":"red"},{"text":"["},{"storage":"ui:temp","nbt":"card.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:temp","nbt":"card.lore[0]","interpret":true}]}},{"text":"]"}]
execute if score $lore_count ui_temp matches 2 run tellraw @a ["",{"selector":"@s"},{"text":"> ","color":"red"},{"text":"["},{"storage":"ui:temp","nbt":"card.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:temp","nbt":"card.name","interpret":true},{"text":"\n"},{"storage":"ui:temp","nbt":"card.lore[0]","interpret":true},{"text":"\n"},{"storage":"ui:temp","nbt":"card.lore[1]","interpret":true}]}},{"text":"]"}]
execute if score $lore_count ui_temp matches 3 run tellraw @a ["",{"selector":"@s"},{"text":"> ","color":"red"},{"text":"["},{"storage":"ui:temp","nbt":"card.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:temp","nbt":"card.name","interpret":true},{"text":"\n"},{"storage":"ui:temp","nbt":"card.lore[0]","interpret":true},{"text":"\n"},{"storage":"ui:temp","nbt":"card.lore[1]","interpret":true},{"text":"\n"},{"storage":"ui:temp","nbt":"card.lore[2]","interpret":true}]}},{"text":"]"}]
execute if score $lore_count ui_temp matches 4 run tellraw @a ["",{"selector":"@s"},{"text":"> ","color":"red"},{"text":"["},{"storage":"ui:temp","nbt":"card.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:temp","nbt":"card.name","interpret":true},{"text":"\n"},{"storage":"ui:temp","nbt":"card.lore[0]","interpret":true},{"text":"\n"},{"storage":"ui:temp","nbt":"card.lore[1]","interpret":true},{"text":"\n"},{"storage":"ui:temp","nbt":"card.lore[2]","interpret":true},{"text":"\n"},{"storage":"ui:temp","nbt":"card.lore[3]","interpret":true}]}},{"text":"]"}]
execute if score $lore_count ui_temp matches 5 run tellraw @a ["",{"selector":"@s"},{"text":"> ","color":"red"},{"text":"["},{"storage":"ui:temp","nbt":"card.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:temp","nbt":"card.name","interpret":true},{"text":"\n"},{"storage":"ui:temp","nbt":"card.lore[0]","interpret":true},{"text":"\n"},{"storage":"ui:temp","nbt":"card.lore[1]","interpret":true},{"text":"\n"},{"storage":"ui:temp","nbt":"card.lore[2]","interpret":true},{"text":"\n"},{"storage":"ui:temp","nbt":"card.lore[3]","interpret":true},{"text":"\n"},{"storage":"ui:temp","nbt":"card.lore[4]","interpret":true}]}},{"text":"]"}]
execute if score $lore_count ui_temp matches 6.. run tellraw @a ["",{"selector":"@s"},{"text":"> ","color":"red"},{"text":"["},{"storage":"ui:temp","nbt":"card.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:temp","nbt":"card.name","interpret":true},{"text":"\n"},{"storage":"ui:temp","nbt":"card.lore[0]","interpret":true},{"text":"\n"},{"storage":"ui:temp","nbt":"card.lore[1]","interpret":true},{"text":"\n"},{"storage":"ui:temp","nbt":"card.lore[2]","interpret":true},{"text":"\n"},{"storage":"ui:temp","nbt":"card.lore[3]","interpret":true},{"text":"\n"},{"storage":"ui:temp","nbt":"card.lore[4]","interpret":true},{"text":"\nこれ以上の表示はサポートしていません! 問い合わせがあれば追加対応を行います","color":"red"}]}},{"text":"]"}]
# ツールと防具に識別子を付ける

# 持っているもの
    scoreboard players set $success ui_temp 0

    execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","wooden_tool","sword"]}}
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_pickaxe"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","wooden_tool","pickaxe","break_tool"]}}
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","wooden_tool","axe","break_tool"]}}
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","wooden_tool","hoe","break_tool"]}}
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_shovel"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","wooden_tool","shovel","break_tool"]}}
    
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","stone_tool","sword"]}}
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_pickaxe"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","stone_tool","pickaxe","break_tool"]}}
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_axe"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","stone_tool","axe","break_tool"]}}
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","stone_tool","hoe","break_tool"]}}
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_shovel"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","stone_tool","shovel","break_tool"]}}
    
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","iron_tool","sword"]}}
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","iron_tool","pickaxe","break_tool"]}}
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_axe"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","iron_tool","axe","break_tool"]}}
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","iron_tool","hoe","break_tool"]}}
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_shovel"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","iron_tool","shovel","break_tool"]}}
    
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_sword"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","golden_tool","sword"]}}
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_pickaxe"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","golden_tool","pickaxe","break_tool"]}}
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_axe"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","golden_tool","axe","break_tool"]}}
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","golden_tool","hoe","break_tool"]}}
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_shovel"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","golden_tool","shovel","break_tool"]}}
    
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","diamond_tool","sword"]}}
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","diamond_tool","pickaxe","break_tool"]}}
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","diamond_tool","axe","break_tool"]}}
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","diamond_tool","hoe","break_tool"]}}
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_shovel"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","diamond_tool","shovel","break_tool"]}}
    
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_sword"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","netherite_tool","sword"]}}
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","netherite_tool","pickaxe","break_tool"]}}
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_axe"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","netherite_tool","axe","break_tool"]}}
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_hoe"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","netherite_tool","hoe","break_tool"]}}
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_shovel"}}] store success score $success ui_temp run data merge storage ui:temp {temp:{Tags:["durable","netherite_tool","shovel","break_tool"]}}

    execute if score $success ui_temp matches 1 run item modify entity @s weapon.mainhand ui:minecraft_tag
    data remove storage ui:temp temp
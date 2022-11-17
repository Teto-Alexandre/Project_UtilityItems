#必須入力値
# data merge storage ui:common {input:{Num:10,Mode:"give",Item:{id:"minecraft:cobblestone",Count:1b}}}

# 耐久値の種別を判定
    execute store result score $common3 ui_temp run data get storage ui:common input.Item.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
    scoreboard players operation $mod ui_calc1 = $common3 ui_temp
    scoreboard players add $mod ui_calc1 2
    function ui:common/rand
    execute if score $rand ui_calc1 matches 2.. run scoreboard players set $num ui_temp 0
    #tellraw @a {"score":{"name":"$common3","objective":"ui_temp"}}
#
scoreboard players operation $is_temp ui_temp = $is ui_temp
scoreboard players operation $is_temp ui_temp /= #2 ui_num
scoreboard players operation $is_temp ui_temp %= #40 ui_num

function ui:template/text_board/open

scoreboard players set $count ui_temp 40
function ui:common/particle/ss/upper/21/loop

execute as @p run function ui:template/text_board/bro_subtitle
execute as @p run title @s title {"text":""}

function ui:template/text_board/close

#
execute if score $is ui_temp matches 20000.. run kill @s
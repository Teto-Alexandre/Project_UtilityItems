# コマンドを実行する
#say a
execute if data storage ui:temp temp.effect.command as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/effect/effect_type/command/simple with storage ui:temp temp.effect
execute if data storage ui:temp temp.effect.list as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/effect/effect_type/command/list

function ui:tmw/272/common/player_remove
tellraw @a[tag=ui_temp_players] ["",{"selector":"@s"},{"text": "が戦線離脱しました"}]
#> ui:common/tag_temp_team
#
# チーム識別タグ付与
#
# @input $team ui_temp - ここにチームを入力
#
# @output ui_temp_team - tag
#
# @public
#declare tag ui_temp_team

#同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
execute unless score $team_last_temped ui_temp = $team ui_temp run function ui:common/tag_temp_team/do
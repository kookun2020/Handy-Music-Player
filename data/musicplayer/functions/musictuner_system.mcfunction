#   Copyright © 2022 kookun

#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at

#       http://www.apache.org/licenses/LICENSE-2.0

#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
##タグ付け
tag @s add tuned
tag @s[tag=snk] add tuned_down
##上限・下限に達したときのtellraw
tellraw @s[tag=tuned,tag=!tuned_down,scores={kkun_mtuner=10..}] {"text":"これ以上ピッチを上げることができません！","color": "dark_red"}
tellraw @s[tag=tuned_down,scores={kkun_mtuner=..-10}] {"text":"これ以上ピッチを下げることができません！","color": "dark_blue"}

##overtuneの検知
tag @s[tag=tuned,scores={kkun_mtuner=10..}] add over_tune
tag @s[tag=tuned,scores={kkun_mtuner=..-10}] add over_tune

##スコア加算・減算
scoreboard players add @s[tag=tuned,tag=!tuned_down,scores={kkun_mtuner=..9}] kkun_mtuner 1
scoreboard players remove @s[tag=tuned_down,scores={kkun_mtuner=-9..}] kkun_mtuner 1

##over_tuneではなかったことに気づくコマンド
tag @s[tag=tuned,scores={kkun_mtuner=-9..9}] remove over_tune

##チューニング時のsound
function musicplayer:fcs/musictuner_sound

##ピッチ変更時のtellraw
execute if entity @s[tag=tuned,tag=!tuned_down] run function musicplayer:fcs/musictuner_uptellraw
execute if entity @s[tag=tuned_down] run function musicplayer:fcs/musictuner_donwtellraw

##タグ消去
tag @s remove tuned
tag @s remove tuned_down
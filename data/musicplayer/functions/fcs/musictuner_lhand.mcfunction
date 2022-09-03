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
##演出
execute at @s anchored eyes positioned ^ ^ ^0.8 run particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 0.5 10
execute at @s run playsound minecraft:block.piston.extend master @s ~ ~ ~ 1 1.4
##triggerの有効化
scoreboard players enable @s tuner_trigger
tag @s add insta_set

##tellraw
tellraw @s [{"text":"Instant_setting","color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"クリックしてピッチを設定しよう！","color":"light_purple"}]}},{"text":"[","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"light_purple"}]}},{"text":"0 ","color":"dark_blue","hoverEvent":{"action":"show_text","contents":[{"text":"ここをクリックでピッチを"},{"text":"0","color":"dark_blue"},{"text":"に設定"}]},"clickEvent":{"action":"run_command","value":"/trigger tuner_trigger set 1"}},{"text":" 0.5 ","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"ここをクリックでピッチを"},{"text":"0.5","color":"blue"},{"text":"に設定"}]},"clickEvent":{"action":"run_command","value":"/trigger tuner_trigger set 2"}},{"text":" 1 ","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"ここをクリックでピッチを"},{"text":"1","color":"aqua"},{"text":"に設定"}]},"clickEvent":{"action":"run_command","value":"/trigger tuner_trigger set 3"}},{"text":" 1.5 ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"ここをクリックでピッチを"},{"text":"1.5","color":"red"},{"text":"に設定"}]},"clickEvent":{"action":"run_command","value":"/trigger tuner_trigger set 4"}},{"text":" 2","color":"dark_red","hoverEvent":{"action":"show_text","contents":[{"text":"ここをクリックでピッチを"},{"text":"2","color":"dark_red"},{"text":"に設定"}]},"clickEvent":{"action":"run_command","value":"/trigger tuner_trigger set 5"}},{"text":"]"}]
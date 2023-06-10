
randomise(); // 初始化随机数

text = "Hello World!"; // 文本

/// * Text Command * \\\

// @
// @@
// @n *line break[not"* "]
// @r *line break["* "]

// {*}
// {wait:time}
// {font:asset_font}
// {voice:asset_voice}
// {page:new}
// {page:next}
// {srm:f/i}
// {effect:shake[amplitude,space_timer]}
// {effect:r_shake[amplitude,space_timer,time,number]}
// {color:all[r32,g32,b32]}
// {color:number[r32,g32,b32]}
// {novoice}
// {canvoice}
// {skip}
// {noskip}
// {canskip}
// {noshadow}
// {canshadow}
// {easeIn:true/false}
// {easeInMode:Up/Down/Left/Right/Alpha}
// {easeOut:true/false}
// {easeOutMode:Up/Down/Left/Right/Alpha}
// {pn:number} --[*pn:printer_number]
// {space_timer:number}
// {script:asset_script}
// {head:head_index}
// {body:body_index}
// {heal:value}
// {hurt:value}
// {...}

text_x = x; // 打印初始x
text_y = y; // 打印初始y

text_font = font_eng; // 打印的字体
text_voice = SND_TXT1; // 打印的音效

text_font_i = text_font; // 打印的字体(初始)
text_font_old = text_voice; // 打印的字体(旧)
text_voice_i = text_voice; // 打印的音效(初始)

printer_count = 0; // 打印文本的位置(包含文本命令)
printer_count_real = 0; // 打印文本的位置(不包含文本命令)

letters = []; // 字符列表

timer = 0;
printer_number = 1; // 一次性打印字符数
printer_number_old = printer_number; // 一次性打印字符数(旧)
printer_number_max = infinity; // 每行最大打印数
space_timer = 4; // 打印间隔时间
space_x = 1; // 打印间隔x
space_y = 1; // 打印每行间隔y

escape = true; // 转义
wait_timer = 0; // 打印等待时间

text_color = array_create(4) // text四个角的颜色数组
for(var index = 0;index < 4;index ++)
{
	text_color[index] = []; // array
	text_color[index][0] = 255; // r
	text_color[index][1] = 255; // g
	text_color[index][2] = 255; // b
}

letter_space = false; // 当前字符是否为空格
cansound = true; // 是否能发音效
canskip = true; // 能否跳过
skip = false; // 是否已跳过
candestroy = true; // 能否销毁
final = false; // 是否已结束打字
final_anim = false; // 是否已结束打字缓动动画
final_end = false; // 是否按下了确定键销毁文本

shake_amplitude = 0; // 抖动幅度
shake_space_timer = 1; // 抖动间隔时间
random_shake_amplitude = 0; // 随机抖动幅度
random_shake_space_timer = 1; // 随机抖动间隔时间
random_shake_timer = 1; // 随机抖动持续时间
random_shake_number = 1; // 一次性随机抖动字符数
random_shake_timer_ = 0; // 随机抖动计时器
shake_random_mode = "float"; // 抖动随机取值模式(float/int)

shadow = false; // 是否有阴影

ease_In = false; // 是否淡入
ease_Out = false; // 是否淡出
ease_In_Mode = "Down"; // 淡入模式
ease_Out_Mode = "Up"; // 淡出模式

page_new = false; // 下一个字符是否为新的一页

draw_spr = ds_list_create()

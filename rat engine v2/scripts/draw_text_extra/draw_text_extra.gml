function draw_text_extra(_x, _y, _string){
var draw_chr = "";
var draw_xstart = round(_x - (100 / 2));
var draw_ystart = round(_y - (1 / 2));
var draw_x = draw_xstart;
var draw_y = draw_ystart;
for (var ltr = 1; ltr <= string_length(_string); ltr += 1;)
{
    draw_chr = string_char_at(_string, ltr);
    if (draw_chr == "[")
    {
		var font_str = ""
		var font_chr = ""
        for (ltr += 1; string_char_at(_string, ltr) != "]"; ++ltr) {
			font_chr = string_char_at(_string, ltr);
			font_str += font_chr
			show_debug_message(string_char_at(_string, ltr))
		}
		show_debug_message(font_str)
		var obj = string_replace(font_str, " ", "")
		obj = string_split(obj, ",")
		var ind = []
		ind[0] = asset_get_index(obj[0])
		if (array_length(obj) == 1)
		{
			draw_set_font(ind[0])
		}
		else
		{
			draw_sprite(ind[0], real(obj[1]), draw_x, draw_y)
			draw_x += sprite_get_width(ind[0])
			show_debug_message("here is your medic")
		}
		ltr += 1
		draw_chr = string_char_at(_string, ltr);
    }
    draw_text(draw_x, draw_y, draw_chr);
    if (draw_chr == "\n")
    {
        draw_x = draw_xstart;
        draw_y += round(60 / 2);
    }
    else
    {
        draw_x += string_width(draw_chr);
    }
}
//credits to the guy on gamemaker forums who made the drawing each letter part, cant find the original post anymore
}

function draw_text_extra_transformed(_x, _y, _string, _xscale, _yscale){
var draw_chr = "";
var draw_xstart = round(_x - (100 / 2));
var draw_ystart = round(_y - (1 / 2));
var draw_x = draw_xstart;
var draw_y = draw_ystart;
for (var ltr = 1; ltr <= string_length(_string); ltr += 1;)
{
    draw_chr = string_char_at(_string, ltr);
    if (draw_chr == "[")
    {
		var font_str = ""
		var font_chr = ""
        for (ltr += 1; string_char_at(_string, ltr) != "]"; ++ltr) {
			font_chr = string_char_at(_string, ltr);
			font_str += font_chr
			show_debug_message(string_char_at(_string, ltr))
		}
		show_debug_message(font_str)
		var obj = string_replace(font_str, " ", "")
		obj = string_split(obj, ",")
		var ind = []
		ind[0] = asset_get_index(obj[0])
		if (array_length(obj) == 1)
		{
			draw_set_font(ind[0])
		}
		else
		{
			draw_sprite(ind[0], real(obj[1]), draw_x, draw_y)
			draw_x += sprite_get_width(ind[0])
			show_debug_message("here is your medic")
		}
		ltr += 1
		draw_chr = string_char_at(_string, ltr);
    }
    draw_text_transformed(draw_x, draw_y, draw_chr, _xscale, _yscale, 0);
    if (draw_chr == "\n")
    {
        draw_x = draw_xstart;
        draw_y += round(60 / 2);
    }
    else
    {
        draw_x += string_width(draw_chr) + _xscale;
    }
}
//credits to the guy on gamemaker forums who made the drawing each letter part, cant find the original post anymore
}
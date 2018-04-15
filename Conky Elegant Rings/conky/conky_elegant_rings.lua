--==============================================================================
--                                 conky_elegant1.lua
--
--  author  : Debianmainuser (from Hardba11 originally)
--  clock author  : Debianmainuser (from Abu Yahya v1.0 05/06/12 originally)
--  version : v20131019
--  license : Distributed under the terms of GNU GPL version 2 or later
--
--==============================================================================

require 'cairo'
--------------------------------------------------------------------------------
--                                                                    clock DATA
coffee_table = {
    {
    name='time',                   arg='%I.%M',                    max_value=12,
    x=130,                          y=85,
    cup_radius=35,
    cup_wall_thickness=90,
    cup_bg_clr=0xffffff,           cup_bg_alpha=0.0,
    cup_fg_clr=0xFFFFFF,           cup_fg_alpha=0.0,
    handle_length=70,              handle_circ=1,
    handle_fg_clr=0xFFFFFF,        handle_fg_alpha=0.0,
    graduation_radius=-60+124,
    graduation_thickness=8,        graduation_mark_circ=1.5,
    graduation_mark_angle=30,
    graduation_fg_clr=0x888888,    graduation_fg_alpha=0.0,
    saucer_thickness=4,            thick_saucer_circ=11/12,    
    saucer_radius=57,	           thin_saucer_circ=11/12,    
    saucer_fg_clr=0x888888,        saucer_fg_alpha=0.3, 
    saucer_mark_fg_clr=0x888888,   saucer_mark_fg_alpha=1.0,
    inner_saucer=true, 
    txt_weight=0,                  txt_size=0,
    txt_fg_clr=0x888888,           txt_fg_alpha=1.0,
    caption='',                    caption2='',
    },
    {
    name='time',                   arg='%M',                    max_value=60,
    x=130,                          y=85,
    cup_radius=55,
    cup_wall_thickness=120,
    cup_bg_clr=0xffffff,           cup_bg_alpha=0.0,
    cup_fg_clr=0xFFFFFF,           cup_fg_alpha=0.0,
    graduation_radius=-60+123,
    graduation_thickness=10,       graduation_mark_circ=2.5,
    graduation_mark_angle=90,
    graduation_fg_clr=0x0FFFFF,    graduation_fg_alpha=0.0,
    handle_length=110,             handle_circ=1,
    handle_fg_clr=0x0FFFFF,        handle_fg_alpha=0.0,
    saucer_thickness=4,            thick_saucer_circ=11/12,
    saucer_radius=72,	           thin_saucer_circ=11/12,    
    saucer_fg_clr=0x0fffff,        saucer_fg_alpha=0.3,
    saucer_mark_fg_clr=0x0FFFFF,   saucer_mark_fg_alpha=1.0,
    txt_weight=0,                  txt_size=8.0,
    txt_fg_clr=0x0FFFFF,           txt_fg_alpha=0.0,
    caption='',                    caption2='',
    },
    {
    name='time',                   arg='%S',                    max_value=60,
    x=130,                          y=85,
    cup_radius=59,
    cup_wall_thickness=120,
    cup_bg_clr=0xffffff,           cup_bg_alpha=0.0,
    cup_fg_clr=0xFFFFFF,      	   cup_fg_alpha=0.0,
    handle_fg_clr=0xFFFFFF,        handle_fg_alpha=0.0,
    handle_length=118,             handle_circ=1,
    graduation_radius=-60+125,
    graduation_thickness=6,        graduation_mark_circ=0.5,
    graduation_mark_angle=6,
    graduation_fg_clr=0xFFFFFF,    graduation_fg_alpha=0.0,
    saucer_thickness=4,		   thick_saucer_circ=1,
    saucer_radius= 65,         thin_saucer_circ=11/12,    
    saucer_fg_clr=0xBD0D0D,        saucer_fg_alpha=0.4,
    saucer_mark_fg_clr=0xFF0202,   saucer_mark_fg_alpha=1.0,
    txt_weight=0,                  txt_size=8.0,
    txt_fg_clr=0xBD0D0D,           txt_fg_alpha=0.0,
    caption='',                    caption2='',
},


}

--------------------------------------------------------------------------------
--                                                                    gauge DATA
gauge = {
{
    name='cpu',                    arg='cpu3',                  max_value=100,
    x=68,                          y=310,
    graph_radius=40,
    graph_thickness=7,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xDAA520,      graph_bg_alpha=0.1,
    graph_fg_colour=0xB8860B,      graph_fg_alpha=0.3,
    hand_fg_colour=0xDAA520,       hand_fg_alpha=0.1,
    txt_radius=64,
    txt_weight=0,                  txt_size=0.0,
    txt_fg_colour=0xEF5A29,        txt_fg_alpha=1.0,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=9.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
},
{
    name='cpu',                    arg='cpu2',                  max_value=100,
    x=68,                          y=310,
    graph_radius=32,
    graph_thickness=7,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0x00FF00,      graph_bg_alpha=0.1,
    graph_fg_colour=0x008000,      graph_fg_alpha=0.3,
    hand_fg_colour=0x00FF00,       hand_fg_alpha=0.1,
    txt_radius=40,
    txt_weight=0,                  txt_size=0.0,
    txt_fg_colour=0xEF5A29,        txt_fg_alpha=1.0,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=9.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
},
{
    name='cpu',                    arg='cpu1',                  max_value=100,
    x=68,                          y=310,
    graph_radius=24,
    graph_thickness=7,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xFFA500,      graph_bg_alpha=0.1,
    graph_fg_colour=0xFF8C00,      graph_fg_alpha=0.3,
    hand_fg_colour=0xFFA500,       hand_fg_alpha=0.1,
    txt_radius=30,
    txt_weight=0,                  txt_size=0.0,
    txt_fg_colour=0xffffff,        txt_fg_alpha=1.0,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=9.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
},
{
    name='cpu',                    arg='cpu0',                  max_value=100,
    x=68,                          y=310,
    graph_radius=16,
    graph_thickness=7,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xFFFFE0,      graph_bg_alpha=0.1,
    graph_fg_colour=0xFFFF00,      graph_fg_alpha=0.3,
    hand_fg_colour=0xFFFFE0,       hand_fg_alpha=0.1,
    txt_radius=4,
    txt_weight=0,                  txt_size=0.0,
    txt_fg_colour=0xffffff,        txt_fg_alpha=1.0,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=9.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
},
{
    name='memperc',                arg='',                      max_value=100,
    x=70,                          y=472,
    graph_radius=32,
    graph_thickness=10,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0x0fffff,      graph_bg_alpha=0.1,
    graph_fg_colour=0x0FFFFF,      graph_fg_alpha=0.5,
    hand_fg_colour=0x0FFFFF,       hand_fg_alpha=0.6,
    txt_radius=20,
    txt_weight=0,                  txt_size=8.2,
    txt_fg_colour=0xFFFFFF,        txt_fg_alpha=0.5,
    graduation_radius=32,
    graduation_thickness=0,        graduation_mark_thickness=2,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.5,
    caption='',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
},
{
    name='fs_used_perc',           arg=' /',                     max_value=100,
    x=70,                          y=580,
    graph_radius=30,
    graph_thickness=7,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0x9400D3,      graph_bg_alpha=0.1,
    graph_fg_colour=0x8B008B,      graph_fg_alpha=0.5,
    hand_fg_colour=0x8B008B,       hand_fg_alpha=0.6,
    txt_radius=42,
    txt_weight=0,                  txt_size=8.0,
    txt_fg_colour=0xFFFFFF,        txt_fg_alpha=0.5,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='/',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.5,
},
{
    name='fs_used_perc',           arg=' /home',                max_value=100,
    x=70,                          y=580,
    graph_radius=22,
    graph_thickness=7,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0x800080,      graph_bg_alpha=0.1,
    graph_fg_colour=0x4B0082,      graph_fg_alpha=0.5,
    hand_fg_colour=0x4B0082,       hand_fg_alpha=0.6,
    txt_radius=10,
    txt_weight=0,                  txt_size=8.0,
    txt_fg_colour=0xFFFFFF,        txt_fg_alpha=0.5,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='/home',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.5,
},
{
    name='downspeedf',           arg='eth0',                     max_value=100,
    x=70,                          y=730,
    graph_radius=30,
    graph_thickness=7,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0x04B504,      graph_bg_alpha=0.2,
    graph_fg_colour=0x00FF00,      graph_fg_alpha=0.3,
    hand_fg_colour=0x04B504,       hand_fg_alpha=0.2,
    txt_radius=38,
    txt_weight=0,                  txt_size=0.0,
    txt_fg_colour=0xffffff,        txt_fg_alpha=0.5,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=9.3,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.5,
},
{
    name='upspeedf',           arg='eth0',                     max_value=100,
    x=70,                          y=730,
    graph_radius=22,
    graph_thickness=7,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xBD0D0D,      graph_bg_alpha=0.2,
    graph_fg_colour=0xFF0202,      graph_fg_alpha=0.3,
    hand_fg_colour=0xBD0D0D,       hand_fg_alpha=0.2,
    txt_radius=12,
    txt_weight=0,                  txt_size=0.0,
    txt_fg_colour=0xffffff,        txt_fg_alpha=0.5,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=9.3,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.5,
},
}

-------------------------------------------------------------------------------
--                                                                 rgb_to_r_g_b
-- converts color in hexa to decimal
--
function rgb_to_r_g_b(colour, alpha)
    return ((colour / 0x10000) % 0x100) / 255., ((colour / 0x100) % 0x100) / 255., (colour % 0x100) / 255., alpha
end

-------------------------------------------------------------------------------
--                                                            angle_to_position
-- convert degree to rad and rotate (0 degree is top/north)
--
function angle_to_position(start_angle, current_angle)
    local pos = current_angle + start_angle
    return ( ( pos * (2 * math.pi / 360) ) - (math.pi / 2) )
end

-------------------------------------------------------------------------------
--                                                              draw_clock_ring
-- displays clock
--
local function draw_coffee_table(display, data, value) 
     max_value = data['max_value']
     x, y = data['x'], data['y']
     if x==nil then x=conky_window.width/2 end
     if y==nil then y=conky_window.height/2 end	
     cup_radius = data['cup_radius']    
     if cup_radius==nil then cup_radius=conky_window.width/4 end	
     cup_wall_thickness = data['cup_wall_thickness']
     if cup_wall_thickness==nil then cup_wall_thickness=20 end
     handle_length, handle_circ = data['handle_length'], data['handle_circ']
     if handle_length==nil then handle_length=20 end
     if handle_circ==nil then handle_circ=1 end
     cup_start_angle = data['cup_start_angle']
     if cup_start_angle == nil then cup_start_angle =0 end
     total_angle = data['total_angle']
     if total_angle == nil then total_angle=360 end
     cup_sector_angle = (math.abs(total_angle))/max_value  
     cup_end_angle = total_angle + cup_start_angle
     cup_bg_clr, cup_bg_alpha = data['cup_bg_clr'], data['cup_bg_alpha']
     if cup_bg_clr==nil then cup_bg_clr =0xffffff end
     cup_fg_clr, cup_fg_alpha = data['cup_fg_clr'], data['cup_fg_alpha']
     if cup_fg_clr==nil then cup_fg_clr =0xffffff end
     if cup_fg_alpha==nil then cup_fg_alpha=0 end
     handle_fg_clr, handle_fg_alpha = data['handle_fg_clr'], data['handle_fg_alpha']  
     if handle_fg_clr==nil then handle_fg_clr = 0xffffff end
     if handle_fg_alpha==nil then handle_fg_alpha=0 end
     
     saucer_radius = data['saucer_radius']
     if saucer_radius==nil then saucer_radius=conky_window.width/2 end 
     total_saucer_angle=data['total_saucer_angle']
     if total_saucer_angle==nil then total_saucer_angle=360 end 
     saucer_sector_angle=(math.abs(total_saucer_angle))/max_value  
     saucer_thickness = data['saucer_thickness']
     if saucer_thickness==nil then saucer_thickness=6 end
     saucer_fg_clr = data['saucer_fg_clr']
     if saucer_fg_clr ==nil then saucer_fg_clr=0 end
     saucer_fg_alpha = data['saucer_fg_alpha']
     if saucer_fg_alpha ==nil then saucer_fg_alpha=0 end
     
     saucer_mark_fg_alpha = data['saucer_mark_fg_alpha']
     if saucer_mark_fg_alpha ==nil then saucer_mark_fg_alpha=0 end
     saucer_mark_fg_clr = data['saucer_mark_fg_clr']
     if saucer_mark_fg_clr ==nil then saucer_mark_fg_clr=0xffffff end
     thick_saucer_circ = data['thick_saucer_circ']
     if thick_saucer_circ==nil then thick_saucer_circ =0.9 end
     thin_saucer_circ = data['thin_saucer_circ']
     if thin_saucer_circ==nil then thin_saucer_circ =0.9 end
     inner_saucer = data['inner_saucer']
     
     graduation_radius = data['graduation_radius']
     if graduation_radius ==nil then graduation_radius = conky_window.width/3 end
     graduation_thickness, graduation_mark_circ = data['graduation_thickness'], data['graduation_mark_circ']
     if graduation_thickness ==nil then graduation_thickness = 2 end
     if graduation_mark_circ ==nil then graduation_mark_circ = 1 end
     graduation_mark_angle = data['graduation_mark_angle']
     if graduation_mark_angle == nil then graduation_mark_angle = total_angle/10 end
     graduation_fg_clr, graduation_fg_alpha = data['graduation_fg_clr'], data['graduation_fg_alpha']
     if graduation_fg_clr ==nil then graduation_fg_clr= 0xffffff end
     if graduation_fg_alpha==nil then graduation_fg_alpha =0 end
     
     
     txt_weight, txt_size = data['txt_weight'], data['txt_size']
     if txt_weight == nil then txt_weight=1 end
     if txt_size == nil then txt_size=8 end
     txt_fg_clr, txt_fg_alpha = data['txt_fg_clr'], data['txt_fg_alpha']
     if txt_fg_clr ==nil then txt_fg_clr= 0xffffff end
     if txt_fg_alpha==nil then txt_fg_alpha =0 end
     caption = data['caption']
     if caption==nil then caption='' end
     caption2 = data['caption2']
     if caption2==nil then caption2='' end
     xtxt, ytxt= data ['xtxt'], data['ytxt']
     if xtxt ==nil then xtxt=0 end
     if ytxt ==nil then ytxt=0 end

--convert degree to rad and rotate (0 degree is top/north)
    function angle_to_position(start_angle, current_angle)    
      if total_angle < 0 then 
        local pos = start_angle - current_angle
        return ( ( pos * (math.pi / 180) ) - (math.pi / 2) )
      else 
        local pos = current_angle + start_angle 
        return ( ( pos * (math.pi / 180) ) - (math.pi / 2) ) 
      end   
    end
--cup centre background    
  if cup_bg_alpha >0   then
    if total_angle < 0 then
      cairo_arc_negative(display, x, y, cup_radius, angle_to_position(cup_start_angle, 0), angle_to_position(cup_end_angle, 0))
    else
      cairo_arc(display, x, y, cup_radius, angle_to_position(cup_start_angle, 0), angle_to_position(cup_start_angle, cup_end_angle))
    end
    cairo_set_source_rgba(display, rgb_to_r_g_b(cup_bg_clr, cup_bg_alpha))
    cairo_set_line_width(display, cup_wall_thickness)
    cairo_stroke(display)
  end 
--cup wall fg    
  if cup_fg_alpha > 0 then 
   local fg_stop_arc = (cup_sector_angle * value)
    if total_angle < 0 then
	cairo_arc_negative(display, x, y, cup_radius, angle_to_position(cup_start_angle, 0), angle_to_position(cup_start_angle, fg_stop_arc))
    else
	cairo_arc(display, x, y, cup_radius, angle_to_position(cup_start_angle, 0), angle_to_position(cup_start_angle, fg_stop_arc))
    end
    cairo_set_source_rgba(display, rgb_to_r_g_b(cup_fg_clr, cup_fg_alpha))
    cairo_set_line_width(display, cup_wall_thickness)
    cairo_stroke(display)
  end
-- cup handle
  if handle_fg_alpha>0 then 
    local start_handle = (cup_sector_angle * value) - (handle_circ*0.5)
    local stop_handle = (cup_sector_angle * value) +  (handle_circ*0.5)
    if total_angle < 0 then
	cairo_arc_negative(display, x, y, cup_radius, angle_to_position(cup_start_angle, start_handle), angle_to_position(cup_start_angle, stop_handle))
    else
	cairo_arc(display, x, y, cup_radius, angle_to_position(cup_start_angle, start_handle), angle_to_position(cup_start_angle, stop_handle))
    end
    cairo_set_line_width(display, handle_length)    
    cairo_set_source_rgba(display, rgb_to_r_g_b(handle_fg_clr, handle_fg_alpha))
    cairo_stroke(display)
  end
--saucers   
---thick saucer     
    if saucer_fg_alpha > 0 and (thin_saucer_circ >0 or thick_saucer_circ > 0)
      then 
	if value < (max_value/2) 
        then j = value + ((max_value*total_saucer_angle)/720)
        else j = value - ((max_value*total_saucer_angle)/720)
	end
	
    local start_saucer = (saucer_sector_angle * j) - (value*saucer_sector_angle*0.5*thick_saucer_circ)
    local stop_saucer = (saucer_sector_angle * j) + (value*saucer_sector_angle*0.5*thick_saucer_circ)
    if total_angle < 0 then
	cairo_arc_negative(display, x, y, saucer_radius, angle_to_position(cup_start_angle, start_saucer), angle_to_position(cup_start_angle, stop_saucer))
    else
	cairo_arc(display, x, y, saucer_radius, angle_to_position(cup_start_angle, start_saucer), angle_to_position(cup_start_angle, stop_saucer))
    end
    cairo_set_source_rgba(display, rgb_to_r_g_b(saucer_fg_clr, saucer_fg_alpha))
    cairo_set_line_width(display, saucer_thickness)
    cairo_stroke(display)
    --thin saucer
      if inner_saucer == true 
      then rt = (saucer_radius - 0.5) + (0.5 * saucer_thickness)
      else rt = (saucer_radius + 0.5) - (0.5 * saucer_thickness)  
      end
    local start_thin_saucer = (saucer_sector_angle * j) - (max_value *0.5*saucer_sector_angle*thin_saucer_circ)
    local stop_thin_saucer = (saucer_sector_angle * j) + (max_value *0.5*saucer_sector_angle*thin_saucer_circ)
    if total_angle < 0 then
	cairo_arc_negative(display, x, y, rt, angle_to_position(cup_start_angle, start_thin_saucer), angle_to_position(cup_start_angle, stop_thin_saucer))
    else
	cairo_arc(display, x, y, rt, angle_to_position(cup_start_angle, start_thin_saucer), angle_to_position(cup_start_angle, stop_thin_saucer))
    end
    cairo_set_source_rgba(display, rgb_to_r_g_b(saucer_fg_clr, saucer_fg_alpha))
    cairo_set_line_width(display, 1)
    cairo_stroke(display)
   end
--saucer mark
    if saucer_mark_fg_alpha > 0 then 
	local start_cm = (saucer_sector_angle * value) - (handle_circ *0.5 )
	local stop_cm = (saucer_sector_angle * value) + (handle_circ *0.5 )
	if total_angle < 0 then
	  cairo_arc_negative(display, x, y, saucer_radius, angle_to_position(cup_start_angle, start_cm), angle_to_position(cup_start_angle, stop_cm))
	else
	  cairo_arc(display, x, y, saucer_radius, angle_to_position(cup_start_angle, start_cm), angle_to_position(cup_start_angle, stop_cm))
	end
	cairo_set_source_rgba(display, rgb_to_r_g_b(saucer_mark_fg_clr, saucer_mark_fg_alpha))
        cairo_set_line_width(display, saucer_thickness)
        cairo_stroke(display)
    end 
--graduation mark 
     if graduation_radius > 0 and graduation_thickness > 0 and graduation_mark_angle > 0 then
        number_graduation = (math.abs(total_angle) +1)/ graduation_mark_angle
        local start_arc_grad = 0
        local stop_arc_grad = 0
	local i = 0
        while i < number_graduation do            
            local start_arc_grad = (graduation_mark_angle * (i)) - (graduation_mark_circ *0.5)
            local stop_arc_grad = (graduation_mark_angle * (i)) + (graduation_mark_circ *0.5)
            if total_angle < 0 then
	      cairo_arc_negative(display, x, y, graduation_radius, angle_to_position(cup_start_angle, start_arc_grad), angle_to_position(cup_start_angle, stop_arc_grad))
	    else
	      cairo_arc(display, x, y, graduation_radius, angle_to_position(cup_start_angle, start_arc_grad), angle_to_position(cup_start_angle, stop_arc_grad))
	    end
	    cairo_set_source_rgba(display,rgb_to_r_g_b(graduation_fg_clr,graduation_fg_alpha))
            cairo_set_line_width(display, graduation_thickness)
	    cairo_stroke(display)            
            i = i + 1
        end
    end   
-- text
  if txt_fg_alpha>0 then 
    cairo_select_font_face (display, "hooge 05_53", CAIRO_FONT_SLANT_NORMAL, txt_weight);
    cairo_set_font_size (display,txt_size)
    cairo_set_source_rgba (display, rgb_to_r_g_b(txt_fg_clr, txt_fg_alpha))
    cairo_move_to (display,x+xtxt,y+ytxt)
    cairo_show_text (display, caption ) cairo_show_text (display,value)cairo_show_text (display, caption2 )
    cairo_stroke (display)
  end
end

-------------------------------------------------------------------------------
--                                                              draw_gauge_ring
-- displays gauges
--
function draw_gauge_ring(display, data, value)
    local max_value = data['max_value']
    local x, y = data['x'], data['y']
    local graph_radius = data['graph_radius']
    local graph_thickness, graph_unit_thickness = data['graph_thickness'], data['graph_unit_thickness']
    local graph_start_angle = data['graph_start_angle']
    local graph_unit_angle = data['graph_unit_angle']
    local graph_bg_colour, graph_bg_alpha = data['graph_bg_colour'], data['graph_bg_alpha']
    local graph_fg_colour, graph_fg_alpha = data['graph_fg_colour'], data['graph_fg_alpha']
    local hand_fg_colour, hand_fg_alpha = data['hand_fg_colour'], data['hand_fg_alpha']
    local graph_end_angle = (max_value * graph_unit_angle) % 360

    -- background ring
    cairo_arc(display, x, y, graph_radius, angle_to_position(graph_start_angle, 0), angle_to_position(graph_start_angle, graph_end_angle))
    cairo_set_source_rgba(display, rgb_to_r_g_b(graph_bg_colour, graph_bg_alpha))
    cairo_set_line_width(display, graph_thickness)
    cairo_stroke(display)

    -- arc of value
    local val = value % (max_value + 1)
    local start_arc = 0
    local stop_arc = 0
    local i = 1
    while i <= val do
        start_arc = (graph_unit_angle * i) - graph_unit_thickness
        stop_arc = (graph_unit_angle * i)
        cairo_arc(display, x, y, graph_radius, angle_to_position(graph_start_angle, start_arc), angle_to_position(graph_start_angle, stop_arc))
        cairo_set_source_rgba(display, rgb_to_r_g_b(graph_fg_colour, graph_fg_alpha))
        cairo_stroke(display)
        i = i + 1
    end
    local angle = start_arc

    -- hand
    start_arc = (graph_unit_angle * val) - (graph_unit_thickness * 2)
    stop_arc = (graph_unit_angle * val)
    cairo_arc(display, x, y, graph_radius, angle_to_position(graph_start_angle, start_arc), angle_to_position(graph_start_angle, stop_arc))
    cairo_set_source_rgba(display, rgb_to_r_g_b(hand_fg_colour, hand_fg_alpha))
    cairo_stroke(display)

    -- graduations marks
    local graduation_radius = data['graduation_radius']
    local graduation_thickness, graduation_mark_thickness = data['graduation_thickness'], data['graduation_mark_thickness']
    local graduation_unit_angle = data['graduation_unit_angle']
    local graduation_fg_colour, graduation_fg_alpha = data['graduation_fg_colour'], data['graduation_fg_alpha']
    if graduation_radius > 0 and graduation_thickness > 0 and graduation_unit_angle > 0 then
        local nb_graduation = graph_end_angle / graduation_unit_angle
        local i = 0
        while i < nb_graduation do
            cairo_set_line_width(display, graduation_thickness)
            start_arc = (graduation_unit_angle * i) - (graduation_mark_thickness / 2)
            stop_arc = (graduation_unit_angle * i) + (graduation_mark_thickness / 2)
            cairo_arc(display, x, y, graduation_radius, angle_to_position(graph_start_angle, start_arc), angle_to_position(graph_start_angle, stop_arc))
            cairo_set_source_rgba(display,rgb_to_r_g_b(graduation_fg_colour,graduation_fg_alpha))
            cairo_stroke(display)
            cairo_set_line_width(display, graph_thickness)
            i = i + 1
        end
    end

    -- text
    local txt_radius = data['txt_radius']
    local txt_weight, txt_size = data['txt_weight'], data['txt_size']
    local txt_fg_colour, txt_fg_alpha = data['txt_fg_colour'], data['txt_fg_alpha']
    local movex = txt_radius * math.cos(angle_to_position(graph_start_angle, angle))
    local movey = txt_radius * math.sin(angle_to_position(graph_start_angle, angle))
    cairo_select_font_face (display, "ubuntu", CAIRO_FONT_SLANT_NORMAL, txt_weight)
    cairo_set_font_size (display, txt_size)
    cairo_set_source_rgba (display, rgb_to_r_g_b(txt_fg_colour, txt_fg_alpha))
    cairo_move_to (display, x + movex - (txt_size / 2), y + movey + 3)
    cairo_show_text (display, value)
    cairo_stroke (display)

    -- caption
    local caption = data['caption']
    local caption_weight, caption_size = data['caption_weight'], data['caption_size']
    local caption_fg_colour, caption_fg_alpha = data['caption_fg_colour'], data['caption_fg_alpha']
    local tox = graph_radius * (math.cos((graph_start_angle * 2 * math.pi / 360)-(math.pi/2)))
    local toy = graph_radius * (math.sin((graph_start_angle * 2 * math.pi / 360)-(math.pi/2)))
    cairo_select_font_face (display, "ubuntu", CAIRO_FONT_SLANT_NORMAL, caption_weight);
    cairo_set_font_size (display, caption_size)
    cairo_set_source_rgba (display, rgb_to_r_g_b(caption_fg_colour, caption_fg_alpha))
    cairo_move_to (display, x + tox + 5, y + toy + 1)
    -- bad hack but not enough time !
    if graph_start_angle < 105 then
        cairo_move_to (display, x + tox - 30, y + toy + 1)
    end
    cairo_show_text (display, caption)
    cairo_stroke (display)
end

-------------------------------------------------------------------------------
--                                                               go_clock_rings
-- loads data and displays clock
--
function display_coffee_table(display)
    local function load_coffee_table(display, data)
        local str, value = '', 0       
	if data['name'] == 'time2' then
	    local max_value = data['max_value']
            str = string.format('${time %s}', data['arg'])
            str = conky_parse(str)
            local value2 = tonumber(str:sub(0,2))
	    if value2 == max_value then value2 = 0 end
	    value = value2 + (tonumber(str:sub(4,5))/60)        	    
	else
            str = string.format('${%s %s}',data['name'], data['arg'])
            str = conky_parse(str)
            value = tonumber(str)
        end 	
        if value == nil then value = 0 end
        draw_coffee_table(display, data, value)
    end
    for i in pairs(coffee_table) do
        load_coffee_table(display, coffee_table[i])
    end
end

-------------------------------------------------------------------------------
--                                                               go_gauge_rings
-- loads data and displays gauges
--
function go_gauge_rings(display)
    local function load_gauge_rings(display, data)
        local str, value = '', 0
        str = string.format('${%s %s}',data['name'], data['arg'])
        str = conky_parse(str)
        value = tonumber(str)
        draw_gauge_ring(display, data, value)
    end
    
    for i in pairs(gauge) do
        load_gauge_rings(display, gauge[i])
    end
end

-------------------------------------------------------------------------------
--                                                                         MAIN
runscheck = 0 -- fix for draw shades running script twice on every update
function conky_main()
    if conky_window == nil then 
        return
    end
    local cs = cairo_xlib_surface_create(conky_window.display, conky_window.drawable, conky_window.visual, conky_window.width, conky_window.height)
    local display = cairo_create(cs)
    local updates = conky_parse('${updates}')
    update_num = tonumber(updates)
    if update_num > 5 then
      go_gauge_rings(display)
      cairo_set_antialias (display, CAIRO_ANTIALIAS_SUBPIXEL)
      display_coffee_table(display)
      cairo_set_antialias (display, CAIRO_ANTIALIAS_DEFAULT)
    end    
    cairo_surface_destroy(cs)
    cairo_destroy(display)
end


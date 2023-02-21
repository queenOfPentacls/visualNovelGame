if(debugmode) {
	draw_set_alpha(1);
	draw_set_font(-1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	gpu_set_blendmode_ext(bm_src_alpha, bm_inv_src_alpha);
	draw_text(0,0,"FPS: " + string(fps));
	gpu_set_blendmode(bm_normal);
}
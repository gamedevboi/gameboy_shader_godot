shader_type canvas_item;


uniform vec4 color_1 : hint_color;
uniform vec4 color_2 : hint_color;
uniform vec4 color_3 : hint_color;
uniform vec4 color_4 : hint_color;



void fragment() {
	
	//get the color of every pixel on screen
	vec4 screenpix_color = texture(SCREEN_TEXTURE, SCREEN_UV);
	
	//Taking the average color will return a value that if we use it it will make everything grayscale
	float grayscale_value = (screenpix_color.r + screenpix_color.g + screenpix_color.b) / 3.0;
	
	//If you plug the grayscake_value into COLOR it paints it gray
//    COLOR = vec4(grayscale_value,grayscale_value,grayscale_value,1.0);
	
	
	
	
	if(grayscale_value <0.25){
		COLOR = color_1
	}
	else if(grayscale_value <0.50){
		COLOR = color_2
	}
	else if(grayscale_value <0.75){
		COLOR = color_3
	}
	else if(grayscale_value <1.0){
		COLOR = color_4
	}
	
	
	}
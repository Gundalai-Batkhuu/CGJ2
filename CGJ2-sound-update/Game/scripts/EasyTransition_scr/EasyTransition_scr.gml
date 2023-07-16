
// DICORD - Eneskp3441#3573
// Itch.io : https://bit.ly/3w377KW
// Tw       : https://twitter.com/Eneskp3441
// Github: https://bit.ly/3jimBbh

/* MIT LICENSE
Copyright 2021 ENES KAPLAN

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.*/

global.__TransitionData				= {
	sequence_id		: -1,
	spd				: 1,
	reversed		: 0,
	width			: 1920,
	height			: 1080,
	start_action	: function(){},
	end_action		: function(){},
}

function easy_transition(sequence_id_,		spd_,		reversed_,  width_, height_,		start_action_,		end_action_){
		if start_action_ == -1 start_action_ = function(){};
		if end_action_ == -1 end_action_ = function(){};
		global.__TransitionData				= {
			sequence_id		: sequence_id_,
			spd				: spd_,
			reversed		: reversed_,
			width			: width_,
			height			: height_,
			start_action	: start_action_,
			end_action		: end_action_,
		}	
		if !instance_exists(EasyTransition_obj) {
			var transition = instance_create_depth(0,0,-9999, EasyTransition_obj);
			return transition;
		}
		return -1;
}



function easy_transition_get_current_frame(transition_id){
		if instance_exists(transition_id) {
			return layer_sequence_get_headpos(transition_id.transition_sequence);
		}
		return -1;
	
}

function easy_transition_destroy(transition_id){
		if instance_exists(transition_id) instance_destroy(transition_id);
	
}

// CREATE LAYER FOR TRANSITION
if layer_exists("EasyTransition") layer_destroy("EasyTransition");
transition_layer			= layer_create(-9999, "EasyTransition");

// GET TRANSITION DATA
transition_data				= global.__TransitionData;

// RUN TRANSITION ACTION
transition_data.start_action();

// CREATE TRANSITION
transition_sequence			= layer_sequence_create(transition_layer, camera_get_view_width(view_camera[0])/2,camera_get_view_height(view_camera[0])/2, transition_data.sequence_id);


var reverse = transition_data.reversed == 1 ? -1 : 0;
var pos		= reverse == -1 ? layer_sequence_get_length(transition_sequence) : 0;
layer_sequence_headdir(transition_sequence, reverse);
layer_sequence_pause(transition_sequence);
layer_sequence_headpos(transition_sequence,pos);
layer_sequence_play(transition_sequence);
layer_sequence_xscale(transition_sequence, camera_get_view_width(view_camera[0]) / transition_data.width  );
layer_sequence_yscale(transition_sequence, camera_get_view_height(view_camera[0]) / transition_data.height  );
layer_sequence_speedscale(transition_sequence,transition_data.spd)
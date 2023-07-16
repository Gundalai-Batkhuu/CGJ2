//room_restart();
gt = room == Room2 ? Room1 : Room2;
easy_transition(SequenceTemplate1, 1, 0,320,	180, -1, function(){room_goto(gt)}	)
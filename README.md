# Object Pooling
Object pooling is used to reuse objects instead of destroying and creating them continuously. 
<img width="968" height="436" alt="image" src="https://github.com/user-attachments/assets/8effc8fc-5065-44da-ae64-de1b5089e771" />

# Profiler before & after
## No Pooling:
<img width="1332" height="422" alt="2026_11_13-15:01:05" src="https://github.com/user-attachments/assets/a19d591c-a03c-4a59-9712-920b744cf71a" />
<img width="1356" height="699" alt="2026_11_13-15:05:19" src="https://github.com/user-attachments/assets/a74b3433-893c-40a0-9776-f9c8268a0fea" />
## With Pooling:
<img width="1352" height="681" alt="2026_11_13-14:59:11" src="https://github.com/user-attachments/assets/4268e684-0759-4022-8f78-08c1d65e1939" />
<img width="1347" height="452" alt="2026_11_13-15:06:35" src="https://github.com/user-attachments/assets/045fc13b-0d2f-448f-ac84-8b887b60deac" />

# Performance
Overall I didn't notice any difference in Godot. Most of the lag came from the physics server trying to process thousands of objects. I couldn't even find Node creation/deletion/memory allocation in the profiler.

# Pooling In Godot
After doing some research it's overall unclear if object pooling is beneficial to use in Godot. Godot and GDScript have no garbage collector. One of the original creators of Godot, Juan Linietsky, even spoke about object pooling on X (The everything app)
<img width="1311" height="708" alt="2026_11_13-15:18:04" src="https://github.com/user-attachments/assets/292f7d73-d61d-4db7-b634-2947be91c8d4" />

Here is also a good video about the topic: https://youtu.be/zyylMd6WEeQ?si=lHU20XIESKX73V0o

It's hard to imagine it wouldn't have ANY improvement gain, but at the very least you can get by in most games without using it. Godot kinda pisses me off cause it's clear people sat down and thought about this shit and how to make it as easy for developers as possible. Autoloads, signals & no need for pooling are just 3 examples. But that's also why it's kinda the best engine. It handles the complicated stuff so I don't have to. Of course having knowledge on different programming design patterns is important, but it's clear that real thought went into this stuff to make development as easy as possible for new developers and push people into using these design patterns even if they don't realize that they are doing it.

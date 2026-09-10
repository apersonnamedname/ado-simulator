if (image_index == 0)
{
	global.mobile = false;
	updateButton();
    obj_pc_control.updateButton();
}
else
{
	global.mobile = true;
	updateButton();
    obj_pc_control.updateButton();
}
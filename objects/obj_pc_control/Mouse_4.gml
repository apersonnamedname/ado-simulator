if (image_index == 0)
{
	global.mobile = true;
	updateButton();
    obj_mobile_control.updateButton();
}
else
{
	global.mobile = false;
	updateButton();
    obj_mobile_control.updateButton();
}
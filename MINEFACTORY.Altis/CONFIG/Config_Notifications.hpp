class CfgNotifications
{
	class MedicalRequestEmerg
	{
		title = "EMS Requested";
		iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIcon_ca.paa";
		description = "%1";
		duration = 5;
		priority = 7;
	};

	class DeliveryAssigned
	{
		title = "Delivery Job Accepted";
		iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIcon_ca.paa";
		description = "%1";
		duration = 10;
		priority = 7;
	};

	class DeliveryFailed
	{
		title = "Delivery Job Failed";
		iconPicture = "\A3\ui_f\data\map\mapcontrol\taskiconfailed_ca.paa";
		description = "%1";
		duration = 7;
		priority = 7;
	};

	class DeliverySucceeded
	{
		title = "Delivery Job Completed";
		iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIcondone_ca.paa";
		description = "%1";
		duration = 6;
		priority = 6;
	};

	class TextMessage
	{
		title = "Received A Text Message";
		iconPicture = "MINEFACTORY\icons\ico_messageNew.paa";
		description = "%1";
		duration = 10;
		priority = 6;
	};

	class PoliceDispatch
	{
		title = "911 Dispatch Center";
		iconPicture = "MINEFACTORY\icons\ico_messagePolice.paa";
		description = "%1";
		duration = 10;
		priority = 6;
	};

	class AdminDispatch
	{
		title = "Admin Dispatch Center";
		iconPicture = "MINEFACTORY\icons\ico_messageAdmin.paa";
		description = "%1";
		duration = 10;
		priority = 6;
	};

	class AdminMessage
	{
		title = "Admin Message";
		iconPicture = "MINEFACTORY\icons\ico_messageAdmin.paa";
		description = "%1";
		duration = 10;
		priority = 5;
	};
};
//******************************************************************
// 
//  Generated by RoboCompDSL
//  
//  File name: HumanTrackerJointsAndRGB.ice
//  Source: HumanTrackerJointsAndRGB.idsl
//  
//****************************************************************** 
#ifndef ROBOCOMPHUMANTRACKERJOINTSANDRGB_ICE
#define ROBOCOMPHUMANTRACKERJOINTSANDRGB_ICE
module RoboCompHumanTrackerJointsAndRGB
{
	sequence <byte> ImgType;
	struct TImage
	{
		 int width;
		 int height;
		 int depth;
		 ImgType image;
	};
	enum TrackingState {  NotTracking, TrackingLost, TrackingStarted, Tracking };
	sequence <float> RTMatrix;
	dictionary <string, RTMatrix> RTMatrixList;
	sequence <float> joint;
	dictionary <string, joint> jointListType;
	struct TPerson
	{
		 TrackingState state;
		 jointListType joints;
		 RTMatrixList rotations;
	};
	dictionary <int, TPerson> PersonList;
	struct MixedJointsRGB
	{
		 long timeStamp;
		 PersonList persons;
		 TImage rgbImage;
	};
	interface HumanTrackerJointsAndRGB
	{
		void newPersonListAndRGB (out MixedJointsRGB mixedData);
	};
};

#endif

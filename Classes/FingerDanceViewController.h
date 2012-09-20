//
//  FingerDanceViewController.h
//  FingerDance
//
//  Created by Alexander Ramirez on 5/27/10.
//  Copyright Troy High School 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface FingerDanceViewController : UIViewController {
	IBOutlet UIImageView *dot11;
	IBOutlet UIImageView *dot12;
	IBOutlet UIImageView *dot13;
	IBOutlet UIImageView *dot14;
	IBOutlet UIImageView *dot21;
	IBOutlet UIImageView *dot22;
	IBOutlet UIImageView *dot23;
	IBOutlet UIImageView *dot24;
	IBOutlet UIImageView *dot31;
	IBOutlet UIImageView *dot32;
	IBOutlet UIImageView *dot33;
	IBOutlet UIImageView *dot34;
	IBOutlet UIImageView *dot41;
	IBOutlet UIImageView *dot42;
	IBOutlet UIImageView *dot43;
	IBOutlet UIImageView *dot44;
	IBOutlet UIImageView *dot51;
	IBOutlet UIImageView *dot52;
	IBOutlet UIImageView *dot53;
	IBOutlet UIImageView *dot54;
	
	IBOutlet UILabel *score;
	IBOutlet UILabel *scoreLabel;
	IBOutlet UILabel *tapToBegin;
	
	NSInteger gameState;
	
	NSInteger score_value;
	
}

@property(nonatomic,retain) IBOutlet UIImageView *dot11;
@property(nonatomic,retain) IBOutlet UIImageView *dot12;
@property(nonatomic,retain) IBOutlet UIImageView *dot13;
@property(nonatomic,retain) IBOutlet UIImageView *dot14;
@property(nonatomic,retain) IBOutlet UIImageView *dot21;
@property(nonatomic,retain) IBOutlet UIImageView *dot22;
@property(nonatomic,retain) IBOutlet UIImageView *dot23;
@property(nonatomic,retain) IBOutlet UIImageView *dot24;
@property(nonatomic,retain) IBOutlet UIImageView *dot31;
@property(nonatomic,retain) IBOutlet UIImageView *dot32;
@property(nonatomic,retain) IBOutlet UIImageView *dot33;
@property(nonatomic,retain) IBOutlet UIImageView *dot34;
@property(nonatomic,retain) IBOutlet UIImageView *dot41;
@property(nonatomic,retain) IBOutlet UIImageView *dot42;
@property(nonatomic,retain) IBOutlet UIImageView *dot43;
@property(nonatomic,retain) IBOutlet UIImageView *dot44;
@property(nonatomic,retain) IBOutlet UIImageView *dot51;
@property(nonatomic,retain) IBOutlet UIImageView *dot52;
@property(nonatomic,retain) IBOutlet UIImageView *dot53;
@property(nonatomic,retain) IBOutlet UIImageView *dot54;

@property(nonatomic,retain) IBOutlet UILabel *score;
@property(nonatomic,retain) IBOutlet UILabel *scoreLabel;
@property(nonatomic,retain) IBOutlet UILabel *tapToBegin;

@property(nonatomic) NSInteger gameState;

@end


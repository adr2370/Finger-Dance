//
//  FingerDanceViewController.m
//  FingerDance
//
//  Created by Alexander Ramirez on 5/27/10.
//  Copyright Troy High School 2010. All rights reserved.
//

#import "FingerDanceViewController.h"
#include <stdlib.h>
#include <stdio.h>

#define title 1
#define running 2

#define RED 0
#define YELLOW 1
#define GREEN 2

@implementation FingerDanceViewController
@synthesize scoreLabel,tapToBegin,dot11,dot12,dot13,dot14,dot21,dot22,dot23,dot24,dot31,dot32,dot33,dot34,dot41,dot42,dot43,dot44,dot51,dot52,dot53,dot54,score,gameState;
NSInteger color11=0;
NSInteger color12=0;
NSInteger color13=0;
NSInteger color14=0;
NSInteger color21=0;
NSInteger color22=0;
NSInteger color23=0;
NSInteger color24=0;
NSInteger color31=0;
NSInteger color32=0;
NSInteger color33=0;
NSInteger color34=0;
NSInteger color41=0;
NSInteger color42=0;
NSInteger color43=0;
NSInteger color44=0;
NSInteger color51=0;
NSInteger color52=0;
NSInteger color53=0;
NSInteger color54=0;
NSInteger counter=0;

int song1[1000];

- (int) next {
	counter++;
	return song1[counter%1000];
}

/*
 // The designated initializer. Override to perform setup that is required before the view is loaded.
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
 if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
 // Custom initialization
 }
 return self;
 }
 */
- (void) sequence {
	int x=[self next];
	int y=500-counter;
	if(y<40)
	{
		y=40;
	}
	UIImage *image;
	switch (x%y)
	{
		case 0:
			if(color11==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot11 setImage:image];
				color11=1;
			}
			break;
		case 1:
			if(color12==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot12 setImage:image];
				color12=1;
			}
			break;
		case 2:
			if(color13==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot13 setImage:image];
				color13=1;
			}
			break;
		case 3:
			if(color14==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot14 setImage:image];
				color14=1;
			}
			break;
		case 4:
			if(color21==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot21 setImage:image];
				color21=1;
			}
			break;
		case 5:
			if(color22==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot22 setImage:image];
				color22=1;
			}
			break;
		case 6:
			if(color23==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot23 setImage:image];
				color23=1;
			}
			break;
		case 7:
			if(color24==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot24 setImage:image];
				color24=1;
			}
			break;
		case 8:
			if(color31==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot31 setImage:image];
				color31=1;
			}
			break;
		case 9:
			if(color32==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot32 setImage:image];
				color32=1;
			}
			break;
		case 10:
			if(color33==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot33 setImage:image];
				color33=1;
			}
			break;
		case 11:
			if(color34==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot34 setImage:image];
				color34=1;
			}
			break;
		case 12:
			if(color41==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot41 setImage:image];
				color41=1;
			}
			break;
		case 13:
			if(color42==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot42 setImage:image];
				color42=1;
			}
			break;
		case 14:
			if(color43==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot43 setImage:image];
				color43=1;
			}
			break;
		case 15:
			if(color44==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot44 setImage:image];
				color44=1;
			}
			break;
		case 16:
			if(color51==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot51 setImage:image];
				color51=1;
			}
			break;
		case 17:
			if(color52==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot52 setImage:image];
				color52=1;
			}
			break;
		case 18:
			if(color53==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot53 setImage:image];
				color53=1;
			}
			break;
		case 19:
			if(color54==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot54 setImage:image];
				color54=1;
			}
			break;
		default:
			break;
	}
	/*if(x>99)
	{
	x/=100;
	switch (x%100)
	{
		case 0:
			if(color11==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot11 setImage:image];
				color11=1;
			}
			break;
		case 1:
			if(color12==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot12 setImage:image];
				color12=1;
			}
			break;
		case 2:
			if(color13==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot13 setImage:image];
				color13=1;
			}
			break;
		case 3:
			if(color14==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot14 setImage:image];
				color14=1;
			}
			break;
		case 4:
			if(color21==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot21 setImage:image];
				color21=1;
			}
			break;
		case 5:
			if(color22==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot22 setImage:image];
				color22=1;
			}
			break;
		case 6:
			if(color23==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot23 setImage:image];
				color23=1;
			}
			break;
		case 7:
			if(color24==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot24 setImage:image];
				color24=1;
			}
			break;
		case 8:
			if(color31==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot31 setImage:image];
				color31=1;
			}
			break;
		case 9:
			if(color32==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot32 setImage:image];
				color32=1;
			}
			break;
		case 10:
			if(color33==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot33 setImage:image];
				color33=1;
			}
			break;
		case 11:
			if(color34==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot34 setImage:image];
				color34=1;
			}
			break;
		case 12:
			if(color41==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot41 setImage:image];
				color41=1;
			}
			break;
		case 13:
			if(color42==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot42 setImage:image];
				color42=1;
			}
			break;
		case 14:
			if(color43==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot43 setImage:image];
				color43=1;
			}
			break;
		case 15:
			if(color44==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot44 setImage:image];
				color44=1;
			}
			break;
		case 16:
			if(color51==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot51 setImage:image];
				color51=1;
			}
			break;
		case 17:
			if(color52==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot52 setImage:image];
				color52=1;
			}
			break;
		case 18:
			if(color53==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot53 setImage:image];
				color53=1;
			}
			break;
		case 19:
			if(color54==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot54 setImage:image];
				color54=1;
			}
			break;
		default:
			break;
	}
	if(x>99)
	{
	x/=100;
	switch (x%100)
	{
		case 0:
			if(color11==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot11 setImage:image];
				color11=1;
			}
			break;
		case 1:
			if(color12==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot12 setImage:image];
				color12=1;
			}
			break;
		case 2:
			if(color13==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot13 setImage:image];
				color13=1;
			}
			break;
		case 3:
			if(color14==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot14 setImage:image];
				color14=1;
			}
			break;
		case 4:
			if(color21==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot21 setImage:image];
				color21=1;
			}
			break;
		case 5:
			if(color22==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot22 setImage:image];
				color22=1;
			}
			break;
		case 6:
			if(color23==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot23 setImage:image];
				color23=1;
			}
			break;
		case 7:
			if(color24==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot24 setImage:image];
				color24=1;
			}
			break;
		case 8:
			if(color31==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot31 setImage:image];
				color31=1;
			}
			break;
		case 9:
			if(color32==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot32 setImage:image];
				color32=1;
			}
			break;
		case 10:
			if(color33==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot33 setImage:image];
				color33=1;
			}
			break;
		case 11:
			if(color34==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot34 setImage:image];
				color34=1;
			}
			break;
		case 12:
			if(color41==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot41 setImage:image];
				color41=1;
			}
			break;
		case 13:
			if(color42==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot42 setImage:image];
				color42=1;
			}
			break;
		case 14:
			if(color43==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot43 setImage:image];
				color43=1;
			}
			break;
		case 15:
			if(color44==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot44 setImage:image];
				color44=1;
			}
			break;
		case 16:
			if(color51==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot51 setImage:image];
				color51=1;
			}
			break;
		case 17:
			if(color52==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot52 setImage:image];
				color52=1;
			}
			break;
		case 18:
			if(color53==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot53 setImage:image];
				color53=1;
			}
			break;
		case 19:
			if(color54==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot54 setImage:image];
				color54=1;
			}
			break;
		default:
			break;
	}
	if(x>99)
	{
	x/=100;
	switch (x%100)
	{
		case 0:
			if(color11==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot11 setImage:image];
				color11=1;
			}
			break;
		case 1:
			if(color12==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot12 setImage:image];
				color12=1;
			}
			break;
		case 2:
			if(color13==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot13 setImage:image];
				color13=1;
			}
			break;
		case 3:
			if(color14==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot14 setImage:image];
				color14=1;
			}
			break;
		case 4:
			if(color21==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot21 setImage:image];
				color21=1;
			}
			break;
		case 5:
			if(color22==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot22 setImage:image];
				color22=1;
			}
			break;
		case 6:
			if(color23==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot23 setImage:image];
				color23=1;
			}
			break;
		case 7:
			if(color24==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot24 setImage:image];
				color24=1;
			}
			break;
		case 8:
			if(color31==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot31 setImage:image];
				color31=1;
			}
			break;
		case 9:
			if(color32==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot32 setImage:image];
				color32=1;
			}
			break;
		case 10:
			if(color33==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot33 setImage:image];
				color33=1;
			}
			break;
		case 11:
			if(color34==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot34 setImage:image];
				color34=1;
			}
			break;
		case 12:
			if(color41==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot41 setImage:image];
				color41=1;
			}
			break;
		case 13:
			if(color42==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot42 setImage:image];
				color42=1;
			}
			break;
		case 14:
			if(color43==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot43 setImage:image];
				color43=1;
			}
			break;
		case 15:
			if(color44==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot44 setImage:image];
				color44=1;
			}
			break;
		case 16:
			if(color51==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot51 setImage:image];
				color51=1;
			}
			break;
		case 17:
			if(color52==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot52 setImage:image];
				color52=1;
			}
			break;
		case 18:
			if(color53==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot53 setImage:image];
				color53=1;
			}
			break;
		case 19:
			if(color54==0)
			{
				image = [UIImage imageNamed: @"Yellow Circle.png"];
				[dot54 setImage:image];
				color54=1;
			}
			break;
		default:
			break;
	}
	}
	}
	}*/
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	if(gameState == title) {
		gameState = running;
		tapToBegin.hidden=YES;
		dot11.hidden = NO;
		dot12.hidden = NO;
		dot13.hidden = NO;
		dot14.hidden = NO;
		dot21.hidden = NO;
		dot22.hidden = NO;
		dot23.hidden = NO;
		dot24.hidden = NO;
		dot31.hidden = NO;
		dot32.hidden = NO;
		dot33.hidden = NO;
		dot34.hidden = NO;
		dot41.hidden = NO;
		dot42.hidden = NO;
		dot43.hidden = NO;
		dot44.hidden = NO;
		dot51.hidden = NO;
		dot52.hidden = NO;
		dot53.hidden = NO;
		dot54.hidden = NO;
		score.hidden = NO;
		scoreLabel.hidden=NO;
		score_value=0;
		counter=0;
		for (int i=0; i<1000; i++) {
			song1[i]=rand()%10000;
		}
	}
	else {
		for (UITouch *touch in touches) {
			if (CGRectContainsPoint([dot11 frame], [touch locationInView:self.view])) {
				if(color11>0&&color11<20){
					UIImage *image = [UIImage imageNamed: @"Green Circle.png"];
					[dot11 setImage:image];
					color11=20;
					score_value++;
				}
				score.text = [NSString stringWithFormat:@"%d",score_value];
			}
			if (CGRectContainsPoint([dot12 frame], [touch locationInView:self.view])) {
				if(color12>0&&color12<20){
					UIImage *image = [UIImage imageNamed: @"Green Circle.png"];
					[dot12 setImage:image];
					color12=20;
					score_value++;
				}
				score.text = [NSString stringWithFormat:@"%d",score_value];
			}
			if (CGRectContainsPoint([dot13 frame], [touch locationInView:self.view])) {
				if(color13>0&&color13<20){
					UIImage *image = [UIImage imageNamed: @"Green Circle.png"];
					[dot13 setImage:image];
					color13=20;
					score_value++;
				}
				score.text = [NSString stringWithFormat:@"%d",score_value];
			}
			if (CGRectContainsPoint([dot14 frame], [touch locationInView:self.view])) {
				if(color14>0&&color14<20){
					UIImage *image = [UIImage imageNamed: @"Green Circle.png"];
					[dot14 setImage:image];
					color14=20;
					score_value++;
				}
				score.text = [NSString stringWithFormat:@"%d",score_value];
			}
			if (CGRectContainsPoint([dot21 frame], [touch locationInView:self.view])) {
				if(color21>0&&color21<20){
					UIImage *image = [UIImage imageNamed: @"Green Circle.png"];
					[dot21 setImage:image];
					color21=20;
					score_value++;
				}
				score.text = [NSString stringWithFormat:@"%d",score_value];
			}
			if (CGRectContainsPoint([dot22 frame], [touch locationInView:self.view])) {
				if(color22>0&&color22<20){
					UIImage *image = [UIImage imageNamed: @"Green Circle.png"];
					[dot22 setImage:image];
					color22=20;
					score_value++;
				}
				score.text = [NSString stringWithFormat:@"%d",score_value];
			}
			if (CGRectContainsPoint([dot23 frame], [touch locationInView:self.view])) {
				if(color23>0&&color23<20){
					UIImage *image = [UIImage imageNamed: @"Green Circle.png"];
					[dot23 setImage:image];
					color23=20;
					score_value++;
				}
				score.text = [NSString stringWithFormat:@"%d",score_value];
			}
			if (CGRectContainsPoint([dot24 frame], [touch locationInView:self.view])) {
				if(color24>0&&color24<20){
					UIImage *image = [UIImage imageNamed: @"Green Circle.png"];
					[dot24 setImage:image];
					color24=20;
					score_value++;
				}
				score.text = [NSString stringWithFormat:@"%d",score_value];
			}
			if (CGRectContainsPoint([dot31 frame], [touch locationInView:self.view])) {
				if(color31>0&&color31<20){
					UIImage *image = [UIImage imageNamed: @"Green Circle.png"];
					[dot31 setImage:image];
					color31=20;
					score_value++;
				}
				score.text = [NSString stringWithFormat:@"%d",score_value];
			}
			if (CGRectContainsPoint([dot32 frame], [touch locationInView:self.view])) {
				if(color32>0&&color32<20){
					UIImage *image = [UIImage imageNamed: @"Green Circle.png"];
					[dot32 setImage:image];
					color32=20;
					score_value++;
				}
				score.text = [NSString stringWithFormat:@"%d",score_value];
			}
			if (CGRectContainsPoint([dot33 frame], [touch locationInView:self.view])) {
				if(color33>0&&color33<20){
					UIImage *image = [UIImage imageNamed: @"Green Circle.png"];
					[dot33 setImage:image];
					color33=20;
					score_value++;
				}
				score.text = [NSString stringWithFormat:@"%d",score_value];
			}
			if (CGRectContainsPoint([dot34 frame], [touch locationInView:self.view])) {
				if(color34>0&&color34<20){
					UIImage *image = [UIImage imageNamed: @"Green Circle.png"];
					[dot34 setImage:image];
					color34=20;
					score_value++;
				}
				score.text = [NSString stringWithFormat:@"%d",score_value];
			}
			if (CGRectContainsPoint([dot41 frame], [touch locationInView:self.view])) {
				if(color41>0&&color41<20){
					UIImage *image = [UIImage imageNamed: @"Green Circle.png"];
					[dot41 setImage:image];
					color41=20;
					score_value++;
				}
				score.text = [NSString stringWithFormat:@"%d",score_value];
			}
			if (CGRectContainsPoint([dot42 frame], [touch locationInView:self.view])) {
				if(color42>0&&color42<20){
					UIImage *image = [UIImage imageNamed: @"Green Circle.png"];
					[dot42 setImage:image];
					color42=20;
					score_value++;
				}
				score.text = [NSString stringWithFormat:@"%d",score_value];
			}
			if (CGRectContainsPoint([dot43 frame], [touch locationInView:self.view])) {
				if(color43>0&&color43<20){
					UIImage *image = [UIImage imageNamed: @"Green Circle.png"];
					[dot43 setImage:image];
					color43=20;
					score_value++;
				}
				score.text = [NSString stringWithFormat:@"%d",score_value];
			}
			if (CGRectContainsPoint([dot44 frame], [touch locationInView:self.view])) {
				if(color44>0&&color44<20){
					UIImage *image = [UIImage imageNamed: @"Green Circle.png"];
					[dot44 setImage:image];
					color44=20;
					score_value++;
				}
				score.text = [NSString stringWithFormat:@"%d",score_value];
			}
			if (CGRectContainsPoint([dot51 frame], [touch locationInView:self.view])) {
				if(color51>0&&color51<20){
					UIImage *image = [UIImage imageNamed: @"Green Circle.png"];
					[dot51 setImage:image];
					color51=20;
					score_value++;
				}
				score.text = [NSString stringWithFormat:@"%d",score_value];
			}
			if (CGRectContainsPoint([dot52 frame], [touch locationInView:self.view])) {
				if(color52>0&&color52<20){
					UIImage *image = [UIImage imageNamed: @"Green Circle.png"];
					[dot52 setImage:image];
					color52=20;
					score_value++;
				}
				score.text = [NSString stringWithFormat:@"%d",score_value];
			}
			if (CGRectContainsPoint([dot53 frame], [touch locationInView:self.view])) {
				if(color53>0&&color53<20){
					UIImage *image = [UIImage imageNamed: @"Green Circle.png"];
					[dot53 setImage:image];
					color53=20;
					score_value++;
				}
				score.text = [NSString stringWithFormat:@"%d",score_value];
			}
			if (CGRectContainsPoint([dot54 frame], [touch locationInView:self.view])) {
				if(color54>0&&color54<20){
					UIImage *image = [UIImage imageNamed: @"Green Circle.png"];
					[dot54 setImage:image];
					color54=20;
					score_value++;
				}
				score.text = [NSString stringWithFormat:@"%d",score_value];
			}
		}       
	}
}

-(void) gameLoop {
	if(self.gameState==running)
	{
		if(counter>1000)
		{
			self.gameState = title;	
			dot11.hidden = YES;
			dot12.hidden = YES;
			dot13.hidden = YES;
			dot14.hidden = YES;
			dot21.hidden = YES;
			dot22.hidden = YES;
			dot23.hidden = YES;
			dot24.hidden = YES;
			dot31.hidden = YES;
			dot32.hidden = YES;
			dot33.hidden = YES;
			dot34.hidden = YES;
			dot41.hidden = YES;
			dot42.hidden = YES;
			dot43.hidden = YES;
			dot44.hidden = YES;
			dot51.hidden = YES;
			dot52.hidden = YES;
			dot53.hidden = YES;
			dot54.hidden = YES;
			score.hidden = YES;
			scoreLabel.hidden=YES;
		}
		else
		{
			[self sequence];
			if(color11!=0)
			{
				color11++;
			}
			if(color11>10&&color11<20)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot11 setImage:image];
				color11=0;
			}
			if(color11>19)
			{
				color11++;
			}
			if(color11==30)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot11 setImage:image];
				color11=0;
			}
			if(color12!=0)
			{
				color12++;
			}
			if(color12>10&&color12<20)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot12 setImage:image];
				color12=0;
			}
			if(color12>19)
			{
				color12++;
			}
			if(color12==30)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot12 setImage:image];
				color12=0;
			}
			if(color13!=0)
			{
				color13++;
			}
			if(color13>10&&color13<20)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot13 setImage:image];
				color13=0;
			}
			if(color13>19)
			{
				color13++;
			}
			if(color13==30)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot13 setImage:image];
				color13=0;
			}
			if(color14!=0)
			{
				color14++;
			}
			if(color14>10&&color14<20)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot14 setImage:image];
				color14=0;
			}
			if(color14>19)
			{
				color14++;
			}
			if(color14==30)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot14 setImage:image];
				color14=0;
			}
			if(color21!=0)
			{
				color21++;
			}
			if(color21>10&&color21<20)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot21 setImage:image];
				color21=0;
			}
			if(color21>19)
			{
				color21++;
			}
			if(color21==30)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot21 setImage:image];
				color21=0;
			}
			if(color22!=0)
			{
				color22++;
			}
			if(color22>10&&color22<20)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot22 setImage:image];
				color22=0;
			}
			if(color22>19)
			{
				color22++;
			}
			if(color22==30)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot22 setImage:image];
				color22=0;
			}
			if(color23!=0)
			{
				color23++;
			}
			if(color23>10&&color23<20)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot23 setImage:image];
				color23=0;
			}
			if(color23>19)
			{
				color23++;
			}
			if(color23==30)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot23 setImage:image];
				color23=0;
			}
			if(color24!=0)
			{
				color24++;
			}
			if(color24>10&&color24<20)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot24 setImage:image];
				color24=0;
			}
			if(color24>19)
			{
				color24++;
			}
			if(color24==30)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot24 setImage:image];
				color24=0;
			}
			if(color31!=0)
			{
				color31++;
			}
			if(color31>10&&color31<20)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot31 setImage:image];
				color31=0;
			}
			if(color31>19)
			{
				color31++;
			}
			if(color31==30)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot31 setImage:image];
				color31=0;
			}
			if(color32!=0)
			{
				color32++;
			}
			if(color32>10&&color32<20)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot32 setImage:image];
				color32=0;
			}
			if(color32>19)
			{
				color32++;
			}
			if(color32==30)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot32 setImage:image];
				color32=0;
			}
			if(color33!=0)
			{
				color33++;
			}
			if(color33>10&&color33<20)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot33 setImage:image];
				color33=0;
			}
			if(color33>19)
			{
				color33++;
			}
			if(color33==30)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot33 setImage:image];
				color33=0;
			}
			if(color34!=0)
			{
				color34++;
			}
			if(color34>10&&color34<20)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot34 setImage:image];
				color34=0;
			}
			if(color34>19)
			{
				color34++;
			}
			if(color34==30)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot34 setImage:image];
				color34=0;
			}
			if(color41!=0)
			{
				color41++;
			}
			if(color41>10&&color41<20)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot41 setImage:image];
				color41=0;
			}
			if(color41>19)
			{
				color41++;
			}
			if(color41==30)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot41 setImage:image];
				color41=0;
			}
			if(color42!=0)
			{
				color42++;
			}
			if(color42>10&&color42<20)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot42 setImage:image];
				color42=0;
			}
			if(color42>19)
			{
				color42++;
			}
			if(color42==30)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot42 setImage:image];
				color42=0;
			}
			if(color43!=0)
			{
				color43++;
			}
			if(color43>10&&color43<20)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot43 setImage:image];
				color43=0;
			}
			if(color43>19)
			{
				color43++;
			}
			if(color43==30)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot43 setImage:image];
				color43=0;
			}
			if(color44!=0)
			{
				color44++;
			}
			if(color44>10&&color44<20)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot44 setImage:image];
				color44=0;
			}
			if(color44>19)
			{
				color44++;
			}
			if(color44==30)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot44 setImage:image];
				color44=0;
			}
			if(color51!=0)
			{
				color51++;
			}
			if(color51>10&&color51<20)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot51 setImage:image];
				color51=0;
			}
			if(color51>19)
			{
				color51++;
			}
			if(color51==30)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot51 setImage:image];
				color51=0;
			}
			if(color52!=0)
			{
				color52++;
			}
			if(color52>10&&color52<20)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot52 setImage:image];
				color52=0;
			}
			if(color52>19)
			{
				color52++;
			}
			if(color52==30)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot52 setImage:image];
				color52=0;
			}
			if(color53!=0)
			{
				color53++;
			}
			if(color53>10&&color53<20)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot53 setImage:image];
				color53=0;
			}
			if(color53>19)
			{
				color53++;
			}
			if(color53==30)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot53 setImage:image];
				color53=0;
			}
			if(color54!=0)
			{
				color54++;
			}
			if(color54>10&&color54<20)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot54 setImage:image];
				color54=0;
			}
			if(color54>19)
			{
				color54++;
			}
			if(color54==30)
			{
				UIImage *image = [UIImage imageNamed: @"RED X.png"];
				[dot54 setImage:image];
				color54=0;
			}
		}
	}	
	else {
		tapToBegin.hidden=NO;
	}
	
}

/*
 // Implement loadView to create a view hierarchy programmatically, without using a nib.
 - (void)loadView {
 }
 */

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	[super viewDidLoad];
	self.gameState = title;	
	dot11.hidden = YES;
	dot12.hidden = YES;
	dot13.hidden = YES;
	dot14.hidden = YES;
	dot21.hidden = YES;
	dot22.hidden = YES;
	dot23.hidden = YES;
	dot24.hidden = YES;
	dot31.hidden = YES;
	dot32.hidden = YES;
	dot33.hidden = YES;
	dot34.hidden = YES;
	dot41.hidden = YES;
	dot42.hidden = YES;
	dot43.hidden = YES;
	dot44.hidden = YES;
	dot51.hidden = YES;
	dot52.hidden = YES;
	dot53.hidden = YES;
	dot54.hidden = YES;
	score.hidden = YES;
	scoreLabel.hidden=YES;
	for (int i=0; i<1000; i++) {
		song1[i]=rand()%10000;
	}
	[NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(gameLoop) userInfo:nil repeats:YES];
}

/*
 // Override to allow orientations other than the default portrait orientation.
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
 // Return YES for supported orientations
 return (interfaceOrientation == UIInterfaceOrientationPortrait);
 }
 */

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
	self=nil;

}

- (void)dealloc {
    [super dealloc];
	[dot11 release];
	[dot12 release];
	[dot13 release];
	[dot14 release];
	[dot21 release];
	[dot22 release];
	[dot23 release];
	[dot24 release];
	[dot31 release];
	[dot32 release];
	[dot33 release];
	[dot34 release];
	[dot41 release];
	[dot42 release];
	[dot43 release];
	[dot44 release];
	[dot51 release];
	[dot52 release];
	[dot53 release];
	[dot54 release];
	[score release];
	[scoreLabel release];
	[tapToBegin release];
}

@end
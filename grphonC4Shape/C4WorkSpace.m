//
//  C4WorkSpace.m
//  grphonC4Shape
//
//  Created by Bardia Doust on 13-05-04.
//  Copyright (c) 2013 Bardia Doust. All rights reserved.
//

#import "C4WorkSpace.h"
#import "customShape.h"


@interface C4WorkSpace()

-(void)updateColorButton;
-(void)setupButtons;
-(void)heardTap;


@end


@implementation C4WorkSpace{
        NSMutableArray *buttonArray;
}

-(void)setup {
    [self setupButtons];
    
}



-(void)setupButtons{
    
    //Var to hold capacity of each row
    int rowLength = 9;
    
    
    //Create array to hold buttons
    buttonArray = [[NSMutableArray alloc]initWithCapacity:rowLength*3];
    
    
    //For loop for Row 1
    for(int i = 0 ; i < rowLength ; i++){
        
        
        //Create object to hold button, color value assigned from array & position set
        
        int width = self.canvas.width; //var to hold width
        customShape *button = [[customShape alloc]initWithColor:[UIColor colorWithRed:[C4Math randomInt:100]/100.0f green:[C4Math randomInt:100]/100.0f blue:[C4Math randomInt:100]/100.0f alpha:1] origin:(CGPointMake(10+(0.1469f*width)*i, 10))]; //init button object

        //add Button to array
        [buttonArray addObject:button];
    }
    //For loop for Row 2
    for(int i = 0 ; i < rowLength ; i++){
        
        
        //Create object to hold button, color value assigned from array & position set
        
        int width = self.canvas.width; //var to hold width
        customShape *button = [[customShape alloc]initWithColor:[UIColor colorWithRed:[C4Math randomInt:100]/100.0f green:[C4Math randomInt:100]/100.0f blue:[C4Math randomInt:100]/100.0f alpha:1] origin:(CGPointMake(10+(0.1469f*width)*i, 120))]; //init button object
        
        //add Button to array
        [buttonArray addObject:button];
    }
    //For loop for Row 3
    for(int i = 0 ; i < rowLength ; i++){
    
    
        //Create object to hold button, color value assigned from array & position set
    
        int width = self.canvas.width; //var to hold width
        customShape *button = [[customShape alloc]initWithColor:[UIColor colorWithRed:[C4Math randomInt:100]/100.0f green:[C4Math randomInt:100]/100.0f blue:[C4Math randomInt:100]/100.0f alpha:1] origin:(CGPointMake(10+(0.1469f*width)*i, 230))]; //init button object
    
        //add Button to array
        [buttonArray addObject:button];
    }
    
    
    
    //Add every button to the canvas
    for(customShape *button in buttonArray){
        [self.canvas addShape:button];
        [self listenFor:@"tapNotification" fromObjects:buttonArray andRunMethod:@"heardTap:"];
    }
    
}



-(void)updateColorButton{
    for(customShape *button in buttonArray){
        [self.canvas addShape:button];
    }
    
}

-(void)heardTap:(NSNotification *)notification {
    customShape *notificationShape = (customShape *)[notification object];
    NSLog(@"I've been triggered");
    
}

@end

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
-(void)heardSwipe;
-(void)heardLongPress;


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
    
    
    //Row 1
    for(int i = 0 ; i < rowLength ; i++){
        
        
        //Create object to hold button, color value assigned from array & position set
        
        int width = self.canvas.width; //var to hold width
        
        //init button object, set color to random and set origin point
        customShape *button = [[customShape alloc]initWithColor:[UIColor colorWithRed:[C4Math randomInt:100]/100.0f green:[C4Math randomInt:100]/100.0f blue:[C4Math randomInt:100]/100.0f alpha:1] origin:(CGPointMake(10+(0.1469f*width)*i, 10))]; 

        //add Button to array
        [buttonArray addObject:button];
    }
    
    //Row 2
    for(int i = 0 ; i < rowLength ; i++){
        
        
        //Create object to hold button, color value assigned from array & position set
        
        int width = self.canvas.width; //var to hold width
        
        //init button object with random color and origin point
        customShape *button = [[customShape alloc]initWithColor:[UIColor colorWithRed:[C4Math randomInt:100]/100.0f green:[C4Math randomInt:100]/100.0f blue:[C4Math randomInt:100]/100.0f alpha:1] origin:(CGPointMake(10+(0.1469f*width)*i, 120))];
        
        
        //add Button to array
        [buttonArray addObject:button];
    }
    
    //Row 3
    for(int i = 0 ; i < rowLength ; i++){
    
    
        //Create object to hold button, color value assigned from array & position set
    
        int width = self.canvas.width; //var to hold width
        
        //Init button object with random color & origin point
        customShape *button = [[customShape alloc]initWithColor:[UIColor colorWithRed:[C4Math randomInt:100]/100.0f green:[C4Math randomInt:100]/100.0f blue:[C4Math randomInt:100]/100.0f alpha:1] origin:(CGPointMake(10+(0.1469f*width)*i, 230))];
        
    
        //add Button to array
        [buttonArray addObject:button];
    }
    
    //Row 4
    for(int i = 0 ; i < rowLength ; i++){
        
        
        //Create object to hold button, color value assigned from array & position set
        
        int width = self.canvas.width; //var to hold width
        
        //Init button object with random color & origin point
        customShape *button = [[customShape alloc]initWithColor:[UIColor colorWithRed:[C4Math randomInt:100]/100.0f green:[C4Math randomInt:100]/100.0f blue:[C4Math randomInt:100]/100.0f alpha:1] origin:(CGPointMake(10+(0.1469f*width)*i, 340))];
        
        
        //add Button to array
        [buttonArray addObject:button];
    }
    
    //Row 5
    for(int i = 0 ; i < rowLength ; i++){
        
        
        //Create object to hold button, color value assigned from array & position set
        
        int width = self.canvas.width; //var to hold width
        
        //Init button object with random color & origin point
        customShape *button = [[customShape alloc]initWithColor:[UIColor colorWithRed:[C4Math randomInt:100]/100.0f green:[C4Math randomInt:100]/100.0f blue:[C4Math randomInt:100]/100.0f alpha:1] origin:(CGPointMake(10+(0.1469f*width)*i, 450))];
        
        
        //add Button to array
        [buttonArray addObject:button];
    }
    
    //Row 6
    for(int i = 0 ; i < rowLength ; i++){
        
        
        //Create object to hold button, color value assigned from array & position set
        
        int width = self.canvas.width; //var to hold width
        int height = self.canvas.height; //var for height
        
        //Init button object with random color & origin point
        customShape *button = [[customShape alloc]initWithColor:[UIColor colorWithRed:[C4Math randomInt:100]/100.0f green:[C4Math randomInt:100]/100.0f blue:[C4Math randomInt:100]/100.0f alpha:1] origin:(CGPointMake(10+(0.1469f*width)*i, 560))];
        
        
        //add Button to array
        [buttonArray addObject:button];
    }
    
    
    
    //Add every button to the canvas
    for(customShape *button in buttonArray){
        [self.canvas addShape:button];
        
        //listen for TAP and SWIPERIGHT gestures and run appropriate method when heard
        [self listenFor:@"tapNotification" fromObjects:buttonArray andRunMethod:@"heardTap:"];
        [self listenFor:@"rightSwipeNotification" fromObjects:buttonArray andRunMethod:@"heardSwipe:"];
        
        
        
        
        /*
        
        LongPress is currently not supported by C4Framework
        
         [self listenFor:@"longPressNotificiation" fromObjects:buttonArray andRunMethod:@"heardLongPress:"];
         */
        
    }
    
}







//This method re-adds all the objects in the array to the canvas, this was used to update the fill property but is not needed anymore as button color is changed directly thru the buttons someObject.fillColor property

-(void)updateColorButton{
    for(customShape *button in buttonArray){
        [self.canvas addShape:button];
    }
    
}





//The following methods run when a button is tapped or swiped-right
-(void)heardTap:(NSNotification *)notification {
    
    
    //Place the tapped shape into an object pointer
    customShape *notificationShape = (customShape *)[notification object];
    
    //Insert UDP send method here...
    
    //NSLog
    C4Log(@"the button has been tapped");
    C4Log(@"The objects origin is %@", notificationShape.fillColor);
     
}




-(void)heardSwipe:(NSNotification *)notification {
    
    
    //Place the tapped shape into an object pointer
    customShape *notificationShape = (customShape *)[notification object];
    
    //Insert code to call ColorPicker here...
    
    //NSLog
    C4Log(@"the button has been swiped right");
    C4Log(@"The objects fill color is %@", notificationShape.fillColor);
    
}





-(void)heardLongPress:(NSNotification *)notification {
    
    
    //Place the tapped shape into an object pointer
    customShape *notificationShape = (customShape *)[notification object];
    
    //Insert code to call ColorPicker here...
    
    //NSLog
    C4Log(@"the button has been longpressed");
    C4Log(@"The objects fill color is %@", notificationShape.fillColor);
    
}

@end

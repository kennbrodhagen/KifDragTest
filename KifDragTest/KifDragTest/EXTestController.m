//
//  EXTestController.m
//  KifDragTest
//
//  Created by Kenn Brodhagen on 9/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "EXTestController.h"

// Test Step
#import "KIFTestStep.h"
#import "UIApplication-KIFAdditions.h"
#import "UIView-KIFAdditions.h"



@interface KIFTestStep (EXAdditions)

+ (id)stepToDrag;

@end

@implementation KIFTestStep (EXAdditions)

+ (id)stepToDrag;
{
    return [KIFTestStep stepWithDescription:@"Test Dragging." executionBlock:^(KIFTestStep *step, NSError **error) {
        BOOL successfulReset = YES;
        

        
        UIView * mainView = (UIView *) ([[UIApplication sharedApplication] accessibilityElementWithLabel:@"Main View"].accessibilityContainer);
        UIView * customView = [mainView subviewWithClassNameOrSuperClassNamePrefix:@"CustomView"];

        // Locate the target to move the coins into the slot, it's a bit above the center of the coin slot view.
        CGPoint viewTarget = customView.center;

        viewTarget.x -= 50;
        viewTarget.y -= 50;
        
        CGPoint source = [customView convertPoint:customView.center fromView:customView.superview];
        CGPoint target = [customView convertPoint:viewTarget fromView:customView.superview];
        
        
        [customView dragFromPoint:source toPoint:target];
        

        
        
        KIFTestCondition(successfulReset, error, @"Failed to drag.");
        
        return KIFTestStepResultSuccess;
    }];
}

@end

// End Test Step

// Test Scenario
#import "KIFTestScenario.h"

@interface KIFTestScenario (EXAdditions)

+ (id)scenarioToDrag;

@end


@implementation KIFTestScenario (EXAdditions)

+ (id)scenarioToDrag;
{
    KIFTestScenario *scenario = [KIFTestScenario scenarioWithDescription:@"Test that dragging works."];
    [scenario addStep:[KIFTestStep stepToDrag]];
    
    return scenario;
}

@end

// End Test Scenario

@implementation EXTestController

- (void)initializeScenarios;
{
    [self addScenario:[KIFTestScenario scenarioToDrag]];
    // Add additional scenarios you want to test here
}

@end
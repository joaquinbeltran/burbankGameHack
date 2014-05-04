//
//  Model.m
//  BurbankGameHack
//
//  Created by Joaquin Beltran on 5/3/14.
//  Copyright (c) 2014 Joaquin. All rights reserved.
//

#import "JBModel.h"

@interface JBModel()

@property (strong, nonatomic) NSDictionary *quizQuestions;
@end




@implementation JBModel

-(id) init {
    self = [super init];
    if (self) {
        _quizQuestions = [[NSDictionary alloc] initWithObjectsAndKeys:0, @"value2", 1, @"value2", 3, @"value3", nil];
    }
    return self;
    
}
-(NSUInteger) numberOfQuestions {
    return [self.quizQuestions count];
}

@end
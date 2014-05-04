//
//  Model.h
//  BurbankGameHack
//
//  Created by Joaquin Beltran on 5/3/14.
//  Copyright (c) 2014 Joaquin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JBModel : NSObject

@property (strong, nonatomic) NSArray *questions;
@property (strong, nonatomic) NSString *answer;
@property (strong, nonatomic) NSDictionary *quizQuestions;

@end

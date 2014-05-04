//
//  JBViewController.m
//  BurbankGameHack
//
//  Created by Joaquin Beltran on 5/3/14.
//  Copyright (c) 2014 Joaquin. All rights reserved.
//

#import "JBViewController.h"
#import "JBModel.h"

@interface JBViewController ()
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *time;
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UIImageView *questionImage;
@property (strong, nonatomic) JBModel *model;

@property (strong, nonatomic) NSTimer *stopWatchTimer; //Store the timer that firest after a certain time
@property (strong, nonatomic) NSDate *startDate; // Stores the date of the click on the start button

- (IBAction)onStartPressed:(id)sender;
//- (IBAction)onStopPressed:(id)sender;


@end

@implementation JBViewController

NSInteger score = 0;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _model = [[JBModel alloc] init];
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc]
                                         initWithTarget:self
                                         action:@selector(singleTapRecognized:)];
    
    [self.view addGestureRecognizer:singleTap];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) singleTapRecognized: (UITapGestureRecognizer *) recognizer {
    self.scoreLabel.text=@"Score";
}

-(void) answerVerify {
}

-(void) scoreIncrease {
    //[self.score buttonLeftClick];
}

- (IBAction)onStartPressed:(id)sender {
    self.startDate = [NSDate date];
    
    // Create the stop watch timer that fires every 100 ms
    self.stopWatchTimer = [NSTimer scheduledTimerWithTimeInterval:1.0/10.0
                                                           target:self
                                                         selector:@selector(updateTimer)
                                                         userInfo:nil
                                                          repeats:YES];
    
    NSDictionary *questions = self.model.quizQuestions;
}

- (void)onStopPressed:(id)sender {
    [self.stopWatchTimer invalidate];
    self.stopWatchTimer = nil;
    [self updateTimer];
    // when answer is clicked it records the time
}

- (void)updateTimer {
    // Create date from the elapsed time
    NSDate *currentDate = [NSDate date];
    NSTimeInterval timeInterval = [currentDate timeIntervalSinceDate:self.startDate];
    NSDate *timerDate = [NSDate dateWithTimeIntervalSince1970:timeInterval];
    
    // Create a date formatter
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"ss"];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0.0]];
    
    // Format the elapsed time and set it to the label
    NSString *timeString = [dateFormatter stringFromDate:timerDate];
    self.time.text = timeString;

}

- (IBAction)buttonLeftClick:(id)sender {
    score++;
    NSString *scoreCount = [[NSString alloc] initWithFormat:@"%d",score];
    self.scoreLabel.text = scoreCount;
    //self.scoreLabel.text = [NSInteger score];
//    self.scoreLabeld.text = [[NSString stringWithFormat:@"%d",[score] intValue]];
//    self.scoreLabel.text = [NSNumber score];
//
//                                                                                                                                                                                                                                                                                                                                                                                       self displayQuestion:[self.model questions]];
//    
}

- (IBAction)buttonRightClick:(id)sender {
    NSLog(@"button right");
}

//
-(void) questionQuery {
    
    
}





@end

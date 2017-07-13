//
//  AppDelegate.m
//  Patterns_6a_Adapter
//
//  Created by Ильяс on 13.07.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import "AppDelegate.h"
#import "Bird.h"
#import "Raven.h"
#import "RavenAdapter.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)makeTheBirdText:(id<BirdProtocol>)aBird {
    [aBird fly];
    [aBird sing];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    Bird *simpleBird = [[Bird alloc] init];
    Raven *simpleRaven = [[Raven alloc] init];
    RavenAdapter *ravenAdapter = [[RavenAdapter alloc] initWithRaven:simpleRaven];
    
    [self makeTheBirdText:simpleBird];
    [self makeTheBirdText:ravenAdapter];
    
    return YES;
}



@end

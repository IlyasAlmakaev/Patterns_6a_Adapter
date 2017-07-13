//
//  Bird.h
//  Patterns_6a_Adapter
//
//  Created by Ильяс on 13.07.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BirdProtocol

- (void)sing;
- (void)fly;

@end

@interface Bird : NSObject <BirdProtocol>

@end

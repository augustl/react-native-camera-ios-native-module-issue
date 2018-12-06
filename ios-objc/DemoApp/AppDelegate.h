//
//  AppDelegate.h
//  DemoApp
//
//  Created by August Lilleaas on 06/12/2018.
//  Copyright © 2018 August Lilleaas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end


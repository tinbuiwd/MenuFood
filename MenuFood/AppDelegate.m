//
//  AppDelegate.m
//  MenuFood
//
//  Created by Bui Van Tin on 8/10/17.
//  Copyright © 2017 Bui Van Tin. All rights reserved.
//

#import "AppDelegate.h"
#import "MainScreen.h"
#import "SaleOffScreen.h"
#import "AddressScreen.h"
#import "AboutScreen.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    // khoi tao mainScreen, @"MainScreen la ten file Xib vua tao
    MainScreen *mainScreen = [[MainScreen alloc] initWithNibName:@"MainScreen"
                                                          bundle:nil];
    //khoi tao tabbar cho mainscreen
    // selected image tuc la khi chon vao se hien len anh tiep theo minh muon hien thi
    UINavigationController *naviMainScreen = [[UINavigationController alloc] initWithRootViewController:mainScreen];
    mainScreen.title = @"Menu Food";
    naviMainScreen.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Menu"
                                                              image:[UIImage imageNamed:@"menuWhite.png"]
                                                                selectedImage:[UIImage imageNamed:@"menuWhite.png"]];
    
    
    
    SaleOffScreen *saleOffScreen = [[SaleOffScreen alloc] init];
    saleOffScreen.title = @"Sale Off";
    UINavigationController *naviSaleOffScreen = [[UINavigationController alloc] initWithRootViewController:saleOffScreen];
    naviSaleOffScreen.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Sale Off"
                                                                 image:[UIImage imageNamed:@"sale.png"]
                                                         selectedImage:[UIImage imageNamed:@"sale.png"]];
    
    AddressScreen *addressScreen = [[AddressScreen alloc] init];
    addressScreen.title =@"Address";
    UINavigationController *naviaddressScreen = [[UINavigationController alloc] initWithRootViewController:addressScreen];
    naviaddressScreen.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Sale Off"
                                                                 image:[UIImage imageNamed:@"sale.png"]
                                                         selectedImage:[UIImage imageNamed:@"sale.png"]];
    
    AboutScreen *aboutScreen = [[AboutScreen alloc] init];
    aboutScreen.title = @"About";
    UINavigationController *naviAboutScreen = [[UINavigationController alloc] initWithRootViewController:aboutScreen];
    [naviAboutScreen.tabBarItem setTitle:@"About"];
    [naviAboutScreen.tabBarItem setImage:[UIImage imageNamed:@"aboutWhite.png"]];
    [naviAboutScreen.tabBarItem setSelectedImage:[UIImage imageNamed:@"aboutWhite.png"]];
                                  
    
    //khai bao 1 tabbar contronller, roi add nhung class tren
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = @[naviMainScreen, naviSaleOffScreen, naviaddressScreen, naviAboutScreen];
    
    //tao mau sac cho background
    tabBarController.tabBar.tintColor = [UIColor whiteColor];
    tabBarController.tabBar.barStyle = UIBarStyleBlack;
    tabBarController.tabBar.translucent = NO;
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor] }
                                                        forState:UIControlStateNormal];
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor colorWithRed:1 green:1 blue:1 alpha:1] }
                                             forState:UIControlStateSelected];
    //thay doi font chu cho title
    NSShadow *shaDow = [[NSShadow alloc] init];
    shaDow.shadowColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0.8];
    shaDow.shadowOffset = CGSizeMake(0, 1);
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor], NSForegroundColorAttributeName, shaDow, NSShadowAttributeName,[UIFont fontWithName:@"arial rounded mt bold" size:23], NSFontAttributeName, nil]];
    [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];
    [[UINavigationBar appearance] setTranslucent:YES];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = tabBarController;
                   [self.window makeKeyAndVisible];
    
        return YES;
                   
    
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end

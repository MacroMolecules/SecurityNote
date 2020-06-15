
#import "TCAppDelegate.h"
#import "TCShowViewController.h"
#import "DHDeviceUtil.h"

@implementation TCAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
        // 从故事版中加载
        UIStoryboard *stryBoard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
        self.window.rootViewController = [stryBoard instantiateInitialViewController];
        
#ifdef DEBUG
    
#else
    [self startBaiduMobStat];
#endif
    
    [self.window makeKeyAndVisible];
    return YES;

}

@end

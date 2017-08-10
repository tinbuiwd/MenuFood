//
//  MainScreen.m
//  MenuFood
//
//  Created by Bui Van Tin on 8/10/17.
//  Copyright © 2017 Bui Van Tin. All rights reserved.
//

#import "MainScreen.h"
#import "DetailScreen.h"

@interface MainScreen ()
@property (nonatomic, strong)DetailScreen *detailScreen;
@end

@implementation MainScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back"
                                                                             style:UIBarButtonItemStylePlain target:nil action:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)btnIceCream:(id)sender {
    if(!self.detailScreen){
        [self.detailScreen = [DetailScreen alloc] init];
    }
    self.detailScreen.stringTitleDetailScreen = @"Ice Cream";
    [self.navigationController pushViewController:self.detailScreen animated:YES];
}
- (IBAction)btnDrink:(id)sender {
    if(!self.detailScreen){
        [self.detailScreen = [DetailScreen alloc] init];
    }
    self.detailScreen.stringTitleDetailScreen = @"Drink";
    [self.navigationController pushViewController:self.detailScreen animated:YES];

}
- (IBAction)btnBirthday:(id)sender {
    if(!self.detailScreen){
        [self.detailScreen = [DetailScreen alloc] init];
    }
    self.detailScreen.stringTitleDetailScreen = @"Birthday";
    [self.navigationController pushViewController:self.detailScreen animated:YES];

}
- (IBAction)btnCookies:(id)sender {
    if(!self.detailScreen){
        [self.detailScreen = [DetailScreen alloc] init];
    }
    self.detailScreen.stringTitleDetailScreen = @"Cookies";
    [self.navigationController pushViewController:self.detailScreen animated:YES];

}
- (IBAction)btnBread:(id)sender {
    if(!self.detailScreen){
        [self.detailScreen = [DetailScreen alloc] init];
    }
    self.detailScreen.stringTitleDetailScreen = @"Bread";
    [self.navigationController pushViewController:self.detailScreen animated:YES];

}

@end

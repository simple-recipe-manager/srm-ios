//
//  ViewController.m
//  Whisk.ly
//
//  Created by Breland Miley on 2/8/15.
//  Copyright (c) 2015 Whisk.ly. All rights reserved.
//

#import "ViewController.h"
#import <SimpleRecipeManager/RecipeController.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    RecipeController *recipeController = [[RecipeController alloc] init];
    [recipeController retrieveASingleRecipeAsyncWithId:@"5fe8eb02-a05b-401c-91f0-7f8a4e6b984d" completionBlock:^(BOOL success, id context, RetrieveASingleRecipeResponse *response, NSError *error) {
        [self.recipeNameHeader setText:response.recipeName];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

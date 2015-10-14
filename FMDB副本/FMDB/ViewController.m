//
//  ViewController.m
//  FMDB
//
//  Created by lanou3g on 15/10/13.
//  Copyright (c) 2015年 张晓敏. All rights reserved.
//

#import "ViewController.h"
#import "FMDatabase.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    NSString *documentDictory = [paths objectAtIndex:0];
    NSString *dbpath = [documentDictory stringByAppendingString:@"MyDatabase.db"];
    FMDatabase *db = [FMDatabase databaseWithPath:dbpath];
    if (![db open])
    {
        NSLog(@"could not open db.");
        return;
    }
    else
    {
        NSString *sqlCreateTable = [NSString stringWithFormat:@"CREATE TABLE IF NOT EXISTS '%@' ('%@' INTEGER PRIMARY KEY AUTOINCREMENT, '%@' TEXT, '%@' INTEGER, '%@' TEXT)",NAME,ID,NAME,AGE,ADDRESS];
    }

    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

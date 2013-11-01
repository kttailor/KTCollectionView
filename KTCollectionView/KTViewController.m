//
//  KTViewController.m
//  KTCollectionView
//
//  Created by Krunal T Tailor on 31/10/13.
//  Copyright (c) 2013 Krunal T Tailor. All rights reserved.
//

#import "KTViewController.h"

@interface KTViewController ()

@end

@implementation KTViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.collectionView registerNib:[UINib nibWithNibName:@"KTCell" bundle:nil] forCellWithReuseIdentifier:@"CELL"];
    self.title = @"My Collection";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma Mark UICollectionViewDataSource

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 100;
}

- (KTCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    KTCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CELL" forIndexPath:indexPath];
    cell.cellLabel.text = [NSString stringWithFormat:@"cell %i",indexPath.row + 1];
    return cell;
}

#pragma mark UICollectionViewDelegate

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    KTCell *cell = (KTCell*)[collectionView cellForItemAtIndexPath:indexPath];
    NSArray *views = [cell.contentView subviews];
    UILabel *label = [views objectAtIndex:0];
    
    NSString *str = [NSString stringWithFormat:@"%@ selected",label.text];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:str delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
}


@end

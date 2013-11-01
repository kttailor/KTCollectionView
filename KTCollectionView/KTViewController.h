//
//  KTViewController.h
//  KTCollectionView
//
//  Created by Krunal T Tailor on 31/10/13.
//  Copyright (c) 2013 Krunal T Tailor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KTCell.h"
@interface KTViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic, strong) IBOutlet UICollectionView *collectionView;
@end

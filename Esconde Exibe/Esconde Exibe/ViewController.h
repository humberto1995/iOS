//
//  ViewController.h
//  Esconde Exibe
//
//  Created by Usuário Convidado on 24/02/17.
//  Copyright © 2017 Jaime Ricardo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


- (IBAction)ocultarView:(id)sender;

- (IBAction)exibirView:(id)sender;

@property (weak, nonatomic) IBOutlet UIView *minhaView;

@end


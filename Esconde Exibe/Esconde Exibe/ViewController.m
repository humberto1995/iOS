//
//  ViewController.m
//  Esconde Exibe
//
//  Created by Usuário Convidado on 24/02/17.
//  Copyright © 2017 Jaime Ricardo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)ocultarView:(id)sender {
    [UIView beginAnimations:nil context:nil];
    self.minhaView.alpha = 0;
    [UIView commitAnimations];
    
}

- (IBAction)exibirView:(id)sender {
    [UIView beginAnimations:nil context:nil];
    self.minhaView.alpha = 1;
    [UIView commitAnimations];
}
@end

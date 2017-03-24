//
//  ViewController.h
//  UIKIT OBJC
//
//  Created by Usuário Convidado on 24/02/17.
//  Copyright © 2017 Jaime Ricardo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *meuSegmento;

- (IBAction)indexChanged:(id)sender;



@property (weak, nonatomic) IBOutlet UILabel *lblAno;



@property (weak, nonatomic) IBOutlet UILabel *lblKm;



@property (weak, nonatomic) IBOutlet UILabel *lblRota;


@property (weak, nonatomic) IBOutlet UIStepper *meuStepper;


- (IBAction)stepperValueChanged:(id)sender;

- (IBAction)sliderValueChanged:(UISlider *)sender;

- (IBAction)switchValueChanged:(UISwitch *)sender;

- (IBAction)escolherRota:(id)sender;

- (IBAction)salvarDados:(id)sender;

@end


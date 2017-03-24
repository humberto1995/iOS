//
//  ViewController.m
//  UIKIT OBJC
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
    self.lblAno.text=@"1980";
    self.lblKm.text=@"7500";
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)indexChanged:(id)sender {
    
    switch (self.meuSegmento.selectedSegmentIndex) {
        case 0:
            NSLog(@"Voce escolheu o primeiro botão");
            break;
        case 1:
            NSLog(@"Voce escolheu o segundo botão");
        case 2:
            NSLog(@"Voce escolheu %@",[self.meuSegmento titleForSegmentAtIndex:self.meuSegmento.selectedSegmentIndex]);
            break;
        default:
            break;
    }
}
- (IBAction)stepperValueChanged:(id)sender {
    self.lblAno.text = [NSString stringWithFormat:@"%0.0f",self.meuStepper.value];
    
}

- (IBAction)sliderValueChanged:(UISlider *)sender {
    self.lblKm.text = [NSString stringWithFormat:@"%0.0f",sender.value];
}

- (IBAction)switchValueChanged:(UISwitch *)sender {
    NSLog(@"%d", sender.on);
    
}

- (IBAction)escolherRota:(id)sender {
    UIAlertController *aviso = [UIAlertController
                                alertControllerWithTitle:@"Forma para receber a Rota" message:@"Faca sua escolha"
                                preferredStyle:UIAlertControllerStyleActionSheet];
    
   UIAlertAction *sms = [UIAlertAction
                         actionWithTitle:@"SMS" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                             self.lblRota.text = action.title;
                         }];
    UIAlertAction *email = [UIAlertAction
                          actionWithTitle:@"E-mail" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                              self.lblRota.text = action.title;
                          }];
    UIAlertAction *cancel = [UIAlertAction
                          actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                              [aviso dismissViewControllerAnimated:YES completion:nil];
                          }];
    
    [aviso addAction:sms];
    [aviso addAction:email];
    [aviso addAction:cancel];
    [self presentViewController:aviso animated:YES completion:nil];
    
    
}

- (IBAction)salvarDados:(id)sender {
    
    NSString *msg;
    NSString *tipo;
    
    if(self.meuSegmento.selectedSegmentIndex >=0){
        tipo = [self.meuSegmento titleForSegmentAtIndex:self.meuSegmento.selectedSegmentIndex];
        msg = [NSString stringWithFormat:@"Veiculo %@, do ano %@ salvo com sucesso!",tipo,[self.lblAno text]];
    }else{
    tipo=@"";
     msg=@"Antes de salvar escolha o tipo do veiculo";
    
    }
    UIAlertController *alerta =[UIAlertController
                                alertControllerWithTitle:@"Atencao" message:msg preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *ok =[UIAlertAction
                            actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                                [alerta dismissViewControllerAnimated:YES completion:nil];
                            }];
    
    [alerta addAction:ok];
    [self presentViewController:alerta animated:YES completion:nil];
}
@end

//
//  Pessoa.h
//  Exercicio_08
//
//  Created by Usuário Convidado on 31/03/17.
//  Copyright © 2017 Humberto Cavalcanti Krzywy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pessoa : NSObject

@property (nonatomic,retain)NSString* nome;
@property (nonatomic) float peso;
@property (nonatomic) float altura;
@property (nonatomic) float imc;

-(void) calcularIMC;

-(float) calcularIMC_2;

@end

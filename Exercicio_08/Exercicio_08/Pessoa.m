//
//  Pessoa.m
//  Exercicio_08
//
//  Created by Usuário Convidado on 31/03/17.
//  Copyright © 2017 Humberto Cavalcanti Krzywy. All rights reserved.
//

#import "Pessoa.h"

@implementation Pessoa

-(float) calcularIMC_2{
    return self.peso / (self.altura*self.altura);
}

-(void) calcularIMC{
    self.imc = self.peso / pow(self.altura,2);
}

@end

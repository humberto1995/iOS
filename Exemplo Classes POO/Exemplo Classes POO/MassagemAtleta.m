//
//  MassagemAtleta.m
//  Exemplo Classes POO
//
//  Created by Usuário Convidado on 24/03/17.
//  Copyright © 2017 Jaime Ricardo. All rights reserved.
//

#import "MassagemAtleta.h"

@implementation MassagemAtleta
@synthesize atleta;

-(void)massagear{
    NSLog(@"Massageando o atleta %@ que possui %d anos",[atleta getNome],[atleta getIdade]);
}

@end

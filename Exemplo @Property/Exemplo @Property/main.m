//
//  main.m
//  Exemplo @Property
//
//  Created by Usuário Convidado on 24/03/17.
//  Copyright © 2017 Humberto Krzywy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Carro.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Carro *c = [[Carro alloc]init];
        //SET usando o formato colchete objeto espaço
        [c setMarca:@"BMW"];
        //com @property vc pode setar usando formato objeto ponto
        c.modelo = @"X6";
        c.anoFabricacao = 2017;
        //GET usando a notação colchete objeto espaço
        NSLog(@"Marca: %@",[c marca]);
        //GET usando a notaçao objeto espaço
        NSLog(@"Modelo: %@",c.modelo);
        NSLog(@"Ano Fabricação: %d",c.anoFabricacao);
    }
    return 0;
}

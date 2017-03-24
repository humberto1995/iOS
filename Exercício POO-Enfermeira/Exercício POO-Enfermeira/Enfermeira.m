//
//  Enfermeira.m
//  Exercício POO-Enfermeira
//
//  Created by Usuário Convidado on 09/03/17.
//  Copyright © 2017 Agesandro Scarpioni. All rights reserved.
//

#import "Enfermeira.h"

@implementation Enfermeira

-(void)setNome:(NSString *)_nome{
    nome = _nome;
}
-(NSString *)getNome{
    return nome;
}
-(void)setCoren:(int)_coren{
    coren = _coren;
}
-(int)getCoren{
    return coren;
}
-(void)setPlantao:(BOOL)_plantao{
    plantao = _plantao;
}
-(BOOL)getPlantao{
    return plantao;
}
-(void)setSalario:(float)_salario{
    salario = _salario;
}
-(float)getSalario{
    return salario;
}

-(Enfermeira *)initWithNome:(NSString *)_nome andCoren:(int)_coren andPlantao:(BOOL)_plantao andSalario:(float)_salario{
    self= [super init];
    if(self){
    
        [self setNome:_nome];
        [self setCoren:_coren];
        [self setPlantao:_plantao];
        [self setSalario:_salario];
    }
    return self;
}



-(NSString *)medicarComQtdComprimidos:(int) qtd

                         eNomeRemedio:(NSString *) nomeRemedio{

    return [NSString stringWithFormat:@"Medicando com %@, %d comprimidos",nomeRemedio,qtd];
}

-(float)calcularSoroComQtdMl:(float) mililitros
            eFrequenciaaoDia:(int) qtd{

    return qtd * mililitros;

}

-(NSString *)prepararBanhoComTemperatura:(int) temperatura
                              eHoraCheia:(int) horario
                               eDuracao:(int)minutos {

    return [NSString stringWithFormat:@"Banho ok com temperatura %d no horário %d durante %d minutos",temperatura,horario,minutos];
}


// aqui fazemos uma divisão de qtd de medicamento pela posologia.
//indicada pelo meédico e sabemos quantos dias o rem;eio dura.
-(float)verQtdRemedioDisponivelParaTratamentoComQuantidade:(int) qtd
                                                ePosologia:(int) poso{

    return qtd / poso;

}


@end

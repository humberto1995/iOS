//
//  MassagemAtleta.h
//  Exemplo Classes POO
//
//  Created by Usuário Convidado on 24/03/17.
//  Copyright © 2017 Jaime Ricardo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Atleta.h"

@interface MassagemAtleta : NSObject

@property (nonatomic,retain) Atleta *atleta;

-(void)massagear;

@end

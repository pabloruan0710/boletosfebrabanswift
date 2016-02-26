//
//  NomesConvenio.swift
//  PS Mobile
//
//  Created by Pablo on 2/26/16.
//  Copyright © 2016 PrimeSoftware. All rights reserved.
//

import Foundation


///RETORNA TIPO CONVENIO
/*
Função para pegar nome de convênios de códigos de barras
- parameter bar: codigo do convenio
- returns bar: 
- 1. Prefeituras; 
- 2. Saneamento; 
- 3. Energia Elétrica e Gás; 
- 4. Telecomunicações; 
- 5. Órgãos Governamentais;
- 6. Carnes e Assemelhados ou demais Empresas / Órgãos que serão identificadas através do CNPJ.
- 7. Multas de trânsito
- 9. Uso exclusivo do banco
*/
func getNameConvenios(CodigoSegmento:String)->String{
    
    let nomeConvenio:String!
    
    switch CodigoSegmento {
    case "1":
        nomeConvenio = "Prefeituras"
    case "2":
        nomeConvenio = "Saneamento"
    case "3":
        nomeConvenio = "Energia Elétrica e Gás"
    case "4":
        nomeConvenio = "Telecomunicações"
    case "5":
        nomeConvenio = "Órgãos Governamentais"
    case "6":
        nomeConvenio = "Carnes e Assemelhados ou demais Empresas / Órgãos que serão identificadas através do CNPJ."
    case "7":
        nomeConvenio = "Multas de trânsito"
    case "9":
        nomeConvenio = "Uso exclusivo do banco"
    default:
        nomeConvenio = "Convênio Desconhecido"
        break
    }
    
    return nomeConvenio
}

# Boletos Reader Padrão Febraban Swift 2.0 iOS

Projeto criado com intuito de pegar dados de um boleto bancário lido ou digitado, ou seja você passa o código do boleto e a função te retorna os dados de Valor, Vencimento (se disponível), Banco, nome do convênio.

*De acordo com regras do Febraban.

### Requisitos
XCODE 6 ou +, iOS

### Instalar

Copie os 4 arquivos para seu projeto.

### Utilização

Para retornar dados do boleto lido através do leitor de códigos de barras do iphone.


> Boletos.getValuesBoletoLidos("83610000002137200090509921791015000012682305")


> retorno ["banconome": "Energia Elétrica e Gás", "valor": "00000022137", "datavencimento": "Boleto pode ser pago em qualquer data."]

Para retornar dados do boleto digitado através.


> Boletos.getValuesBoletosDigitatos("83610000002137200090509921791015000012682305")


> retorno ["banconome": "Caixa Econômica Federal", "valor": "0000009680", "datavencimento": "20/2/2016"]

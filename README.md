# Sobre o projeto
Será feita a automatização de um caminho feliz de carrinho de compras, utilizando Android, utilizando o aplicativo das Casas Bahia

###
Utilizei o tutorial para Appium da Maria Clara como base para desenvolvimento.
Disponível em: https://github.com/clarabez/appium

# Sobre o Robot
Robot é um framework escrito em Python para automatização de testes, de estrutura complexa e os casos de teste podem ser escritos em linguagem natural baseada na identação.
Neste exemplo utilizaremos com a Appium Library para automatização de testes em aplicações mobile (.apk).

## Para rodar os testes
Em um terminal:
> robot -d results/ tests/functional/

Em outro terminal:
> appium --address 127.0.0.1

### Estrutura de pastas do Robot
resource / results / tests

#### resource
Conterá arquivos para definição de 'variables' e 'keywords'.

#### results
Conterá:
- screenshots gerados a partir do momento de erro dos testes, 
- log de execução dos testes e estatísticas em .html, 
- relatório de execução de testes em .html

#### tests
Conterá arquivos para definição de 'test cases'.

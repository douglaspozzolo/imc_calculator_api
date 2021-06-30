# README

* Ruby version: ruby 2.5.1p57
* Rails version: Rails 5.2.6

Com as versões devidamente instaladas e definidas, rode o comando na pasta clonada do projeto:

$ bundle install

* Recomendo a utilização do Postman para enviar requisições POST para a rota '/imc'


Esta API calcula o Índice de Massa Corpórea (IMC) de uma pessoa, dado um json contendo valores de "height", e "weight" .


Ex:
Dada a entrada: { "height": 1.70, "weight": 76 }, o
o retorno é: {"imc": 26.3,"classification": "Sobrepeso", "obesity": "I" }

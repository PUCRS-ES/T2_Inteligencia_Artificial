(define (problem problema) 
(:domain dominio) 
(:objects Sala1 Sala2 Sala3 Sala4 Corredor1 Deposito1)
(:init 
       ;Define que o robo inicia no deposito
       (Em Deposito1)

       ;Define que a escada esta guardada inicialmente no deposito
       (Escada Deposito1)

       ;Define que todas as salas inicialmente estao pintadas de branco
       (Branca Sala1) (Branca Sala2) (Branca Sala3) (Branca Sala4)
         (Sala Sala1)   (Sala Sala2)   (Sala Sala3)   (Sala Sala4)

       ;Define as entidades Corredor e Deposito
       (Corredor Corredor1) (Deposito Deposito1))

;Define nosso objetivo: pintar todas as salas de azul
(:goal (and (Azul Sala1) (Azul Sala2) (Azul Sala3) (Azul Sala4)) )
)

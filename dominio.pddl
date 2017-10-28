(define (domain dominio)
 (:requirements :strips )
 (:predicates (Em ?loc ) (Sala ?loc) (Corredor ?loc) (Deposito ?loc) (Branca ?loc) (Azul ?loc))

 (:action entrar :parameters (?loc1 ?loc2)
  :precondition (and (Em ?loc1) (Corredor ?loc1) (Sala ?loc2))
  :effect       (and (Em ?loc2) (not (Em ?loc1)) )
 )

 ;Nao consegui usar "OR". Mesmo importando ":disjunctive-preconditions" no requirements na 2a linha.
 (:action entrar2 :parameters (?loc1 ?loc2)
  :precondition (and (Em ?loc1) (Corredor ?loc1) (Deposito ?loc2))
  :effect       (and (Em ?loc2) (not (Em ?loc1)) )
 )

 (:action sair :parameters (?loc1 ?loc2) 
  :precondition (and (Em ?loc1) (Sala ?loc1) (Corredor ?loc2))
  :effect       (and (Em ?loc2) (not (Em ?loc1)) )
 )

 ;Nao consegui usar "OR". Mesmo importando ":disjunctive-preconditions" no requirements na 2a linha.
 (:action sair2 :parameters (?loc1 ?loc2)
  :precondition (and (Em ?loc1) (Deposito ?loc1) (Corredor ?loc2))
  :effect       (and (Em ?loc2) (not (Em ?loc1)) )
 )

 (:action pintar :parameters (?loc1)
  :precondition (and (Em ?loc1) (Sala ?loc1) (Branca ?loc1) (Escada ?loc1) (Tinta ?loc1))
  :effect       (and (Em ?loc1) (Sala ?loc1) (Azul ?loc1)   (Escada ?loc1) (Tinta ?loc1))
 )

 (:action mover_escada :parameters (?loc1 ?loc2)
  :precondition (and (Em ?loc1) (Deposito ?loc1) (Corredor ?loc2) (Escada ?loc1))
  :effect       (and (Em ?loc2) (not (Em ?loc1))                  (Escada ?loc2) (not (Escada ?loc1)) )
 )

 (:action mover_escada_2 :parameters (?loc1 ?loc2)
  :precondition (and (Em ?loc1) (Corredor ?loc1) (Sala ?loc2) (Escada ?loc1))
  :effect       (and (Em ?loc2) (not (Em ?loc1))              (Escada ?loc2) (not (Escada ?loc1)) )
 )

 (:action mover_escada_3 :parameters (?loc1 ?loc2)
  :precondition (and (Em ?loc1) (Sala ?loc1) (Corredor ?loc2) (Escada ?loc1))
  :effect       (and (Em ?loc2) (not (Em ?loc1))              (Escada ?loc2) (not (Escada ?loc1)) )
 )

 (:action mover_tinta :parameters (?loc1 ?loc2)
  :precondition (and (Em ?loc1) (Deposito ?loc1) (Corredor ?loc2) (Tinta ?loc1))
  :effect       (and (Em ?loc2) (not (Em ?loc1))                  (Tinta ?loc2) (not (Tinta ?loc1)) )
 )

 (:action mover_tinta_2 :parameters (?loc1 ?loc2)
  :precondition (and (Em ?loc1) (Corredor ?loc1) (Sala ?loc2) (Tinta ?loc1))
  :effect       (and (Em ?loc2) (not (Em ?loc1))              (Tinta ?loc2) (not (Tinta ?loc1)) )
 )

 (:action mover_tinta_3 :parameters (?loc1 ?loc2)
  :precondition (and (Em ?loc1) (Sala ?loc1) (Corredor ?loc2) (Tinta ?loc1))
  :effect       (and (Em ?loc2) (not (Em ?loc1))              (Tinta ?loc2) (not (Tinta ?loc1)) )
 )
)

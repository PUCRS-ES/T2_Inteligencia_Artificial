(define (domain dominio)
 (:requirements :strips ) 
 (:predicates (Em ?loc ) (Sala ?loc) (Corredor ?loc) (Deposito ?loc))

 (:action entrar :parameters (?loc1 ?loc2) 
  :precondition (and (Em ?loc1) (Corredor ?loc1) (Sala ?loc2))
  :effect (and (Em ?loc2) (not (Em ?loc1)) )
 )

 ;Nao consegui usar "OR". Mesmo importando ":disjunctive-preconditions" no requirements na 2a linha. Conversar com a profa.
 (:action entrar2 :parameters (?loc1 ?loc2) 
  :precondition (and (Em ?loc1) (Corredor ?loc1) (Deposito ?loc2))
  :effect (and (Em ?loc2) (not (Em ?loc1)) )
 )

 (:action sair :parameters (?loc1 ?loc2) 
  :precondition (and (Em ?loc1) (Sala ?loc1) (Corredor ?loc2))
  :effect (and (Em ?loc2) (not (Em ?loc1)) )
 )

 ;Nao consegui usar "OR". Mesmo importando ":disjunctive-preconditions" no requirements na 2a linha. Conversar com a profa.
 (:action sair2 :parameters (?loc1 ?loc2) 
  :precondition (and (Em ?loc1) (Deposito ?loc1) (Corredor ?loc2))
  :effect (and (Em ?loc2) (not (Em ?loc1)) )
 )

 ;(:action limpar :parameters (?loc1) 
 ; :precondition (and (Em ?loc1) (Sala ?loc1) (Suja ?loc1))
 ; :effect (and (Limpa ?loc1) (not (Suja ?loc1)) )  )
)

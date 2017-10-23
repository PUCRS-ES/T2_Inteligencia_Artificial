(define (domain agenteSimples)
 (:requirements :strips ) 
 (:predicates (Em ?loc ) (Sala ?loc) (Suja ?loc ) (Limpa ?loc)) //alterar

 //entra em um local corredor -> local
 (:action entrar :parameters (?loc1 ?loc2) 
  :precondition (and (Em ?loc1) (Corredor ?loc1) (Sala ?loc2))
  :effect (and (Em ?loc2) (not (Em ?loc1)) ) )
  
 //volta para o corredor de um local local -> corredor
 (:action sair :parameters (?loc1 ?loc2) 
  :precondition (and (Em ?loc1) (Sala ?loc1) (Corredor ?loc2))
  :effect (and (Em ?loc2) (not (Em ?loc1)) ) )

  //precisa alterações
 (:action pintarparede :parameters (?loc1) 
  :precondition (and (Em ?loc1) (Sala ?loc1) (Cor Branca ?loc1))
  :effect (and (Cor Azul ?loc1) (not (Cor Branca ?loc1)) ) )

 //precisa alterações
 (:action pintarteto :parameters (?loc1) 
  :precondition (and (Em ?loc1) (Sala ?loc1) (Cor Branca ?loc1))
  :effect (and (Cor  ?loc1) (not (Cor Branca ?loc1)) ) )
)

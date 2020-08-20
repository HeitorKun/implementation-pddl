; Domain description

(define (domain paradigm_planner) 

  (:requirements
    :strips                 
    :negative-preconditions 
    :equality               
  )

  (:predicates
    (region ?region)
    (paradigm ?paradigm)
    (block ?block)
    (lobe ?lobe)
    (active ?paradigm ?block ?region)
    (actived ?region)
    (belong ?region ?lobe)
  )

  (:action chosen_paradigm
    :parameters (?paradigm ?block ?region)
    :precondition (and
      (paradigm ?paradigm)
      (block ?block)
      
      (active ?paradigm ?block ?region)
    )
    :effect (and
      (actived ?region)
    )
  )

  (:action chosen_paradigm2
    :parameters (?paradigm ?block ?region1 ?region2)
    :precondition (and
      (paradigm ?paradigm)
      (block ?block)
      (active ?paradigm ?block ?region1)
      (active ?paradigm ?block ?region2)
    )
    :effect (and
      (actived ?region1)
      (actived ?region2)
    )
  )
  
  (:action cerebral_lobe
    :parameters (?paradigm ?block ?region ?lobe)
    :precondition (and
      (paradigm ?paradigm)
      (lobe ?lobe)
      (block ?block)
      (belong ?region ?lobe)
      (active ?paradigm ?block ?region)
    )
    :effect (and
      (actived ?region)
      (actived ?lobe)
    )
  )  

)

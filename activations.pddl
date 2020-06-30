
(define (problem activations)
  (:domain paradigm_planner)

  (:objects 
    AG LG STG ORB ACC HIP SP PRE MTG SG INS IOG MOG IFG SPL ITG FG THA CUN MFG IPL PUT
    calculus change falmem fastloc palavras sennum
    equation number chang false true falsefont print speech vocod iregular regular pseudo resp fig
    parietal_lobe temporal_lobe frontal_lobe occipital_lobe subcortical)
    
  (:init

    ; Brain Regions
    (region AG) ; Angular Gyrus
    (region LG) ; Lingual Gyrus
    (region STG) ; Superior Temporal Gyrus
    (region ORB) ; Orbitofrontal
    (region ACC)  ; Anterior Cingulate Cortex
    (region HIP) ; Hippocampus/Parahippocampus
    (region SP) ; Superior Parietal
    (region PRE) ; Precuneus
    (region MTG) ; Middle Temporal Gyrus
    (region SG) ; Supramarginal Gyrus
    (region INS) ; Insula
    (region IOG) ; Inferior Occipital Gyrus
    (region MOG) ; Middle Occipital Gyrus
    (region IFG) ; Inferior Frontal Gyrus
    (region SPL) ; Superior Parietal Lobule
    (region ITG) ; Inferior Temporal Gyrus
    (region FG) ; Fusiform Gyrus
    (region THA) ; Thalamus
    (region CUN) ; Cuneus
    (region MFG) ; Middle Frontal Gyrus
    (region IPL) ; Inferior Parietal Lobule
    (region PUT) ; Putamen

    ; Paradigms     
    (paradigm calculus)
    (paradigm change)
    (paradigm falmem)
    (paradigm fastloc)
    (paradigm palavras)
    (paradigm sennum)
    
    ; Stimulus blocks of paradigms
    (block equation)
    (block number)
    (block chang)
    (block false)
    (block true)
    (block falsefont)
    (block print)
    (block speech)
    (block vocod)
    (block iregular)
    (block regular)
    (block pseudo)
    (block fig)
    (block resp)
    
    ; Brain lobes
    (lobe parietal_lobe)
    (lobe temporal_lobe)
    (lobe frontal_lobe)
    (lobe occipital_lobe)
    (lobe subcortical)
    
    ; Task: calculus / block: equation
    (active calculus equation AG)
    (active calculus equation LG)
    (active calculus equation STG)
    (active calculus equation ORB)
    (active calculus equation ACC)
    (active calculus equation HIP)
    (active calculus equation SP)
    (active calculus equation PRE)

    ; Task: calculus / block: number
    (active calculus number STG)
    (active calculus number HIP)
    (active calculus number MTG)
    (active calculus number LG)
    (active calculus number ORB)
    (active calculus number PRE)
    
    ; Task: change / block: change
    (active change chang MTG)
    (active change chang LG)
    (active change chang SG)
    (active change chang INS)
    (active change chang PRE)

    ; Task: falmem / block: false
    (active falmem false STG)
    (active falmem false INS)
    (active falmem false ACC)
    (active falmem false LG)
    (active falmem false SG)
    
    ; Task: falmem / block: true
    (active falmem true STG)
    (active falmem true SG)
    (active falmem true LG)
    
    ; Task: fastloc / block: falsefont
    (active fastloc falsefont IOG)
    (active fastloc falsefont MOG)
    (active fastloc falsefont IFG)
    (active fastloc falsefont SPL)
    (active fastloc falsefont HIP)
    
    ; Task: fastloc / block: print
    (active fastloc print INS)
    (active fastloc print IFG)
    (active fastloc print IOG)
    (active fastloc print MOG)
    (active fastloc print SPL)
    (active fastloc print ITG)
    (active fastloc print FG)

    ; Task: fastloc / block: speech
    (active fastloc speech MTG)
    (active fastloc speech STG)
    (active fastloc speech IFG)
    
    ; Task: fastloc / block: vocod
    (active fastloc vocod MTG)
    (active fastloc vocod STG)
    (active fastloc vocod THA)
    (active fastloc vocod LG)

    ; Task: palavras / block: pseudo   
    (active palavras pseudo IOG)
    (active palavras pseudo MOG)
    (active palavras pseudo CUN)
    (active palavras pseudo ACC)
    (active palavras pseudo MFG)
    (active palavras pseudo INS)
    (active palavras pseudo SPL)

    ; Task: palavras / block: regular
    (active palavras regular CUN)
    (active palavras regular LG)
    (active palavras regular IOG)
    (active palavras regular MOG)
    (active palavras regular ACC)
    (active palavras regular INS)
    (active palavras regular MFG)
    (active palavras regular SPL)
    (active palavras regular THA)
    
    ; Task: palavras / block: iregular
    (active palavras iregular IOG)
    (active palavras iregular MOG)
    (active palavras iregular INS)
    (active palavras iregular IFG)
    (active palavras iregular ACC)
    (active palavras iregular MFG)
    
    ; Task: sennum / block: fig
    (active sennum fig IOG)
    (active sennum fig MOG)
    (active sennum fig LG)
    (active sennum fig IPL)
    (active sennum fig CUN)
    (active sennum fig PUT)
    
    ; Task: sennum / block: resp
    (active sennum resp IOG)
    (active sennum resp MOG)
    (active sennum resp INS)
    (active sennum resp SPL)
    (active sennum resp IFG)
    (active sennum resp PUT)
    (active sennum resp AG)
    (active sennum resp HIP)
    (active sennum resp THA)
    
    ; Parietal Lobe
    (belong AG parietal_lobe)
    (belong SP parietal_lobe)
    (belong PRE parietal_lobe)
    (belong SG parietal_lobe)
    (belong SPL parietal_lobe)
    (belong IPL parietal_lobe)
    ; Temporal Lobe
    (belong STG temporal_lobe)
    (belong MTG temporal_lobe)
    (belong ITG temporal_lobe)
    (belong FG temporal_lobe)
    ; Frontal Lobe
    (belong ORB frontal_lobe)
    (belong IFG frontal_lobe)
    (belong MFG frontal_lobe)
    (belong ACC frontal_lobe)
    ; Occipital Lobe
    (belong LG occipital_lobe)
    (belong IOG occipital_lobe)
    (belong MOG occipital_lobe)
    (belong CUN occipital_lobe)
    ; Subcortical
    (belong HIP subcortical)
    (belong INS subcortical)
    (belong THA subcortical)
    (belong PUT subcortical)
    
  )

  (:goal (and
    (actived THA)
    (actived MOG)
    (actived CUN)
    (actived occipital_lobe)
    (actived subcortical)
   ))
)
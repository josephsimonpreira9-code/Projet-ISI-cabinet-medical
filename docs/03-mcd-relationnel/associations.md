# Associations du MCD — Solution Relationnelle

## EST_TRAITE_PAR (PATIENT — MEDECIN)
- Cardinalités : PATIENT (1,1) — MEDECIN (0,n)
- Un patient a un seul médecin traitant ; un médecin peut avoir plusieurs patients.

## CONCERNE (PATIENT — VISITE)
- Cardinalités : PATIENT (0,n) — VISITE (1,1)
- Une visite concerne un seul patient ; un patient a plusieurs visites.

## EFFECTUE (MEDECIN — VISITE)
- Cardinalités : MEDECIN (0,n) — VISITE (1,1)
- Une visite est réalisée par un seul médecin (pas forcément le traitant) ; un médecin effectue plusieurs visites.

## DONNE_LIEU_A (VISITE — ORDONNANCE)
- Cardinalités : VISITE (0,1) — ORDONNANCE (1,1)
- Une visite génère au maximum une ordonnance de médicaments (parfois aucune) ; une ordonnance est toujours liée à une visite.

## GENERE (VISITE — DEMANDE_ANALYSE)
- Cardinalités : VISITE (0,n) — DEMANDE_ANALYSE (1,1)
- Une visite peut générer plusieurs demandes d'analyses (ou aucune) ; une demande d'analyse est liée à une seule visite.

## PRESCRIT (ORDONNANCE — MEDICAMENT), association porteuse d'attributs
- Cardinalités : ORDONNANCE (1,n) — MEDICAMENT (0,n)
- Une ordonnance contient au moins un médicament ; un médicament peut figurer sur plusieurs ordonnances.
- Attributs portés par l'association (posologie) : NB_PRISES, NB_DOSES_PAR_PRISE, FREQUENCE_JOURNALIERE, DUREE_TRAITEMENT

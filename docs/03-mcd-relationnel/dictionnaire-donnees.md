# Dictionnaire de données — Solution Relationnelle

## PATIENT
- NUM_PATIENT : Numéro patient — Numérique — Identifiant
- NOM_PERS : Nom du patient — Texte
- PRENOM_PERS : Prénom du patient — Texte
- DATE_NAIS : Date de naissance — Date
- POIDS : Poids — Numérique
- TAILLE : Taille — Numérique
- NTEL : Téléphone — Texte
- ADRESSE : Adresse — Texte

## MEDECIN
- NUM_MEDECIN : Numéro médecin — Numérique — Identifiant
- NOM_MEDECIN : Nom du médecin — Texte
- PRENOM_MEDECIN : Prénom du médecin — Texte
- SPECIALITE : Spécialité — Texte

## VISITE
- NUM_VISITE : Numéro visite — Numérique — Identifiant
- DATE_VISITE : Date de la visite — Date
- MOTIF : Motif de la visite — Texte
- LIEU : Lieu (domicile/cabinet) — Texte

## ORDONNANCE
- NUM_ORDONNANCE : Numéro ordonnance — Numérique — Identifiant
- DATE_ORDONNANCE : Date de l'ordonnance — Date

## DEMANDE_ANALYSE
- NUM_DEMANDE : Numéro demande d'analyse — Numérique — Identifiant
- DATE_DEMANDE : Date de la demande — Date
- RESULTAT_RECU : Résultat reçu (oui/non) — Booléen
## MALADIE
- NUM_MALADIE : Identifiant maladie — Numérique — Identifiant
- NOM_MALADIE : Nom de la maladie — Texte
- DESCRIPTION : Description — Texte

## ALLERGIE
- NUM_ALLERGIE : Identifiant allergie — Numérique — Identifiant
- LIBELLE_ALLERGIE : Médicament ou famille concernée — Texte

## SEJOUR
- NUM_SEJOUR : Identifiant séjour — Numérique — Identifiant
- NOM_CENTRE : Nom du centre de santé — Texte
- DATE_DEBUT : Date de début — Date
- DATE_FIN : Date de fin — Date
- OPERATION : Opération(s) subie(s) — Texte
## MEDICAMENT
- NUM_MEDICAMENT : Numéro médicament — Numérique — Identifiant
- NOM_MEDICAMENT : Nom du médicament — Texte
- CATEGORIE : Catégorie — Texte
- DESCRIPTION : Description — Texte

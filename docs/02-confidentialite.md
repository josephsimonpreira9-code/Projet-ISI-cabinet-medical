# Règles de Confidentialité et Rôles Utilisateurs

Pour garantir la sécurité et le secret médical au sein du cabinet, les accès à la base de données sont segmentés selon trois profils d'utilisateurs.

## 1. Profil : Médecin (Praticien)
* **Dossier de ses patients propres (Médecin Traitant) :** Accès complet en lecture, insertion et modification (SELECT, INSERT, UPDATE) sur toutes les données cliniques, visites, ordonnances, antécédents et séjours.
* **Dossier des patients des confrères :** Accès limité en *Lecture Seule* (SELECT) pour consulter l'historique lors d'un remplacement ou d'une absence. L'écriture est restreinte à l'ajout d'une nouvelle visite en cas d'urgence.
* **Configuration :** Lecture seule sur la liste générale des médicaments et des maladies.

## 2. Profil : Secrétaire Médicale
* **Données Administratives :** Accès complet en lecture et écriture (SELECT, INSERT, UPDATE) sur l'état civil, les coordonnées des patients (NOM_PERS, PRENOM_PERS, NTEL, ADRESSE) et la planification des visites.
* **Données Médicales :** Aucun accès (REVOKE ALL) sur les ordonnances, les prescriptions de médicaments, l'historique des maladies ou des séjours.
* **Analyses :** Droit de lecture et de mise à jour uniquement sur le champ `RESULTAT_RECU` (Booléen) pour indiquer la réception d'un examen.

## 3. Profil : Administrateur IT
* **Droits de structure :** Accès complet pour la maintenance des tables, des types et des sauvegardes (DDL).
* **Données de santé :** Aucun droit de consultation sur les données nominatives médicales des patients (données chiffrées).

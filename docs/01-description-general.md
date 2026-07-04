# Description générale

## Contexte

Le cabinet médical regroupe plusieurs praticiens (médecins) qui gèrent
actuellement le dossier de leurs patients de manière hétérogène et
décentralisée : chaque médecin dispose d'un fichier Excel personnel
(PATIENTS) contenant les informations administratives et les visites
de ses propres patients, complété par un dossier papier pour les
informations complémentaires (historique, ordonnances détaillées,
allergies, maladies, séjours hospitaliers, etc.).

## Fonctionnement actuel et limites

Cette organisation présente plusieurs limites majeures :

1. **Dépendance à la secrétaire** : le dossier papier n'est accessible
   que via la secrétaire. En son absence, le médecin doit rechercher
   lui-même le dossier, ce qui fait perdre du temps et introduit des
   risques d'erreur ou de perte d'information.

2. **Fichiers Excel cloisonnés par médecin** : chaque médecin possède
   son propre fichier Excel, non partagé avec ses collègues. Lorsqu'un
   médecin reçoit en consultation le patient d'un confrère absent
   (congés, remplacement), il ne peut ni consulter ni mettre à jour le
   dossier du patient. Cette mise à jour n'a lieu, dans le meilleur des
   cas, qu'au retour du médecin traitant — avec un risque réel d'oubli.

3. **Flux d'information hétérogène pour les résultats d'analyses** :
   les résultats arrivent soit par courrier électronique (reçus et
   imprimés par la secrétaire), soit directement par papier envoyé par
   le laboratoire. Cette double voie, avec une étape d'impression
   manuelle, ralentit la transmission de l'information au médecin et
   multiplie les risques de perte.

## Solution proposée

Afin de résoudre ces problèmes, il est proposé la mise en place d'un
**dossier médical informatisé unique et partagé**, accessible à
l'ensemble des médecins du cabinet ainsi qu'à la secrétaire, avec une
gestion des droits d'accès adaptée à chaque profil d'utilisateur
(cf. section confidentialité).

Ce dossier centralisé permettra :
- un accès immédiat à l'information sans dépendre de la présence de
  la secrétaire ;
- le partage des dossiers patients entre tous les médecins du cabinet,
  avec une priorité d'accès pour le médecin traitant ;
- l'intégration des résultats d'analyses reçus par voie électronique
  directement dans le dossier du patient, réduisant les étapes
  manuelles ;
- une vision complète et historisée de chaque patient : visites,
  ordonnances, résultats d'analyses, allergies, maladies, séjours
  hospitaliers.

## Lien entre dossier informatisé et dossier manuel

La base de données centralisera l'ensemble des informations
actuellement réparties entre le fichier Excel et le dossier papier
(identité du patient, visites, ordonnances, résultats d'analyses,
allergies, maladies, séjours hospitaliers). Le dossier papier n'aura
donc plus vocation à exister sous sa forme actuelle : les seules
pièces physiques restantes seraient, le cas échéant, des résultats
d'analyses reçus directement sur papier par certains laboratoires,
qui devront être numérisés ou saisis manuellement dans le système pour
garantir l'exhaustivité du dossier informatisé.

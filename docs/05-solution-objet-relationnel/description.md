# Description de la Solution Objet-Relationnelle

## Approche et Avantages
La solution objet-relationnelle transpose notre modèle classique en utilisant la puissance des types de données complexes et des collections (tableaux) sous PostgreSQL. 

### Principaux bénéfices constatés :
1. **Modélisation plus proche du réel** : L'adresse d'un patient n'est plus éclatée en plusieurs colonnes de texte brut, mais encapsulée dans un type structuré `Type_Adresse`.
2. **Élimination des tables de jointure secondaires** : Les caractéristiques changeantes comme les allergies, les maladies chroniques ou l'historique des séjours hospitaliers ne nécessitent plus la création de tables intermédiaires (`PATIENT_MALADIE`, `PATIENT_ALLERGIE`). Elles sont stockées directement sous forme de collections (tableaux d'objets ou de chaînes) au sein de la ligne du patient.
3. **Regroupement Ordonnance/Prescription** : La posologie et les médicaments prescrits sont imbriqués au sein même de la table ordonnance, fluidifiant la lecture de l'historique médical.

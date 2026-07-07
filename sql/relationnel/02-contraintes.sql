
-- Ajout des contraintes de vérification (CHECK Constraints)

-- 1. Cohérence des dates pour les séjours hospitaliers
ALTER TABLE SEJOUR 
ADD CONSTRAINT chk_dates_sejour 
CHECK (DATE_FIN >= DATE_DEBUT);

-- 2. Validation des valeurs anthropométriques des patients
ALTER TABLE PATIENT 
ADD CONSTRAINT chk_poids_positif CHECK (POIDS > 0),
ADD CONSTRAINT chk_taille_positive CHECK (TAILLE > 0);

-- 3. Restriction sur les lieux de visite valides
ALTER TABLE VISITE 
ADD CONSTRAINT chk_lieu_visite 
CHECK (LIEU IN ('Cabinet', 'Domicile'));

-- 4. Valeurs positives pour les posologies
ALTER TABLE PRESCRIT 
ADD CONSTRAINT chk_posologie_valide 
CHECK (NB_PRISES >= 0 AND NB_DOSES_PAR_PRISE >= 0 AND DUREE_TRAITEMENT > 0);

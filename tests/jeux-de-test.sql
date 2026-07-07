-- 1. Insertion des Médecins
INSERT INTO MEDECIN (NOM_MEDECIN, PRENOM_MEDECIN, SPECIALITE) VALUES 
('Gaye', 'Amina', 'Généraliste'),
('Diop', 'Ousmane', 'Cardiologue');

-- 2. Insertion des Patients
INSERT INTO PATIENT (NOM_PERS, PRENOM_PERS, DATE_NAIS, POIDS, TAILLE, NTEL, ADRESSE, NUM_MEDECIN) VALUES 
('Ndiaye', 'Ibrahima', '1995-04-12', 78.5, 1.80, '+221771234567', 'Mermoz, Dakar', 1),
('Sow', 'Fatoumata', '2000-09-23', 62.0, 1.65, '+221789876543', 'Medina, Dakar', 2);

-- 3. Insertion des Médicaments
INSERT INTO MEDICAMENT (NOM_MEDICAMENT, CATEGORIE, DESCRIPTION) VALUES 
('Paracétamol 500mg', 'Analgésique', 'Contre la fièvre et les douleurs légères'),
('Amoxicilline 1g', 'Antibiotique', 'Pénicilline pour infections bactériennes'),
('Aspegic 100mg', 'Anti-inflammatoire', 'Contre les douleurs et la fièvre');

-- 4. Insertion d''une Allergie pour Ibrahima Ndiaye (Patient 1) à l''Amoxicilline
INSERT INTO ALLERGIE (LIBELLE_ALLERGIE) VALUES ('Antibiotique');
INSERT INTO PATIENT_ALLERGIE (NUM_PATIENT, NUM_ALLERGIE, OBSERVATION) VALUES (1, 1, 'Urticaire sévère après prise');

-- 5. Insertion d''une Visite
INSERT INTO VISITE (DATE_VISITE, MOTIF, LIEU, NUM_PATIENT, NUM_MEDECIN) VALUES 
('2026-07-07', 'Fièvre persistante', 'Cabinet', 1, 1);

-- 6. Insertion d''une Ordonnance pour cette visite
INSERT INTO ORDONNANCE (DATE_ORDONNANCE, NUM_VISITE) VALUES 
('2026-07-07', 1);

-- 7. Prescription d''un médicament autorisé (Paracétamol)
INSERT INTO PRESCRIT (NUM_ORDONNANCE, NUM_MEDICAMENT, NB_PRISES, NB_DOSES_PAR_PRISE, FREQUENCE_JOURNALIERE, DUREE_TRAITEMENT) VALUES 
(1, 1, 3, 1, 3, 5);

-- Scripts de Test des Triggers (À tester un par un)

-- TEST 1 : "empecher_ordonnance_vide"
-- Cette commande doit ÉCHOUER car l''ordonnance n''a qu'un seul médicament.
DELETE FROM PRESCRIT WHERE NUM_ORDONNANCE = 1 AND NUM_MEDICAMENT = 1;


-- TEST 2 : Vérification du trigger d'allergie
-- Cette commande doit ÉCHOUER car le Patient 1 est allergique à la catégorie "Antibiotique"
INSERT INTO PRESCRIT (NUM_ORDONNANCE, NUM_MEDICAMENT, NB_PRISES, NB_DOSES_PAR_PRISE, FREQUENCE_JOURNALIERE, DUREE_TRAITEMENT) VALUES 
(1, 2, 2, 1, 2, 7);

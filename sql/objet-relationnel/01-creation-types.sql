-- Solution Objet-Relationnelle — Cabinet Médical
-- Création des types complexes et des tables

-- 1. Définition des types d'objets (Types Composites)
CREATE TYPE Type_Adresse AS (
    rue VARCHAR(150),
    ville VARCHAR(50)
);

CREATE TYPE Type_Posologie AS (
    nb_prises INT,
    nb_doses_par_prise INT,
    frequence_journaliere INT,
    duree_treatment INT
);

CREATE TYPE Type_Sejour AS (
    nom_centre VARCHAR(100),
    date_debut DATE,
    date_fin DATE,
    operation_subie VARCHAR(255)
);

-- 2. Création des tables avec types et collections (Tableaux)
CREATE TABLE MEDECIN_OBJ (
    NUM_MEDECIN     SERIAL PRIMARY KEY,
    NOM_MEDECIN     VARCHAR(50) NOT NULL,
    PRENOM_MEDECIN  VARCHAR(50) NOT NULL,
    SPECIALITE      VARCHAR(50)
);

CREATE TABLE PATIENT_OBJ (
    NUM_PATIENT     SERIAL PRIMARY KEY,
    NOM_PERS        VARCHAR(50) NOT NULL,
    PRENOM_PERS     VARCHAR(50) NOT NULL,
    DATE_NAIS       DATE NOT NULL,
    POIDS           DECIMAL(5,2),
    TAILLE          DECIMAL(5,2),
    NTEL            VARCHAR(20),
    ADRESSE         Type_Adresse,                        -- Utilisation d'un type objet
    NUM_MEDECIN     INT REFERENCES MEDECIN_OBJ(NUM_MEDECIN),
    MALADIES        VARCHAR(100)[],                      -- Collection (Tableau de maladies)
    ALLERGIES       VARCHAR(100)[],                      -- Collection (Tableau d'allergies)
    HISTORIQUE_SEJOURS Type_Sejour[]                     -- Tableau d'objets séjours
);

CREATE TABLE VISITE_OBJ (
    NUM_VISITE      SERIAL PRIMARY KEY,
    DATE_VISITE     DATE NOT NULL,
    MOTIF           VARCHAR(200),
    LIEU            VARCHAR(20) NOT NULL,
    NUM_PATIENT     INT REFERENCES PATIENT_OBJ(NUM_PATIENT),
    NUM_MEDECIN     INT REFERENCES MEDECIN_OBJ(NUM_MEDECIN)
);

CREATE TABLE MEDICAMENT_OBJ (
    NUM_MEDICAMENT  SERIAL PRIMARY KEY,
    NOM_MEDICAMENT  VARCHAR(100) NOT NULL,
    CATEGORIE       VARCHAR(50),
    DESCRIPTION     VARCHAR(255)
);

-- Table Ordonnance simplifiée associant la posologie sous forme d'élément composite
CREATE TABLE ORDONNANCE_OBJ (
    NUM_ORDONNANCE  SERIAL PRIMARY KEY,
    DATE_ORDONNANCE DATE NOT NULL,
    NUM_VISITE      INT REFERENCES VISITE_OBJ(NUM_VISITE) UNIQUE
);

CREATE TABLE PRESCRIT_OBJ (
    NUM_ORDONNANCE  INT REFERENCES ORDONNANCE_OBJ(NUM_ORDONNANCE),
    NUM_MEDICAMENT  INT REFERENCES MEDICAMENT_OBJ(NUM_MEDICAMENT),
    POSOLOGIE       Type_Posologie,                      -- Utilisation du type Posologie
    PRIMARY KEY (NUM_ORDONNANCE, NUM_MEDICAMENT)
);

CREATE TABLE DEMANDE_ANALYSE_OBJ (
    NUM_DEMANDE     SERIAL PRIMARY KEY,
    DATE_DEMANDE    DATE NOT NULL,
    RESULTAT_RECU   BOOLEAN DEFAULT FALSE,
    NUM_VISITE      INT REFERENCES VISITE_OBJ(NUM_VISITE)
);

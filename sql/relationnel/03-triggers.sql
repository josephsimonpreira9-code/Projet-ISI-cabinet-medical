DELIMITER //

CREATE TRIGGER empecher_ordonnance_vide
BEFORE DELETE ON PRESCRIT
FOR EACH ROW
BEGIN
    DECLARE nb_medicaments INT;

    SELECT COUNT(*) INTO nb_medicaments
    FROM PRESCRIT
    WHERE NUM_ORDONNANCE = OLD.NUM_ORDONNANCE;

    IF nb_medicaments <= 1 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Impossible de supprimer : une ordonnance doit contenir au moins un médicament.';
    END IF;
END //

DELIMITER ;

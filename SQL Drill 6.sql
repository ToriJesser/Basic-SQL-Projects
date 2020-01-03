EXEC [dbo].[createZooDB]

SELECT
		a1.specialist_fname, a1.specialist_lname, a1.specialist_contact, a4.species_name
		FROM tbl_specialist a1
		INNER JOIN tbl_care care ON care.care_specialist = a1.specialist_id
		INNER JOIN tbl_species a4 ON a4.species_care = care.care_id
		WHERE species_name = 'penguin'
	;

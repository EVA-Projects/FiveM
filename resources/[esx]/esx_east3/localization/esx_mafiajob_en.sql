INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_east','east',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_east','east',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_east', 'east', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('east', 'east', 1);

--
-- Déchargement des données de la table `jobs_grades`
--

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('east', 0, 'soldato', 'Ptite-Frappe', 1500, '{}', '{}'),
('east', 1, 'capo', 'Capo', 1800, '{}', '{}'),
('east', 2, 'consigliere', 'Consigliere', 2100, '{}', '{}'),
('east', 3, 'boss', 'Don', 2700, '{}', '{}');
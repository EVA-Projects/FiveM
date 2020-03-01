INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_east4','east4',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_east4','east4',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_east4', 'east4', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('east4', 'east4', 1);

--
-- Déchargement des données de la table `jobs_grades`
--

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('east4', 0, 'soldato', 'Ptite-Frappe', 1500, '{}', '{}'),
('east4', 1, 'capo', 'Capo', 1800, '{}', '{}'),
('east4', 2, 'consigliere', 'Consigliere', 2100, '{}', '{}'),
('east4', 3, 'boss', 'Parain', 2700, '{}', '{}');
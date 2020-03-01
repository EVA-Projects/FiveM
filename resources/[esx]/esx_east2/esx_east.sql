INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_yakuza','yakuza',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_yakuza','yakuza',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_yakuza', 'yakuza', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('yakuza', 'yakuza', 1);

--
-- Déchargement des données de la table `jobs_grades`
--

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('yakuza', 0, 'soldato', 'Ptite-Frappe', 1500, '{}', '{}'),
('yakuza', 1, 'capo', 'Capo', 1800, '{}', '{}'),
('yakuza', 2, 'consigliere', 'Consigliere', 2100, '{}', '{}'),
('yakuza', 3, 'boss', 'Parain', 2700, '{}', '{}');
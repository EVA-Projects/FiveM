Para que funcione tienes que poner esta sql (supongo que la tienes pero por si acaso)

```sql
CREATE TABLE `owned_vehicles` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`owner` VARCHAR(30) NULL DEFAULT NULL COLLATE 'utf8mb4_bin',
	`vehicle` LONGTEXT NULL COLLATE 'utf8mb4_bin',
	`plate` VARCHAR(8) NOT NULL COLLATE 'utf8mb4_bin',

	PRIMARY KEY (`id`)
);
```

ahora para pasar tienes que ediitar estas lineas en el esx_vehicleshop:

#### Antes
```lua
function RemoveOwnedVehicle (plate)
	MySQL.Async.fetchAll('SELECT * FROM owned_vehicles', {}, function (result)
		for i=1, #result, 1 do
			local vehicleProps = json.decode(result[i].vehicle)

			if vehicleProps.plate == plate then
				MySQL.Async.execute('DELETE FROM owned_vehicles WHERE id = @id',
				{
					['@id'] = result[i].id
				})
			end
		end
	end)
end
```

#### Despues
```lua
function RemoveOwnedVehicle (plate)
	MySQL.Async.execute('DELETE FROM owned_vehicles WHERE plate = @plate',
	{
		['@plate'] = plate
	})
end
```

Si teneis problemas me contactais :)
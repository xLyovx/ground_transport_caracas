INSERT INTO lines (name) VALUES
('Linea 1'),
('Linea 2');


INSERT INTO stations (line_id, name, type_of_stations) VALUES
('1','Propatria', 'Estación Simple'),
('1','Perez Bonalde', 'Estación Simple'),
('1','Plaza Sucre', 'Transferencia Entre Estaciones'),
('1','Gato Negro', 'Estación IAFE'),
('1','Aeropuerto Internacional Simón Bolívar', 'Estación IAFE'),
('1','Agua Salud', 'Transferencia Entre Líneas'),
('1','Caño Amarillo', 'Estación Simple'),
('1','Capitolio', 'Transferencia Entre Estaciones'),
('1','La Hoyada', 'Transferencia Entre Estaciones'),
('1','Parque Carabobo', 'Estación Simple'),
('1','Bellas Artes', 'Estación Simple'),
('1','Colegio De Ingenieros', 'Estación Simple'),
('1','Plaza Venezuela', 'Transferencia Entre Estaciones'),
('1','Sabana Grande', 'Estación Simple'),
('1','Chacaito', 'Estación Simple'),
('1','Chacao', 'Estación Simple'),
('1','Altamira', 'Estación Simple'),
('1','Parque Del Este', 'Transferencia Entre Líneas'),
('1','Los Dos Caminos', 'Transferencia Entre Estaciones'),
('1','Los Cortijos', 'Estación Simple'),
('1','La California', 'Estación Simple'),
('1','Petare', 'Estación Simple'),
('1','Palo Verde', 'Transferencia Entre Líneas'),
('1','José Félix Ribas', 'Sistema Metro Cable'),
('1','El Carmen', 'Sistema Metro Cable'),
('2','El Silencio', 'Transferencia Entre Estaciones'),
('2','Capuchinos', 'Transferencia Entre Trenes'),
('2','Maternidad', 'Transferencia Entre Trenes'),
('2','Artigas', 'Transferencia Entre Trenes'),
('2','La Paz', 'Transferencia Entre Líneas'),
('2','La Yaguara', 'Transferencia Entre Trenes'),
('2','Carapita', 'Transferencia Entre Líneas'),
('2','Antimano', 'Transferencia Entre Trenes'),
('2','Mamera', 'Transferencia Entre Trenes'),
('2','Zoológico', 'Transferencia Entre Líneas');

INSERT INTO trains (model, capacity) VALUES 
('Express', 150),
('Voyager', 500),
('Thunderbolt', 200),
('Apex', 100);

INSERT INTO passengers (name, address, birthday) VALUES
('Hobey Polye', '9 Valley Edge Pass', '2022/12/16'),
('Wood Shrive', '67 Dayton Terrace', '1985/03/12'),
('Peterus Mewha', '306 Rockefeller Avenue', '1988/10/12'),
('Blondy Borleace', '0 Kinsman Avenue', '2009/07/06'),
('Silas Fish', '5 Cherokee Street', '2006/05/24'),
('Esme Rosellini', '369 Westend Trail', '1989/05/23'),
('Lucias Davidwitz', '22644 Kipling Road', '1980/07/17'),
('Hatty Chinnick', '51 Norway Maple Hill', '2004/05/28'),
('Sena Stackbridge', '35292 Grasskamp Road', '1996/11/22'),
('Gaye Chansonnau', '782 Mayfield Trail', '1986/07/03');


INSERT INTO routes (train_id, line_id) VALUES
(1,1),
(2,1),
(3,2),
(4,2);

INSERT INTO travels (passenger_id, route_id)VALUES
(5, 2),
(3, 2),
(10, 2),
(6, 1),
(1, 3),
(9, 1),
(7, 4),
(4, 3),
(7, 1),
(4, 4),
(10, 1),
(5, 1),
(8, 2),
(1, 2), 
(3, 1),
(7, 1),
(9, 2),
(2, 2),
(1, 4),
(3, 4);
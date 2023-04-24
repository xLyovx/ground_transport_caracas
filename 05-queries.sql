-- Know the lines available, their total number of trains and the number of trips made
SELECT lines.name AS line_name, COUNT(DISTINCT trains.train_id) AS total_trains, COUNT(*) AS trips_count
FROM travels
JOIN routes ON travels.route_id = routes.route_id
JOIN trains ON routes.train_id = trains.train_id
JOIN lines ON routes.line_id = lines.line_id
GROUP BY lines.name
ORDER BY line_name;


-- get the specific routes of a train and also know the 3 customers who have taken those trains most often
SELECT routes.route_id, lines.name AS line_name, trains.model, passengers.name AS passenger_name, COUNT(*) AS trips_count
FROM travels
JOIN routes ON travels.route_id = routes.route_id
JOIN trains ON routes.train_id = trains.train_id
JOIN lines ON routes.line_id = lines.line_id
JOIN passengers ON travels.passenger_id = passengers.passenger_id
WHERE trains.train_id = <train_id>
GROUP BY routes.route_id, lines.name, trains.model, passengers.name
ORDER BY trips_count DESC
LIMIT 3;

-- Know the routes passengers have taken and which train they took and on which line.
SELECT passengers.name AS passenger_name, routes.route_id, trains.model, lines.name AS line_name
FROM travels
JOIN passengers ON travels.passenger_id = passengers.passenger_id
JOIN routes ON travels.route_id = routes.route_id
JOIN trains ON routes.train_id = trains.train_id
JOIN lines ON routes.line_id = lines.line_id
WHERE routes.route_id = <route_id>;


-- Know the trains per line and their passenger capacity
SELECT lines.name AS line_name, trains.model, SUM(trains.capacity) AS total_capacity
FROM lines
JOIN routes ON lines.line_id = routes.line_id
JOIN trains ON routes.train_id = trains.train_id
WHERE lines.name = 'Linea 2'
GROUP BY lines.name, trains.model;



-- Know the line of a station, and which train will cover the route
SELECT lines.name AS line_name, stations.name AS station_name, trains.model AS train_model 
FROM stations 
JOIN lines ON stations.line_id = lines.line_id 
JOIN routes ON lines.line_id = routes.line_id 
JOIN trains ON routes.train_id = trains.train_id 
WHERE stations.name = '<station name>';

--inquiry to see which person took which train, on which line and on which date
SELECT th.travel_history_id, p.name as passenger_name, tr.model as train_model, l.name as line_name, th.travel_date
FROM travel_history th
JOIN passengers p ON p.passenger_id = th.passenger_id
JOIN routes r ON r.route_id = th.route_id
JOIN trains tr ON tr.train_id = r.train_id
JOIN lines l ON l.line_id = r.line_id;

CREATE TABLE lines (
  line_id SERIAL PRIMARY KEY,
  name VARCHAR(100)
);


CREATE TABLE stations (
  station_id SERIAL PRIMARY KEY,
  line_id SERIAL,
  name VARCHAR(100),
  type_of_stations VARCHAR(100),
  FOREIGN KEY (line_id) REFERENCES lines(line_id)
);

CREATE TABLE trains (
  train_id SERIAL PRIMARY KEY,
  model VARCHAR(100),
  capacity INTEGER 
);

CREATE TABLE routes (
  route_id SERIAL PRIMARY KEY,
  train_id SERIAL,
  line_id SERIAL,
  FOREIGN KEY (train_id) REFERENCES trains(train_id),
  FOREIGN KEY (line_id) REFERENCES lines(line_id)
);

CREATE TABLE passengers(
	passenger_id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	address VARCHAR (100),
	birthday DATE
);

CREATE TABLE travels (
    travels_id SERIAL PRIMARY KEY,
    passenger_id SERIAL,
    route_id SERIAL,
      FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id),
      FOREIGN KEY (route_id) REFERENCES routes(route_id)
);

CREATE TABLE travel_history (
  travel_history_id SERIAL PRIMARY KEY, 
  passenger_id INTEGER, 
  train_id INTEGER, 
  route_id INTEGER, 
  travel_date DATE,
      FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id),
      FOREIGN KEY (train_id) REFERENCES trains(train_id),
      FOREIGN KEY (route_id) REFERENCES routes(route_id) 
 
);
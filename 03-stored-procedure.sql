CREATE OR REPLACE FUNCTION log_travel_data() RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO travel_history (passenger_id, train_id, route_id, travel_date)
    VALUES (NEW.passenger_id, (SELECT train_id FROM routes WHERE route_id = NEW.route_id), NEW.route_id, CURRENT_DATE);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_log_travel_data
AFTER INSERT ON travels
FOR EACH ROW
EXECUTE FUNCTION log_travel_data();
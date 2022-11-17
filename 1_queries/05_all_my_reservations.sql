SELECT reservations.id AS id, properties.title, cost_per_night, start_date, avg(property_reviews.rating)
FROM properties
LEFT JOIN property_reviews ON properties.id = property_id
JOIN reservations ON reservations.property_id = properties.id
WHERE reservations.guest_id = 1
GROUP BY reservations.id, properties.title, cost_per_night
ORDER BY reservations.start_date
LIMIT 10;
;
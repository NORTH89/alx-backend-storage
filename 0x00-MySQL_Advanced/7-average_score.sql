--sorted preceure
-- that computes averag...

DELIMITER //

CREATE PROCEDURE ComputeAverageScoreForUser(
  IN user_id INT
)
BEGIN
  -- Update user's average score
  UPDATE users
  SET average_score = (
    SELECT AVG(score)
    FROM corrections
    WHERE user_id = users.id
  )
  WHERE users.id = user_id;
END //

DELIMITER ;

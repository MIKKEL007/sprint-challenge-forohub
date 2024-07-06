INSERT INTO courses (name, category) VALUES ('Course 01', 'Programming'), ('Course 02', 'Database'),
('Course 03', 'Frontend'), ('Course 04', 'Backend'), ('Course 05', 'Others');

INSERT INTO profiles (name) VALUES ('ROLE_USER');
SET @profile_id = LAST_INSERT_ID();

INSERT INTO users (name, email, password, active) VALUES ('First User', 'correo@ejemplo.com', '$2a$12$QEjm4UzZ4AKf4mm28xKF9uaaGMxCRMsQPoxaqHabuP2r/4DKnESam', 1); -- contra123 

SET @user_id = LAST_INSERT_ID();

INSERT INTO user_profile (user_id, profile_id) VALUES (@user_id, @profile_id);
-- Create the database schema
CREATE SCHEMA IF NOT EXISTS `epl`;
USE `epl`;

-- Drop table if it exists (for clean setup)
DROP TABLE IF EXISTS premier_league_standings;

-- Create the main table
CREATE TABLE premier_league_standings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    season VARCHAR(9) NOT NULL,
    position INT NOT NULL,
    team VARCHAR(100) NOT NULL,
    played INT NOT NULL,
    won INT NOT NULL,
    drawn INT NOT NULL,
    lost INT NOT NULL,
    goals_for INT NOT NULL,
    goals_against INT NOT NULL,
    goal_difference INT NOT NULL,
    points INT NOT NULL,
    qualification_or_relegation TEXT,
    
    -- Add indexes for common queries
    INDEX idx_season (season),
    INDEX idx_team (team),
    INDEX idx_position (position),
    INDEX idx_points (points),
    
    -- Add constraints
    CHECK (position >= 1 AND position <= 20),
    CHECK (played = won + drawn + lost),
    CHECK (goal_difference = goals_for - goals_against),
    CHECK (points = (won * 3) + drawn),
    CHECK (played = 38)
);

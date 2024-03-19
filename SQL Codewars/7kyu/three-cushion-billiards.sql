-- Description
-- Three-cushion billiards, also called three-cushion carom, is a form of carom billiards. 
-- The object of the game is to carom the cue ball off both object balls while contacting 
-- the rail cushions at least three times before contacting the second object ball.
-- The table consists of 4 cushions (north, east, south and west)
-- There are 3 balls (white, yellow, red)
-- The cue ball is the ball that the player starts with (white and yellow are allowed to be picked)
-- The object balls are the 2 remaining balls that the player did not pick to start with (red is always one of these balls)
-- The billiards table
--            n
--    +----------------+
--    |                |
--    |                |
--    |        R       |
--    |                |
--  w |                | e
--    |                |
--    |                |
--    |                |
--    |      W Y       |
--    |                |
--    +----------------+
--             s
-- Task
-- Given an encoded string representing the collisions of the cue ball with object balls and cushions, return a boolean 
-- indicating whether a point was scored. You may assert the player hits a valid cue ball (white or yellow).
-- Input
-- The input consists of a combination of zero, one or more occurences of the following chars:
-- 'w', 'e', 'n', 's' - west, east, north and south cushion
-- 'W', 'Y', 'R' - white, yellow and red ball
-- Output
-- return a boolean indicating whether a point is scored
-- Conditions to score a point
-- The cue ball must have made contact with the cushions at least three times before contacting the second object 
-- ball for the first time.
-- Both object balls must be hit at least once.
-- Additional info
-- The cue ball may contact the cushions before or after hitting the first object ball.
-- The cue ball does not have to contact three different cushions as long as it has been in contact with any cushion 
-- at least three times in total.
-- Using a specific technique (a massé shot), it is possible to hit the same cushion multiple times in succession, 
-- curving the cue ball.
-- It is allowed that both object balls collide a number of times, this is not encoded in the input and can be ignored 
-- altogether
-- you are given a table 'score' with column 's' (text)
-- return a query with column 's' and your result in a column named 'res' (boolean)
-- sort results by column 's' ascending
SELECT
    s,
    LENGTH (
        REGEXP_REPLACE (
            COALESCE(
                SUBSTRING(
                    s
                    FROM
                        '(([nesw]*R[Rnesw]*[WY])|([nesw]*[WY][neswWY]*R))'
                ),
                ''
            ),
            '[RWY]',
            '',
            'g'
        )
    ) > 2 AS res
FROM
    score
ORDER BY
    s ASC;
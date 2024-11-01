SELECT
    userId,
    sessionId,
    channel
FROM user_session_db.raw_data.user_session_channel
WHERE sessionId IS NOT NULL
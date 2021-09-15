DELETE FROM job
WHERE job_name = 'Cowboy'
RETURNING job_id, job_name
/* it is returning the rows that were deleted */
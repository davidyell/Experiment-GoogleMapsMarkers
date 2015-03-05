<?php
// Using mysqli (connecting from App Engine)
$db = new mysqli(
  null, // host
  'root', // username
  '',     // password
  '', // database name
  null,
  '/cloudsql/circular-signal-87510:northeastholidaymap'
  );
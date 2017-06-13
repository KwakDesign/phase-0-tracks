# HTTP Requests

1. What are some common HTTP status codes?
  * 404 Not Found - The origin server did not find a current representation for the target resource or is not willing to disclose that one exists.
  * 403 Forbidden - The server understood the request but refuses to authorize it.
  * 500 Internal Server Error - The server encountered an unexpected condition that prevented it from fulfilling the request.
  * 503 Service Unavailable - The server is currently unable to handle the request due to a temporary overload or scheduled maintenance, which will likely be alleviated after some delay.
  * 504 Gateway Timeout - The server, while acting as a gateway or proxy, did not receive a timely response from an upstream server it needed to access in order to complete the request.

2. What is the difference between a GET request and a POST request? When might each be used?
  * GET method requests data from a specified resource. - you would use a GET method when retrieving data.
  * POST method submits data to be processed to a specified resource. - you would use a POST method when submitting data like a form.

3. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
  * A cookie is a small piece of data that the server sends to the user's browser.The browser can store it and send it back to the server with a new request. A purpose that a cookies serves in it's relation to HTTP requests are session management, logins, shopping carts, game scores, or anything that the server should remember.
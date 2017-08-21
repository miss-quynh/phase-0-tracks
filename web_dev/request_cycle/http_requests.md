9.1 How the Web Works

1) What are some common HTTP status codes?
Some common HTTP Status Codes include the following:
    200 OK - The request has succeeded. The information returned with the response is dependent on the method used in the request.
    300 Multiple Choices - The requested resource has different choices and cannot be resolved into one. For example, there may be several index.html pages depending on which language is wanted (such as Dutch).
    301 Moved Permanently - The requested resource has been assigned a new permanent URI and any future references to this resource should use one of the returned URIs.
    302 Found - The requested resource resides temporarily under a different URI. Since the redirection might be altered on occasion, the client SHOULD continue to use the Request-URI for future requests.
    304 Not Modified - If the client has performed a conditional GET request and access is allowed, but the document has not been modified, the server SHOULD respond with this status code. The 304 response MUST NOT contain a message-body, and thus is always terminated by the first empty line after the header fields. If the client has done a conditional GET and access is allowed, but the document has not been modified since the date and time specified in If-Modified-Since field, the server responds with a 304 status code and does not send the document body to the client. Response headers are as if the client had sent a HEAD request, but limited to only those headers which make sense in this context. This means only headers that are relevant to cache managers and which may have changed independently of the document's Last-Modified date. Examples include Date , Server and Expires . The purpose of this feature is to allow efficient updates of local cache information (including relevant meta information) without requiring the overhead of multiple HTTP requests (e.g. a HEAD followed by a GET) and minimizing the transmittal of information already known by the requesting client (usually a caching proxy).
    307 Temporary Redirect - The requested resource resides temporarily under a different URI. Since the redirection MAY be altered on occasion, the client SHOULD continue to use the Request-URI for future requests. This response is only cacheable if indicated by a Cache-Control or Expires header field.
    400 Bad Request - The request could not be understood by the server due to malformed syntax. The client SHOULD NOT repeat the request without modifications.
    401 Unauthorized - The request requires user authentication. The response MUST include a WWW-Authenticate header field containing a challenge applicable to the requested resource.
    403 Forbidden - The server understood the request, but is refusing to fulfill it. Authorization will not help and the request SHOULD NOT be repeated.
    404 Not Found - The server has not found anything matching the Request-URI. No indication is given of whether the condition is temporary or permanent.
    410 Gone - The requested resource is no longer available at the server and no forwarding address is known. This condition is expected to be considered permanent. Clients with link editing capabilities SHOULD delete references to the Request-URI after user approval. If the server does not know, or has no facility to determine, whether or not the condition is permanent, the status code 404 Not Found SHOULD be used instead. This response is cacheable unless indicated otherwise.
    500 Internal Server Error - The server encountered an unexpected condition which prevented it from fulfilling the request.
    501 Not Implemented - The server does not support the functionality required to fulfill the request. This is the appropriate response when the server does not recognize the request method and is not capable of supporting it for any resource.
    503 Service Unavailable - Your web server is unable to handle your HTTP request at the time. There are a myriad of reasons why this can occur but the most common are:
        server crash
        server maintenance
        server overload
        server maliciously being attacked
        a website has used up its allotted bandwidth
        server may be forbidden to return the requested document
    This is usually a temporary condition. Since you are getting a return code, part of the server is working. The web people have made the server return this code until they fix the problem.
    If you do not get service back soon, contact your web host as they would know the best. Some web hosts have server status pages you can check.
    550 Permission Denied - The server is stating the account you have currently logged in as does not have permission to perform the action you are attempting. You may be trying to upload to the wrong directory or trying to delete a file.

Reference: https://www.smartlabsoftware.com/ref/http-status-codes.htm


2) What is the difference between a GET request and a POST request? When might each be used?
    HTTP POST requests supply additional data from the client (browser) to the server in the message body. In contrast, GET requests include all required data in the URL. Forms in HTML can use either method by specifying method="POST" or method="GET" (default) in the <form> element. The method specified determines how form data is submitted to the server. When the method is GET, all form data is encoded into the URL, appended to the action URL as query string parameters. With POST, form data appears within the message body of the HTTP request.

Reference: http://www.diffen.com/difference/GET-vs-POST-HTTP-Requests


Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
    An HTTP cookie (web cookie, browser cookie) is a small piece of data that a server sends to the user's web browser. The browser may store it and send it back with the next request to the same server. Typically, it's used to tell if two requests came from the same browser — keeping a user logged-in, for example. It remembers stateful information for the stateless HTTP protocol. Cookies are mainly used for three purposes: (1) Session management (e.g. Logins, shopping carts, game scores, or anything else the server should remember), (2) Personalization (e.g. User preferences, themes, and other settings), and (3) Tracking (e.g.Recording and analyzing user behavior).
    When receiving an HTTP request, a server can send a Set-Cookie header with the response. The cookie is usually stored by the browser, and then the cookie is sent with requests made to the same server inside a Cookie HTTP header. An expiration date or duration can be specified, after which the cookie is no longer sent. Additionally, restrictions to a specific domain and path can be set, limiting where the cookie is sent.

Reference: https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies
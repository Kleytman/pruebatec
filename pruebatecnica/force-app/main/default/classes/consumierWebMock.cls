global with sharing class consumierWebMock implements HttpCalloutMock {
    
    global HTTPResponse respond(HTTPRequest req) {

        // Create a fake response
        HttpResponse res = new HttpResponse();
        res.setHeader('Content-Type', 'application/json');
        res.setBody('{"sucess"}}');
        res.setStatusCode(200);
        res.setStatus('200');
        
        return res;
    }
}
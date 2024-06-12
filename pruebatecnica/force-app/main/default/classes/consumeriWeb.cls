public with sharing class consumeriWeb {
   
    @InvocableMethod
    public static void llamarServicio(List<String> npns){

        for(String npn : npns) {
            HttpRequest req = new HttpRequest();
            req.setMethod('POST');
            req.setEndpoint('callout:credencial' + '/api/tenant/v1/profile-lead/create-user/'+npn);
            req.setHeader('Content-Type', 'application/json');
            req.setHeader('domain', 'qa1.claro.dev.claroinsurance.com');
            req.setHeader('Accept', 'application/json');
            Http http = new Http();
            HttpResponse res = http.send(req);
            System.debug(res.getBody());
            System.debug(res.getStatusCode());
        }
        
        

    }
}
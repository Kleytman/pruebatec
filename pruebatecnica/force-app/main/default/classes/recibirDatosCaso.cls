@RestResource(urlMapping='/recibircaso/*')
global with sharing class recibirDatosCaso {
    @HttpPost
    global static void guardarCaso() {
        RestRequest r = RestContext.request;

        try{
            System.debug(r.requestbody);
            datosCaso datos = (datosCaso)JSON.deserialize(r.requestbody.toString(), datosCaso.class);
            Account acc = new Account();
            acc.Name = datos.AccountName;
            acc.Phone = datos.AccountPhone;
            insert acc;

            Case caso = new Case();
            caso.AccountId = acc.Id;
            caso.Subject = datos.Asunto;
            insert caso;
        }Catch(Exception ex){
            System.debug('Error: ' + ex.getMessage());
            System.debug('Error Trace: ' + ex.getStackTraceString());
        }
    }
}

@isTest
private class recibirDatosCaso_Test {

    @isTest
    static void myUnitTest() {
        RestRequest request = new RestRequest();
        request.httpMethod = 'POST';
        request.requestBody = Blob.valueOf('{"AccountName":"Cliente","AccountPhone":"1234234","Asunto":"Ayuda Urgente"}');
        RestContext.request = request;
        recibirDatosCaso.guardarCaso();
    }
}


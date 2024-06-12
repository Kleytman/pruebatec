
@isTest
private class consumirWeb_Test {

    @isTest
    static void myUnitTest() {
       Lead candidato = new Lead();
       candidato.LastName = 'test';
       candidato.MobilePhone = '099887878';
       candidato.Company = 'personal';
       insert candidato;
       candidato.npn__c = '100';
       Test.startTest();
       Test.setMock(HttpCalloutMock.class, new consumierWebMock());
       update candidato;
       Test.stopTest();

    }
}
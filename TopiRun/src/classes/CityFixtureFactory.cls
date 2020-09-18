@isTest
//Run All Tests
public class CityFixtureFactory {
    newNomeObjeto --> cria a instancia do mesmo
    createNomeObjet ---> com os parametros do New chama o insere sobrecarrega
    createNomeObjet ---> City insere no banco

    public City__c newCity () {
        return createdCity (newCity(ibge, city));
    }
    
    public City__c newCity (Sring ibge, String city) {
        return new createdCity (newCity(ibge, city));
    }
    
    public City__c creatCity () {
        return createdCity (newCity(ibge, city));
    }
    
    public City__c creatCity (Sring ibge, String city) {
        return new createdCity (newCity(ibge, city));
}
function karateConfig() {
    karate.configure('connectTimeout', 25000);
    karate.configure('readTimeout', 300000);
    karate.configure('retry',{ count:3, interval:12000});

 var env = karate.env;
 var suite = karate.properties['karate.suite'];
 var url = karate.properties['base.url'];
 var testHelper = karate.properties['testHelper'];
  karate.log('Base url system property was:', url);
  karate.log('Test Suite running  was:', suite);
  karate.log('Running TestHelpers: ', testHelper);

  var config = karate.read('classpath:Utility.js');

      config = karate.read('classpath:features/Epam/webElements.yaml')
      config.data = karate.read('classpath:features/Epam/data.yaml')


     config.baseUrl =  url
     // Urls for local testing
        config.baseUrl = 'https://www.google.es/';

      config.RandomUUID = java.util.UUID.randomUUID() + '';
      karate.log('RandomUUID: ',config.RandomUUID)

      config.randomNumber =  Math.floor(Math.random() * 1000)


return config;
}
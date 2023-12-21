public with sharing class RetornaId {

    public static ViaCep consultaCep(String cepDigitado) {

            Http http = new Http();
            HttpRequest request = new HttpRequest();
            request.setEndpoint('https://viacep.com.br/ws/'+cepDigitado+'/json/');
            request.setMethod('GET');
            HttpResponse response = http.send(request);
            // If the request is successful, parse the JSON response.
            if(response.getStatusCode() == 200) {
                // Deserialize the JSON string into collections of primitive data types.
                ViaCep results = (ViaCep) JSON.deserialize(response.getBody(), ViaCep.class);
                System.debug('results');
                System.debug(results);               
}

    return new ViaCep();
    }
}
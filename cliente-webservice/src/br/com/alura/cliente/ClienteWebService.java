package br.com.alura.cliente;

import org.apache.http.client.fluent.Request;

public class ClienteWebService {
    public static void main(String[] args) {

        try {
            String conteudo = Request
                    .Post("http://localhost:8080/web_war_exploded/empresas")
                    .addHeader("Accept","application/json")
                    .execute()
                    .returnContent()
                    .asString();

            System.out.println(conteudo);
        } catch (Exception e) {
            System.out.println("Motivo: " + e.getMessage());
            e.printStackTrace();
        }
    }
}

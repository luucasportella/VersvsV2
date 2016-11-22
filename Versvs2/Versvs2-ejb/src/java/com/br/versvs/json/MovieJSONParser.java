/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.versvs.json;

import com.br.versvs.model.entities.CurrentMovie;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.json.Json;
import javax.json.JsonObject;
import javax.json.JsonReader;

/**
 *
 * @author fabio
 */
public class MovieJSONParser {

    public static String openURL(String uri) {
        String content = "";

        URL url;
        try {
            url = new URL(uri);

            //Proxy proxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress("172.16.0.10",3128) );
            //HttpURLConnection con = (HttpURLConnection)url.openConnection(proxy);
            HttpURLConnection con = (HttpURLConnection) url.openConnection();

            int code = con.getResponseCode();

            if (code == 407) {
                System.out.println("Falha na autenticação do proxy");
            } else if (code == 200) {
                BufferedReader br = new BufferedReader(
                        new InputStreamReader(con.getInputStream()));

                StringBuilder sb = new StringBuilder();
                String line;
                while ((line = br.readLine()) != null) {
                    sb.append(line);
                }
                br.close();
                con.disconnect();

                content = sb.toString();
            }

        } catch (MalformedURLException ex) {
            Logger.getLogger(MovieJSONParser.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(MovieJSONParser.class.getName()).log(Level.SEVERE, null, ex);
        }

        return content;
    }

    public static List<CurrentMovie> parseFeed(String content) {
        List<CurrentMovie> movies = new ArrayList<>();

        JsonReader reader = Json.createReader(new StringReader(content));
        JsonObject root = reader.readObject();
        reader.close();
        
        CurrentMovie cm = new CurrentMovie("Filme Teste", "5", "120", "https://images-na.ssl-images-amazon.com/images/M/MV5BMTM2ODk0NDAwMF5BMl5BanBnXkFtZTcwNTM1MDc2Mw@@._V1_SX300.jpg", 1285016, 95, 7.7);
        movies.add(cm);
        
        return movies;
    }
}

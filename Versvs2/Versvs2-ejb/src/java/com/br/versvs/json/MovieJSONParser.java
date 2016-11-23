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
                return "407";
            } else if (code == 404) {
                System.out.println("Not Found!");
                return "404";
            } else if (code == 200) {
                BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));

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

    public static CurrentMovie parseFeed(String content) {

        JsonReader reader = Json.createReader(new StringReader(content));
        JsonObject root = reader.readObject();
        reader.close();
        
        JsonObject mv = root.getJsonObject(content);
        String movie_name = mv.getString("Title");
        String awards = mv.getString("awards");
        String runtime = mv.getString("runtime");
        String banner_movie = mv.getString("banner_movie");
        int id_movie = mv.getInt("id_movie");
        int meta_score = mv.getInt("meta_score");
        double imdb_rating = mv.getJsonNumber("imdb_rating").doubleValue();
        
        CurrentMovie cm = new CurrentMovie(movie_name, awards, runtime, banner_movie, id_movie, meta_score, imdb_rating);

        return cm;
    }
}

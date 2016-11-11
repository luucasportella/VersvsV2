/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.versvs.controller.command;

import com.br.versvs.json.MovieJSONParser;
import com.br.versvs.model.entities.CurrentMovie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author fabio
 */
public class GameCommand implements Command {

    private HttpServletRequest request;
    private HttpServletResponse response;
    private String responsePage;

    @Override
    public void init(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;
    }

    @Override
    public void execute() {
        String action = request.getParameter("command").split("\\.")[1]; //pega a segunda posicao do input com valor command
        CurrentMovie m1 = new CurrentMovie();
        CurrentMovie m2 = new CurrentMovie();
        
        switch (action) {
            case "pesquisa":
                
                int id_movie = 0;
                //Id com 7 números
                String uri = "http://www.omdbapi.com/?i=tt"+id_movie+"&plot=full&r=json";
                String content = MovieJSONParser.openURL(uri);

                
                
                break;
        }
    }

    @Override
    public String getResponsePage() {
        return this.responsePage;
    }

}

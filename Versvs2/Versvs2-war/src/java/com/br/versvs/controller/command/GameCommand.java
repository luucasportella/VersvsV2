/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.versvs.controller.command;

import com.br.versvs.json.MovieJSONParser;
import com.br.versvs.model.entities.CurrentMovie;
import java.util.List;
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
            case "search":

                int id_movie = 0;
                //Id com 7 números
                String uri = "http://www.omdbapi.com/?i=tt" + id_movie + "&plot=full&r=json";
                String content = MovieJSONParser.openURL(uri);
                List<CurrentMovie> movies = MovieJSONParser.parseFeed(content);

                for(CurrentMovie m : movies){
                    int count = 0;
                    if(count == 0){
                        m1 = m;
                    }else{
                        m2 = m;
                    }
                }
                
                request.getSession().setAttribute("m1", m1);
                request.getSession().setAttribute("m2", m1);
                
                responsePage = "game.jsp";
                
                break;
        }
    }

    @Override
    public String getResponsePage() {
        return this.responsePage;
    }

}

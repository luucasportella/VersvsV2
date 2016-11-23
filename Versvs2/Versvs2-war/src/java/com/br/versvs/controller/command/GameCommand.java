/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.versvs.controller.command;

import com.br.versvs.json.MovieJSONParser;
import com.br.versvs.model.entities.CurrentMovie;
import java.util.List;
import java.util.Random;
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

                //Id com 7 números
                StringBuilder id_movie = new StringBuilder();
                StringBuilder id_movie2 = new StringBuilder();
                int n;

                do {
                    for (int i = 0; i <= 7; i++) {
                        n = new Random().nextInt(100);
                        id_movie.append(n);
                    }
                    System.out.println(id_movie);
                    String uri = "http://www.omdbapi.com/?i=tt" + id_movie + "&plot=full&r=json";
                    String content = MovieJSONParser.openURL(uri);
                    m1 = MovieJSONParser.parseFeed(content);
                } while (m1.getMovie_name() != null);
                
                do {
                    for (int i = 0; i <= 7; i++) {
                        n = new Random().nextInt(100);
                        id_movie2.append(n);
                    }
                    System.out.println(id_movie2);
                    String uri = "http://www.omdbapi.com/?i=tt" + id_movie2 + "&plot=full&r=json";
                    String content = MovieJSONParser.openURL(uri);
                    m2 = MovieJSONParser.parseFeed(content);
                } while (m2.getMovie_name() != null);

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

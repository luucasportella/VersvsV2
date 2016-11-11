package com.br.versvs.model.entities;

import java.io.Serializable;

/**
 *
 * @author fabio
 */
public class CurrentMovie implements Serializable {
    
    private String movie_name, awards, runtime, banner_movie;
    private int id_movie, meta_score;
    private float imdb_rating;

    public CurrentMovie() {
    }

    public CurrentMovie(String movie_name, String awards, String runtime, String banner_movie, int id_movie, int meta_score, float imdb_rating) {
        this.movie_name = movie_name;
        this.awards = awards;
        this.runtime = runtime;
        this.banner_movie = banner_movie;
        this.id_movie = id_movie;
        this.meta_score = meta_score;
        this.imdb_rating = imdb_rating;
    }

    public String getMovie_name() {
        return movie_name;
    }

    public void setMovie_name(String movie_name) {
        this.movie_name = movie_name;
    }

    public String getAwards() {
        return awards;
    }

    public void setAwards(String awards) {
        this.awards = awards;
    }

    public String getRuntime() {
        return runtime;
    }

    public void setRuntime(String runtime) {
        this.runtime = runtime;
    }

    public String getBanner_movie() {
        return banner_movie;
    }

    public void setBanner_movie(String banner_movie) {
        this.banner_movie = banner_movie;
    }

    public int getId_movie() {
        return id_movie;
    }

    public void setId_movie(int id_movie) {
        this.id_movie = id_movie;
    }

    public int getMeta_score() {
        return meta_score;
    }

    public void setMeta_score(int meta_score) {
        this.meta_score = meta_score;
    }

    public float getImdb_rating() {
        return imdb_rating;
    }

    public void setImdb_rating(float imdb_rating) {
        this.imdb_rating = imdb_rating;
    }

    @Override
    public String toString() {
        return "CurrentMovie{" + "movie_name=" + movie_name + ", awards=" + awards + ", runtime=" + runtime + ", banner_movie=" + banner_movie + ", id_movie=" + id_movie + ", meta_score=" + meta_score + ", imdb_rating=" + imdb_rating + '}';
    }
    
    
}

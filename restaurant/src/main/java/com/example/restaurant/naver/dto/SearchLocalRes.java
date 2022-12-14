package com.example.restaurant.naver.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SearchLocalRes {

    private String lastBuildData;
    public int total;
    private int start;
    private int display;
    //private String category;

    private List<SearchLocalItem> items;

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class SearchLocalItem{

        private String title;
        private String link;
        private String description;
        private String telephone;
        private String address;
        private String roadAddress;
        private String category;
        private int mapx;
        private int mapy;
    }
}

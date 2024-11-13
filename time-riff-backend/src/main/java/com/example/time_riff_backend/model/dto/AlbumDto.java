package com.example.time_riff_backend.model.dto;

import java.time.LocalDate;

import lombok.Data;

@Data
public class AlbumDto {
    private Integer id;
    private String title;
    private LocalDate releaseDate;
    private String coverUrl;
    private String bandName;
}

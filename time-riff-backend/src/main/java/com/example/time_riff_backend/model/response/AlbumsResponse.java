package com.example.time_riff_backend.model.response;

import java.util.List;

import com.example.time_riff_backend.model.dto.AlbumDto;

import lombok.Data;

@Data
public class AlbumsResponse {
    private List<AlbumDto> albums;
}

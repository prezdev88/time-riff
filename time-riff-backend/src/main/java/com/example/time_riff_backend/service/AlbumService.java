package com.example.time_riff_backend.service;

import java.util.List;

import com.example.time_riff_backend.model.dto.AlbumDto;

public interface AlbumService {
    List<AlbumDto> getAlbums();

    List<AlbumDto> getAlbumsBy(int releaseYear);
}

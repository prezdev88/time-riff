package com.example.time_riff_backend.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.example.time_riff_backend.mapper.AlbumMapper;
import com.example.time_riff_backend.model.dto.AlbumDto;
import com.example.time_riff_backend.model.entity.Album;
import com.example.time_riff_backend.repository.AlbumRepository;
import com.example.time_riff_backend.service.AlbumService;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class AlbumServiceImpl implements AlbumService {
    
    private final AlbumMapper albumMapper;
    private final AlbumRepository albumRepository;

    @Override
    public List<AlbumDto> getAlbums() {
        List<Album> all = albumRepository.findAllByOrderByReleaseDateAsc();
        return all.stream()
                .map(albumMapper::map)
                .collect(Collectors.toList());
    }

    @Override
    public List<AlbumDto> getAlbumsBy(int releaseYear) {
        List<Album> all = albumRepository.findByReleaseYear(releaseYear);
        return all.stream()
                .map(albumMapper::map)
                .collect(Collectors.toList());
    }

}

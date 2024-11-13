package com.example.time_riff_backend.mapper;

import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import com.example.time_riff_backend.model.dto.AlbumDto;
import com.example.time_riff_backend.model.entity.Album;
import com.example.time_riff_backend.model.entity.Band;

@Service
public class AlbumMapper {

    public AlbumDto map(Album album) {
        AlbumDto albumDto = new AlbumDto();

        BeanUtils.copyProperties(album, albumDto);
        Band band = album.getBand();

        if (band != null) {
            albumDto.setBandName(band.getName());
        }

        return albumDto;
    }
}

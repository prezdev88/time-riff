package com.example.time_riff_backend.mapper;

import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import com.example.time_riff_backend.model.dto.BandDto;
import com.example.time_riff_backend.model.entity.Band;

@Service
public class BandMapper {
    public BandDto map(Band band) {
        BandDto bandDto = new BandDto();
        BeanUtils.copyProperties(band, bandDto);
        return bandDto;
    }
}

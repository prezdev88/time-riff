package com.example.time_riff_backend.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import com.example.time_riff_backend.model.Band;
import com.example.time_riff_backend.model.BandDto;
import com.example.time_riff_backend.repository.BandRepository;
import com.example.time_riff_backend.service.BandService;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@AllArgsConstructor
public class BandServiceImpl implements BandService {
    
    private final BandRepository bandRepository;

    @Override
    public List<BandDto> getAll() {
        List<Band> bands = bandRepository.findAll();
        return bands.stream().map(this::map).collect(Collectors.toList());
    }

    private BandDto map(Band band) {
        BandDto bandDto = new BandDto();
        BeanUtils.copyProperties(band, bandDto);
        return bandDto;
    }

}

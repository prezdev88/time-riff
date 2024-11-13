package com.example.time_riff_backend.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.example.time_riff_backend.mapper.BandMapper;
import com.example.time_riff_backend.model.dto.BandDto;
import com.example.time_riff_backend.model.entity.Band;
import com.example.time_riff_backend.repository.BandRepository;
import com.example.time_riff_backend.service.BandService;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@AllArgsConstructor
public class BandServiceImpl implements BandService {
    
    private final BandMapper bandMapper;
    private final BandRepository bandRepository;

    @Override
    public List<BandDto> getAll() {
        List<Band> bands = bandRepository.findAll();
        return bands.stream().map(bandMapper::map).collect(Collectors.toList());
    }

}

package com.example.time_riff_backend.service;

import java.util.List;

import com.example.time_riff_backend.model.dto.BandDto;

public interface BandService {
    List<BandDto> getAll();
}

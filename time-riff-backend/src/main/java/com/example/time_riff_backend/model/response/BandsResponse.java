package com.example.time_riff_backend.model.response;

import java.util.List;

import com.example.time_riff_backend.model.dto.BandDto;

import lombok.Data;

@Data
public class BandsResponse {
    private List<BandDto> bands;
}

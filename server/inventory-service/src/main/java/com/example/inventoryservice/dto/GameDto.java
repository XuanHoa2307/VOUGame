package com.example.inventoryservice.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.util.UUID;

@Setter
@Getter
@AllArgsConstructor
public class GameDto {

    private UUID gameId;

    private String description;

    private String imageUrl;

    private String name;

    private String type;
}

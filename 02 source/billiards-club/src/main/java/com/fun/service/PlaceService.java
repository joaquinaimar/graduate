package com.fun.service;

import java.util.List;

import com.fun.entity.Place;
import com.fun.entity.PlaceStatus;
import com.fun.entity.PlaceType;

public interface PlaceService {

	public List<Place> findAllPlace();
	
	public List<PlaceType> findPlaceTypeList();
	
	public List<PlaceStatus> findPlaceStatusList();
	
	public void addPlace(Place place);
	
	public void removePlace(Place place);
	
	public void updatePlace(Place place);
}

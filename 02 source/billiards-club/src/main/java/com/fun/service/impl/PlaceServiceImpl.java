package com.fun.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.fun.entity.Place;
import com.fun.entity.PlaceStatus;
import com.fun.entity.PlaceType;
import com.fun.service.PlaceService;
import com.fun.service.dao.PlaceDao;

@Service("placeService")
@Scope("prototype")
public class PlaceServiceImpl implements PlaceService{

	@Resource(name = "placeDao")
	private PlaceDao placeDao;
	
	@Override
	public List<Place> findAllPlace() {
		return placeDao.findAllPlace();
	}
	
	public List<PlaceType> findPlaceTypeList() {
		return placeDao.findPlaceTypeList();
	}

	public List<PlaceStatus> findPlaceStatusList() {
		return placeDao.findPlaceStatusList();
	}
	
	@Override
	public void addPlace(Place place) {
		placeDao.addPlace(place);
	}
	
	@Override
	public void removePlace(Place place) {
		placeDao.removePlace(place);
	}

	@Override
	public void updatePlace(Place place) {
		placeDao.updatePlace(place);
	}
	
	public PlaceDao getPlaceDao() {
		return placeDao;
	}

	public void setPlaceDao(PlaceDao placeDao) {
		this.placeDao = placeDao;
	}

}

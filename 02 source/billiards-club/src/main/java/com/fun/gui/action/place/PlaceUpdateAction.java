package com.fun.gui.action.place;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.fun.entity.Place;
import com.fun.entity.PlaceStatus;
import com.fun.entity.PlaceType;
import com.fun.gui.action.base.BaseAction;
import com.fun.service.PlaceService;

@Controller("placeUpdateAction")
@Scope("prototype")
public class PlaceUpdateAction extends BaseAction {

	private static final long serialVersionUID = 1L;

	private List<Place> places;
	
	private Place place;
	
	private List<PlaceType> placeTypeList;
	
	private List<PlaceStatus> placeStatusList;
	
	@Resource(name = "placeService")
	private PlaceService placeService;
	
	public String view() {
		placeTypeList = placeService.findPlaceTypeList();
		placeStatusList = placeService.findPlaceStatusList();
		places = placeService.findAllPlace();
		return VIEW;
	}
	
	public String update() {
		placeService.updatePlace(place);
		return SUCCESS;
	}
	
	public String remove() {
		placeService.removePlace(place);
		return SUCCESS;
	}

	public List<Place> getPlaces() {
		return places;
	}

	public void setPlaces(List<Place> places) {
		this.places = places;
	}

	public PlaceService getPlaceService() {
		return placeService;
	}

	public void setPlaceService(PlaceService placeService) {
		this.placeService = placeService;
	}

	public List<PlaceType> getPlaceTypeList() {
		return placeTypeList;
	}

	public void setPlaceTypeList(List<PlaceType> placeTypeList) {
		this.placeTypeList = placeTypeList;
	}

	public List<PlaceStatus> getPlaceStatusList() {
		return placeStatusList;
	}

	public void setPlaceStatusList(List<PlaceStatus> placeStatusList) {
		this.placeStatusList = placeStatusList;
	}

	public Place getPlace() {
		return place;
	}

	public void setPlace(Place place) {
		this.place = place;
	}
	
}

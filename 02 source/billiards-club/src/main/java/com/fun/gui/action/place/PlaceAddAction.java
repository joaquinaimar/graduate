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

@Controller("placeAddAction")
@Scope("prototype")
public class PlaceAddAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Place place;
	
	private List<PlaceType> placeTypeList;
	
	private List<PlaceStatus> placeStatusList;
	
	@Resource(name="placeService")
	private PlaceService placeService;
	
	public String view() {
		placeTypeList = placeService.findPlaceTypeList();
		placeStatusList = placeService.findPlaceStatusList();
		return VIEW;
	}
	
	@Override
	public String execute() throws Exception {
		placeService.addPlace(place);
		return SUCCESS;
	}

	public Place getPlace() {
		return place;
	}

	public void setPlace(Place place) {
		this.place = place;
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

	public PlaceService getPlaceService() {
		return placeService;
	}

	public void setPlaceService(PlaceService placeService) {
		this.placeService = placeService;
	}
	
}

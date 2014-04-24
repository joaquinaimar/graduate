package com.fun.gui.action.place;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.fun.entity.Place;
import com.fun.gui.action.base.BaseAction;
import com.fun.service.PlaceService;

@Controller("placeShowAction")
@Scope("prototype")
public class PlaceShowAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private List<Place> places;
	
	@Resource(name = "placeService")
	private PlaceService placeService;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		places = placeService.findAllPlace();
		return SUCCESS;
	}

	public PlaceService getPlaceService() {
		return placeService;
	}

	public void setPlaceService(PlaceService placeService) {
		this.placeService = placeService;
	}

	public List<Place> getPlaces() {
		return places;
	}

	public void setPlaces(List<Place> places) {
		this.places = places;
	}
	
}

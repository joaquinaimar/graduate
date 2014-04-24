package com.fun.service.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.fun.entity.Place;
import com.fun.entity.PlaceStatus;
import com.fun.entity.PlaceType;
import com.fun.service.base.QueryHelper;
import com.fun.service.base.QueryListHelper;
import com.fun.service.base.UpdateHelper;

@Repository("placeDao")
@Scope("prototype")
public class PlaceDao extends BaseDao {
	
	public List<Place> findAllPlace() {
		return daoTemplate.executeQueryForList(new QueryListHelper<Place>() {
			
			@SuppressWarnings("unchecked")
			@Override
			public List<Place> executeQuery(EntityManager em) {
				Query query = em.createQuery("select p from Place p where p.placeStatus.placeStatusId != 6");
				List<Place> list = query.getResultList();
				return list;
			}
		});
	}
	
	public List<PlaceType> findPlaceTypeList() {
		return daoTemplate.executeQueryForList(new QueryListHelper<PlaceType>() {

			@SuppressWarnings("unchecked")
			@Override
			public List<PlaceType> executeQuery(EntityManager em) {
				Query query = em.createQuery("select pt from PlaceType pt");
				List<PlaceType> list = query.getResultList(); 
				return list;
			}
			
		});
	}
	
	public List<PlaceStatus> findPlaceStatusList() {
		return daoTemplate.executeQueryForList(new QueryListHelper<PlaceStatus>() {

			@SuppressWarnings("unchecked")
			@Override
			public List<PlaceStatus> executeQuery(EntityManager em) {
				Query query = em.createQuery("select ps from PlaceStatus ps");
				return query.getResultList();
			}
		});
	}

	public void addPlace(final Place place) {
		daoTemplate.executeUpdate(new UpdateHelper() {
			
			@Override
			public void execute(EntityManager em) {
				em.persist(place);
				
			}
		});
	}
	
	public void removePlace(final Place place) {
		daoTemplate.executeUpdate(new UpdateHelper() {
			
			@Override
			public void execute(EntityManager em) {
				Place oldPlace = em.find(Place.class, place.getPlaceId());
				PlaceStatus status = new PlaceStatus(6);
				oldPlace.setPlaceStatus(status);
				em.merge(oldPlace);
			}
		});
	}
	
	public void updatePlace(final Place place) {
		daoTemplate.executeUpdate(new UpdateHelper() {
			
			@Override
			public void execute(EntityManager em) {
				Place oldPlace = em.find(Place.class, place.getPlaceId());
				place.setPlaceNbr(oldPlace.getPlaceNbr());
				em.merge(place);
			}
		});
	}
	
	public Place findPlaceById(final int placeId) {
		return daoTemplate.executeQuery(new QueryHelper<Place>() {

			@Override
			public Place execute(EntityManager em) {
				return em.find(Place.class, placeId);
			}
		});
	}
	
}

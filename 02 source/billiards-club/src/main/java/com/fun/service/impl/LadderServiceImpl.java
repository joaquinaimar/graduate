package com.fun.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.fun.entity.Ladder;
import com.fun.entity.LadderStatus;
import com.fun.service.LadderService;
import com.fun.service.dao.LadderDao;

@Service("ladderService")
@Scope("prototype")
public class LadderServiceImpl implements LadderService{

	@Resource(name="ladderDao")
	private LadderDao ladderDao;
	
	@Override
	public List<Ladder> findAllLadder() {
		
		return ladderDao.findAllLadder();
	}

	@Override
	public void addLadder(Ladder ladder) {
		ladderDao.addLadder(ladder);
	}

	@Override
	public void updateLadder(Ladder ladder) {
		ladderDao.updateLadder(ladder);
	}

	@Override
	public List<LadderStatus> findAllLadderStatus() {
		return ladderDao.findLadderStatus();
	}

}

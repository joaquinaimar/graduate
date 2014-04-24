package com.fun.service;

import java.util.List;

import com.fun.entity.Ladder;
import com.fun.entity.LadderStatus;

public interface LadderService {
	
	public List<Ladder> findAllLadder();
	
	public void addLadder(Ladder ladder);
	
	public void updateLadder(Ladder ladder);
	
	public List<LadderStatus> findAllLadderStatus();
	
}

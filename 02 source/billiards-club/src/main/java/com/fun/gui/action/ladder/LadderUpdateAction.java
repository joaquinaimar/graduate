package com.fun.gui.action.ladder;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.fun.entity.Ladder;
import com.fun.entity.LadderStatus;
import com.fun.gui.action.base.BaseAction;
import com.fun.service.LadderService;

@Controller("ladderUpdateAction")
@Scope("prototype")
public class LadderUpdateAction extends BaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private List<Ladder> ladders;
	
	private List<LadderStatus> ladderStatusList;
	
	private Ladder ladder;
	
	@Resource(name="ladderService")
	private LadderService ladderService;
	
	public String view() {
		ladderStatusList = ladderService.findAllLadderStatus();
		ladders = ladderService.findAllLadder();
		return VIEW;
	}
	
	public String update() {
		ladderService.updateLadder(ladder);
		return SUCCESS;
	}
	
	public String remove() {
		ladder.getLadderStatus().setLadderStatusId(3);
		ladderService.updateLadder(ladder);
		return SUCCESS;
	}

	public List<Ladder> getLadders() {
		return ladders;
	}

	public void setLadders(List<Ladder> ladders) {
		this.ladders = ladders;
	}

	public List<LadderStatus> getLadderStatusList() {
		return ladderStatusList;
	}

	public void setLadderStatusList(List<LadderStatus> ladderStatusList) {
		this.ladderStatusList = ladderStatusList;
	}

	public LadderService getLadderService() {
		return ladderService;
	}

	public void setLadderService(LadderService ladderService) {
		this.ladderService = ladderService;
	}

	public Ladder getLadder() {
		return ladder;
	}

	public void setLadder(Ladder ladder) {
		this.ladder = ladder;
	}

}

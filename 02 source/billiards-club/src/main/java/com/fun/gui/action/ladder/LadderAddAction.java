package com.fun.gui.action.ladder;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.fun.entity.Ladder;
import com.fun.entity.LadderStatus;
import com.fun.gui.action.base.BaseAction;
import com.fun.service.LadderService;

@Controller("ladderAddAction")
@Scope("prototype")
public class LadderAddAction extends BaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Ladder ladder;

	@Resource(name="ladderService")
	private LadderService ladderService;
	
	private List<LadderStatus> ladderStatusList;
	
	public String view() throws Exception {
		ladderStatusList = ladderService.findAllLadderStatus();
		return VIEW;
	}
	
	@Override
	public String execute() throws Exception {
		ladderService.addLadder(ladder);
		return super.execute();
	}

	public Ladder getLadder() {
		return ladder;
	}

	public void setLadder(Ladder ladder) {
		this.ladder = ladder;
	}

	public LadderService getLadderService() {
		return ladderService;
	}

	public void setLadderService(LadderService ladderService) {
		this.ladderService = ladderService;
	}

	public List<LadderStatus> getLadderStatusList() {
		return ladderStatusList;
	}

	public void setLadderStatusList(List<LadderStatus> ladderStatusList) {
		this.ladderStatusList = ladderStatusList;
	}
	
}

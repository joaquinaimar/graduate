package com.fun.gui.action.ladder;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.fun.entity.Ladder;
import com.fun.gui.action.base.BaseAction;
import com.fun.service.LadderService;

@Controller("ladderShowAction")
@Scope("prototype")
public class LadderShowAction extends BaseAction {

	private static final long serialVersionUID = 1L;

	private List<Ladder> ladderList;
	
	@Resource(name="ladderService")
	private LadderService ladderService;
	
	@Override
	public String execute() throws Exception {
		ladderList = ladderService.findAllLadder();
		return SUCCESS;
	}

	public List<Ladder> getLadderList() {
		return ladderList;
	}

	public void setLadderList(List<Ladder> ladderList) {
		this.ladderList = ladderList;
	}

	public LadderService getLadderService() {
		return ladderService;
	}

	public void setLadderService(LadderService ladderService) {
		this.ladderService = ladderService;
	}
	
}

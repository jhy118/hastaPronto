package service.resSt;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import repository.resSt.ResStRepository;

public class ResStRemoveService {
	@Autowired
	ResStRepository resStRepository;
	public void execute(String[] rtMenuNos) {
		List<String> cs = new ArrayList<String>();
		for(String rtMenuNo : rtMenuNos) {
			cs.add(rtMenuNo);
		}
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("rtMenuNos", cs);
		resStRepository.resStRemove(condition);
	}
}

package com.smit.service;

import java.util.ArrayList;
import java.util.List;

import com.smit.service.webService.XmlWrap;
import com.smit.vo.Part;

public interface ColumnService {
	//Part queryByColumnId(final Integer id) throws Exception;
	public boolean addColumn(Integer topID, Integer parentID, String typeName);
	public boolean deleteColumn(final String id);
	public boolean deleteColumn(final ArrayList<String> idList);
	public boolean updateColumn(final ArrayList<Part> columnList);
	public List<Part> queryAllColumns() throws Exception;
	public List<Part> queryTopColumns() throws Exception;
	public Part queryRootColumn() throws Exception;
	public List<Part> queryAllChildsUnderTop(final String id) throws Exception;
	public Part queryByColumnId(final Integer id) throws Exception;
	
	public Part findByName(String name);
	//public List<Part> queryNextChildren(String name);
	public XmlWrap queryNextChildren(Integer partId);
	public XmlWrap queryRootChildren() throws Exception;
	public void savePart(Part part);

}

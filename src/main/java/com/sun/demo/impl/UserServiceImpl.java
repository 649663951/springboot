package com.sun.demo.impl;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.sun.demo.mapper.UserMapper;
import com.sun.demo.model.User;
import com.sun.demo.service.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService {
	
	private Logger logger = LogManager.getLogger(UserServiceImpl.class.getName());	

	@Autowired
	private UserMapper userMapper;

	@Override
	public List<User> findAll() {
		return userMapper.findAll();
	}

	@Override
	public User getUserByid(String userName) {
		return userMapper.getUserByid(userName);
	}

	public String findAllExcel() {
		List<User> lists = userMapper.findAll();
		// poi的导出到表格
		// 创建文档对象
		HSSFWorkbook wb = new HSSFWorkbook();
		// 获取style对象
		HSSFCellStyle st = wb.createCellStyle();
		// 设置一个时间的格式,时间格式需要特殊处理
		st.setDataFormat(wb.createDataFormat().getFormat("yyyy-MM-dd HH:mm:ss"));
		// 获取表单对象
		HSSFSheet sheet = wb.createSheet();
		// 创建行
		HSSFRow row = sheet.createRow(0);
		// 首先将第一行数据写出来
		// 定义一个数组
		String arr[] = { "编号", "用户名", "密码", "创建人", "创建时间", "修改人", "修改书时间", "是否有效" };
		for (int i = 0; i < arr.length; i++) {
			// 给第一行插入数据
			row.createCell(i).setCellValue(arr[i]);
		}
		// 写list集合中的数据,从第一行开始写数据
		for (int i = 1; i < lists.size() + 1; i++) {
			// 创建行
			HSSFRow row2 = sheet.createRow(i);
			// 在创建行的基础上创建列,并写入数据
			row2.createCell(0).setCellValue(lists.get(i - 1).getId());
			row2.createCell(1).setCellValue(lists.get(i - 1).getUsername());
			row2.createCell(2).setCellValue(lists.get(i - 1).getPassword());
			row2.createCell(3).setCellValue(lists.get(i - 1).getCreatedBy());
			row2.createCell(5).setCellValue(lists.get(i - 1).getUpdateBy());
			row2.createCell(7).setCellValue(lists.get(i - 1).getIsVaild());
			// 设置日期格式
			HSSFCell cell = row2.createCell(4);
			cell.setCellStyle(st);
			cell.setCellValue(lists.get(i - 1).getCreatedDate());
			HSSFCell cell1 = row2.createCell(6);
			cell1.setCellStyle(st);
			cell1.setCellValue(lists.get(i - 1).getUpdateDate());

		}
		// 获取上传路径
		String path = "C:\\Users\\64966\\\\Desktop";
		System.out.println(path);
		// 获取file对象
		File file = new File(path);
		if (!file.exists()) {
			file.mkdirs();
		}
		// 获取输出流对象
		try {
			FileOutputStream out = new FileOutputStream(path + "/用户表.xls");
			wb.write(out);
			logger.info("数据导出成功！");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return path + "/用户表.xls";
	}

}

package com.sun.demo.test;

import java.io.IOException;
import java.util.Set;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import com.sun.demo.util.GetExcelData;

/**
 * 读取Excel
 * 
 * @author andy
 *
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class ExcelTest {
	
	@Test
	public void excelTest() {

		String path = "C:\\Users\\64966\\Desktop\\����.xlsx";
		// 调用封装好的方法获取数据
		Set<Object> set;
		try {
			set = GetExcelData.getExcelDataByColumn(2, path);
			System.out.println(set.toString());// 打印出第三列的所有数据
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

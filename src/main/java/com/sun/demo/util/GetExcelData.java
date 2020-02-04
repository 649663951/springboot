package com.sun.demo.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 * ��ȡ.xlsx��.xls
 * @author andy
 *
 */

public class GetExcelData {
	
	private static final String EXCEL_XLS = "xls";
	private static final String EXCEL_XLSX = "xlsx";

	/**
	 * ��ȡExcel�ļ��е��������� (���ķ���)
	 * @throws IOException
	 */
	private static List<List<Object>> getExcelData(String path) throws IOException {
		File file = new File(path);
		// ʵ����һ��������
		InputStream is = new FileInputStream(file);
		// ��ȡworkbook
		Workbook wb;
		wb = getWorkbok(is, file);
		// ��ȡ�����������
		int numberOfSheets = wb.getNumberOfSheets();
		// ��ȡ��һ��������
		Sheet sheet = wb.getSheetAt(0);
		//ʵ����һ����άlist����,
		List<List<Object>> listData = new ArrayList<List<Object>>();
		Row row = null;// �ж���
		Iterator<Cell> cols = null;// �ж���
		List<Object> list = null;// �����������
		int rows = sheet.getPhysicalNumberOfRows();
		for (int i = 0; i < rows; i++) {// ѭ��ÿһ�е�����
			row = sheet.getRow(i);
			if (row != null) {
				cols = row.cellIterator();
				list = new ArrayList<Object>();
				while (cols.hasNext()) {
					list.add(cols.next());//���ÿһ�е����ݵ�list��
				}
				listData.add(list);//��ÿһ�е�list�ŵ���һ��list��
			}
		}
		return listData;
	}

	/**
	 * @author : lichenfei
	 * @date : 2018��11��23��
	 * @time : ����5:12:09
	 * @param in
	 * @param file
	 * @return
	 * @throws IOException �ж�Excel �ļ��İ汾
	 */
	private static Workbook getWorkbok(InputStream in, File file) throws IOException {
		Workbook wb = null;
		if (file.getName().endsWith(EXCEL_XLS)) { 
			wb = new HSSFWorkbook(in);
		} else if (file.getName().endsWith(EXCEL_XLSX)) { 
			wb = new XSSFWorkbook(in);
		}
		return wb;
	}
	
	/**
	 * 
	 * @param num  ��Ҫ��ȡ��һ�е�����,
	 * @param path �ļ�·��,
	 * @return 
	 * @throws IOException
	 */
	public static Set<Object> getExcelDataByColumn(int num,String path) throws IOException {
		// ʵ����һ������,�����������,Ϊ�˱������ݺʹ����˳��һ��ʹ��LinkedHashSet;
		Set<Object> sets = new LinkedHashSet<Object>();
		// ���÷�װ�û�ȡ���ݵķ���
		List<List<Object>> list = GetExcelData.getExcelData(path);
		// ��취��ȡ����Ҫ����һ�л�����һ������
		for (List<Object> list2 : list) {
			// ��ȡ��ÿһ�е�����
			// Ȼ���ȡÿһ���еĵڼ�������
			Object object = list2.get(num);
			// �����ݴ�ŵ�set��,
			sets.add(object);
		}
		return sets;
	}

}

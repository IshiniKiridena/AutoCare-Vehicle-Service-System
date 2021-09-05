package com.stock;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class StockDBUtil {

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//add new model	
	public static boolean insertCategory(String categoryname) {
		
		boolean isSuccess = false;
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into autocare.category values ('"+categoryname+"')";
			int rs = stmt.executeUpdate(sql); 
			
			if(rs > 0) {
				
				isSuccess = true;
			}else
				isSuccess = false;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	//add new model	
	public static boolean insertModel(String modelname,String brandname) {
			
			boolean isSuccess = false;
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "insert into autocare.model values ('"+modelname+"','"+brandname+"')";
				int rs = stmt.executeUpdate(sql); 
				
				if(rs > 0) {
					
					isSuccess = true;
				}else
					isSuccess = false;
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
			
		}
	
	public static boolean insertBrand(String newbrand) {
		
		boolean isSuccess = false;
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into autocare.brand values ('"+newbrand+"')";
			int rs = stmt.executeUpdate(sql); 
			
			if(rs > 0) {
				
				isSuccess = true;
			}else
				isSuccess = false;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	//add new part	
		public static boolean insertPart(String partno,String brandname,String modelname,String category,String country,float unitprice,int quantity,String warranty,String date) {
				
				boolean isSuccess = false;
				
				try {
					
					con = DBConnect.getConnection();
					stmt = con.createStatement();
					
					String sql = "insert into autocare.stock values ('"+partno+"','"+brandname+"','"+modelname+"','"+category+"','"+country+"','"+unitprice+"','"+warranty+"','"+quantity+"','"+date+"')";
					int rs = stmt.executeUpdate(sql); 
					
					if(rs > 0) {
						
						isSuccess = true;
					}else
						isSuccess = false;
					
				} catch (Exception e) {
					e.printStackTrace();
				}
				
				return isSuccess;
				
			}
		
		public static boolean updateQuantity(String partNo, int newqty, String date, int prevquantity) {
			
			boolean isSuccess = false;
			int uptqty = newqty + prevquantity;
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "update autocare.stock set quantity = '"+uptqty+"', date ='"+date+"' where partNo ='"+partNo+"'";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return isSuccess;
		}
		
		
		public static boolean updateAllDetails(String partNo,String brand,String model,String category,String country,float unitPrice, int quantity,String warranty, String date) {
			
			boolean isSuccess = false;
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "update autocare.stock set partNo = '"+partNo+"', brand_name ='"+brand+"', model_name ='"+model+"', category_name ='"+category+"', country ='"+country+"', unitPrice ='"+unitPrice+"', warrenty ='"+warranty+"', quantity ='"+quantity+"', date ='"+date+"' where partNo ='"+partNo+"'";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return isSuccess;
		}
		
public static List<StockHandler> Monthlyreport(String date) {
				
			ArrayList<StockHandler> stock = new ArrayList<>();
			
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "SELECT * FROM autocare.stockreport WHERE rp_date LIKE '"+date+"%'";
				rs = stmt.executeQuery(sql);
				
				
				while(rs.next()) {
					
					String partNo = rs.getString("partno");
					String brand = rs.getString("brand");
					String category = rs.getString("category");
					String country = rs.getString("category");
					int quantity = rs.getInt("sales");

					
					
					
					
					StockHandler handler = new StockHandler(partNo,brand,category,country, quantity);
					stock.add(handler);
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return stock; 
		}

public static List<ItemMinMax> MonthlyreportMin(String date) {
	
	ArrayList<ItemMinMax> miniItems = new ArrayList<>();
	
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "SELECT * FROM autocare.stockreport WHERE sales=(SELECT MIN(sales) FROM autocare.stockreport WHERE rp_date LIKE '"+date+"%')";
		rs = stmt.executeQuery(sql);

		
		
		while(rs.next()) {
			
			String partNo = rs.getString("partno");
			int min = rs.getInt("sales");

			
			
			
			
			ItemMinMax miItemMin = new ItemMinMax(partNo, min);
			miniItems.add(miItemMin);
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return miniItems; 
}

public static List<ItemMinMax> MonthlyreportMax(String date) {
	
	ArrayList<ItemMinMax> maxItems = new ArrayList<>();
	
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "SELECT * FROM autocare.stockreport WHERE sales=(SELECT MAX(sales) FROM autocare.stockreport WHERE rp_date LIKE '"+date+"%')";
		rs = stmt.executeQuery(sql);
		
		
		while(rs.next()) {
			
			String partNo = rs.getString("partno");
			int max = rs.getInt("sales");

			
			ItemMinMax maxItemMin = new ItemMinMax(partNo, max);
			maxItems.add(maxItemMin);
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return maxItems; 
}

		
	
}


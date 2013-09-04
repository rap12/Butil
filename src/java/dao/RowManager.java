/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import db.DBConnector;
import entities.Entry;
import java.io.FileOutputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
/**
 *
 * @author admin
 */
public class RowManager {
    
    public ArrayList<Entry> GetPlantRow(int row_id)
    {
        ArrayList<Entry> entries = new ArrayList<Entry>();

        try{
            Connection con = new DBConnector().OpenConnection();

            PreparedStatement pstmt = con.prepareStatement("SELECT * FROM entry where row_id=? order by entry_id ");

            pstmt.setInt(1, row_id);

            ResultSet rs= pstmt.executeQuery();

            while(rs.next()){
               Entry p = new Entry();
               p.setRow_id(row_id);
               p.setDate(rs.getString("date"));
               p.setDev_stage(rs.getString("dev_stage"));
               p.setD_greeness(rs.getString("d_greeness"));
               p.setD_height(rs.getString("d_height"));
               p.setD_volume(rs.getString("d_volume"));
               
               entries.add(p);

            }
            con.close();

      }
      catch (SQLException s){
            System.out.println("SQL statement is not executed!");
            s.printStackTrace();
      }

      return entries;
    }    
    
    
    public void CreateRowReportXLS(int row_id){
        try {
                        Connection con = new DBConnector().OpenConnection();
                        PreparedStatement psmnt = null;
                        PreparedStatement pstmt = con.prepareStatement("SELECT * FROM entry where row_id=? order by entry_id ");

                        pstmt.setInt(1, row_id);

                        ResultSet rs= pstmt.executeQuery();

                        HSSFWorkbook wb = new HSSFWorkbook();
                        HSSFSheet sheet = wb.createSheet("Row Data");
                        HSSFRow rowhead = sheet.createRow((short) 0);
                        rowhead.createCell((short) 0).setCellValue("Row Number");
                        rowhead.createCell((short) 1).setCellValue("Date");
                        rowhead.createCell((short) 2).setCellValue("Development Stage");
                        rowhead.createCell((short) 3).setCellValue("Greeness");
                        rowhead.createCell((short) 4).setCellValue("Volume ");
                        rowhead.createCell((short) 5).setCellValue("Height");
                        
                        int index = 1;
                        while (rs.next()) {

                            String dev_stage = "4-5 leaf stage";
                            String dev = rs.getString("dev_stage");
                            if(dev.equals("2"))
                                dev_stage = "Midtillering";
                            else if(dev.equals("3"))
                                dev_stage = "Booting";
                                
                                HSSFRow row = sheet.createRow((short) index);
                                row.createCell((short) 0).setCellValue(rs.getInt("row_id"));
                                row.createCell((short) 1).setCellValue(rs.getString("date"));
                                row.createCell((short) 2).setCellValue(dev_stage);
                                row.createCell((short) 3).setCellValue(rs.getString("d_greeness"));
                                row.createCell((short) 4).setCellValue(rs.getString("d_volume"));
                                row.createCell((short) 5).setCellValue(rs.getString("d_height"));
                               
                                index++;
                        }
                        Date date = new Date();
                        FileOutputStream fileOut = new FileOutputStream("C:/Users/admin/Documents/NetBeansProjects/Butil/web/rowreport.xls");
                        wb.write(fileOut);
                        fileOut.close();
                        System.out.println("Data is saved in excel file.");
                        rs.close();
                        con.close();
                } catch (Exception e) {
                }
    }
    
    
}

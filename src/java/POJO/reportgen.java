/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package POJO;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.sql.ResultSet;
import java.sql.SQLException;

public class reportgen {
    BufferedWriter br=null;
   public int repgen(ResultSet r)
   {
       int stat=0;
       try
       {
           File myfile=new File("C:\\Users\\Jai\\Documents\\NetBeansProjects\\Kaarproj\\Myreport.doc");
           if(!myfile.exists())
               myfile.createNewFile();
           Writer w=new FileWriter(myfile);
           br=new BufferedWriter(w);
           while(r.next())
           {
               for(int i=1;i<=7;i++)
               {
                   br.write(r.getString(i));
               }
            }
           return stat=1;
       }
       catch(SQLException e)
       {
           e.printStackTrace();
       }
       catch(IOException e)
       {
           e.printStackTrace();
       }
       finally
       {
           try{
               if(br != null)
                   br.close();
           }
           catch(Exception e)
           {
               e.printStackTrace();
           }
       }
       return stat;
   }
}

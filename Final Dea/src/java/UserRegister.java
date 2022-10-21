import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;


class UserRegister {
Statement st;
    void URegister(String FirstName,String Lname,String DOB,String gender,String nbr,String E_mail,String Address,String country,String city,String Zip,String pws,String checkPws2) {
       connectToDb();
       String sql="INSERT INTO user(First_Name,Last_Name,Date_Of_Birth,Gender,Mobile_No,E_mail,Address,Country,City,Zip_Code,Password,Confirm_Password) VALUES('"+FirstName+"','"+Lname+"','"+DOB+"','"+gender+"','"+nbr+"', '"+E_mail+"', '"+Address+"', '"+country+"', '"+city+"', '"+Zip+"', '"+pws+"', '"+checkPws2+"')";
       try{
           
           st.executeUpdate(sql);
           
       }catch(SQLException ex){
           
           Logger.getLogger(UserRegister.class.getName()).log(Level.SEVERE,null,ex);
       }
    }

    private void connectToDb(){
         String url="jdbc:mysql://localhost:3306/RegisterDB";
       try{
           
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection(url,"root","");
           st=con.createStatement();
    }catch(ClassNotFoundException|SQLException ex){
       
    }
    
}
}




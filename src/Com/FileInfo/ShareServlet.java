package Com.FileInfo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Blockchain.Block;
import Blockchain.ChainConsensus;
import Blockchain.ptop;
import Com.Connection.ConnectionFactory;
import Com.Connection.Dbconn;

/**
 * Servlet implementation class ShareServlet
 */
@WebServlet("/ShareServlet")
public class ShareServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static long starttime=0,endtime=0,total=0;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShareServlet() {
        super();
        // 
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
		HttpSession session = request.getSession(false);
		String[] username = request.getParameterValues("Checkbox");
		String filename =request.getParameter("filename");
		String O_Name="";
		String name=(String)session.getAttribute("O_Name");
		String Owner_Email=(String)session.getAttribute("O_Email_ID");
//		String email="";
		starttime=System.currentTimeMillis();
		
		try {
			for (String s : username) {
				Connection con =ConnectionFactory.getInstance().getConnection();
				Statement st = con.createStatement();
				try {
				String query1 = "select * from file_info where Filename='"+ filename + "' and emailid='"+Owner_Email+"'";
					ResultSet rs1 = st.executeQuery(query1);

					while (rs1.next()) {
						System.out.println("Selected User Name=>" + s);
						O_Name=rs1.getString("Username");
					}
				
					//System.out.println(" From "+ Owner_Email+" To "+s);

					//SendMail.mailSend(name,filename, email);
					
					System.out.println("");

				} catch (Exception e) {
				}

				String ownername=(Owner_Email);
				String touser=(s);
				String data2=ownername+"#"+filename+"#"+touser;
				//ptop.ptopverify(4,data2);
				     // share file 
					
					String Status="Pending",RequestAuthorName="0";
					 Statement st00=(Statement) con.createStatement();
					 st00.executeUpdate("insert into filerequest (username, Filename, Ownername,U_Status) values('"+s+"','"+filename+"','"+Owner_Email+"','"+Status+"')");	
					
		            
		            
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		endtime=System.currentTimeMillis();
		total=endtime-starttime;
		System.out.println("Current Time=>"+total);
		pw.println("<html><script>alert('File Share Success');</script><body>");
		pw.println("");
		pw.println("</body></html>");
		RequestDispatcher rd = request.getRequestDispatcher("/File_Share.jsp");
		rd.include(request, response);
	}

}

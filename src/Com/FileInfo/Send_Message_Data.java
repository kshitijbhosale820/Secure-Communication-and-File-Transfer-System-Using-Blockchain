package Com.FileInfo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Blockchain.ptop;
import Com.Connection.ConnectionFactory;
import Com.shamirdemo.AESCoder;

/**
 * Servlet implementation class Send_Message_Data
 */
@WebServlet("/Send_Message_Data")
public class Send_Message_Data extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Send_Message_Data() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	public String keyData() {
		StringBuilder ss = new StringBuilder();
		Random r = new Random();
		char ch;

		for (int i = 0; i < 5; i++) {
			ch = (char) (Math.floor(26 * r.nextDouble() + 65));
			ss.append(ch);
		}

		return ss.toString();

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
		HttpSession session = request.getSession(false);
		String username = (String) session.getAttribute("O_Name");
		String emailid = (String) session.getAttribute("O_Email_ID");
		String send_message = request.getParameter("send_message");
		String user_emailid = request.getParameter("emailid");
		try {
			Connection conn= ConnectionFactory.getInstance().getConnection();
			String finalkey = keyData();
			byte[] ar = finalkey.getBytes();
			byte[] key = AESCoder.getRawKey(ar);
			byte[] plain = send_message.getBytes();
			byte[] cip = AESCoder.encrypt(key, plain);
			String sql12 = "insert into tblcommunication_message(from_name,message_data,to_name,p_key) values(?,?,?,?)";
			PreparedStatement pstmt12 = conn.prepareStatement(sql12);
			pstmt12.setString(1, emailid);
			pstmt12.setBytes(2, cip);
			pstmt12.setString(3, user_emailid);
			pstmt12.setBytes(4, key);
			pstmt12.executeUpdate();
			String data=emailid+"#"+send_message+"#"+user_emailid;
			ptop.ptopverify(4,data);
			
		} catch (Exception e) {

		}
		pw.println("<html><script>alert('Send Message Successfully...');</script><body>");
		 pw.println("");
		 pw.println("</body></html>");
		RequestDispatcher rd = request
				.getRequestDispatcher("/Send_Message.jsp");
		rd.include(request, response);
	}

}

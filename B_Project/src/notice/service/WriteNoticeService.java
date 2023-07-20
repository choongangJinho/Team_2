package notice.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.connection.ConnectionProvider;
import notice.dao.NoticeDAO;
import notice.model.Notice;

public class WriteNoticeService {
	public int writeNotice(Notice notice) {
		Connection conn = null;
		int writeCnt = 0;
		try {
			conn = ConnectionProvider.getConnection();
			NoticeDAO noticeDAO = new NoticeDAO();
			System.out.println("service ="+notice.toString());
			return writeCnt = noticeDAO.writeNotice(conn, notice);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0; 
	}
}



package notice.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.connection.ConnectionProvider;
import notice.dao.NoticeDAO;

public class DeleteNoticeService {
	public int deleteNotice(int noticeNo) {
		Connection conn = null;
		int deleteCnt =0;
		try {
			conn = ConnectionProvider.getConnection();
			NoticeDAO noticeDAO = new NoticeDAO();
			deleteCnt = noticeDAO.deleteNotice(conn, noticeNo);
			return deleteCnt;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
		}
	}


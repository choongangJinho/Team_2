//package notice.service;
//
//import java.sql.Connection;
//import java.sql.SQLException;
//import java.util.List;
//
//import jdbc.connection.ConnectionProvider;
//
//import notice.dao.NoticeDao3;
//import notice.model.Notice;
//
//public class ListNoticeService {
//	NoticeDao3 noticeDao = new NoticeDao3();
//	int size =3;
//	
//	public NoticePage getNoticePage(int pageNum) {
//		Connection conn;
//		try {
//			conn = ConnectionProvider.getConnection();
//			
//			int total = noticeDao.selectCount(conn);
//			
//			List<Notice> content = noticeDao.select(conn,(pageNum-1)*size,size);
//			
//			NoticePage np = new NoticePage(total, pageNum, size, content);
//			System.out.println("ListNoticeService- getNoticePage()의 결과 np="+np);
//			return np;
//		} catch (SQLException e) {
//			throw new RuntimeException(e);
//
//		}			
//			
//			
//	}
//}

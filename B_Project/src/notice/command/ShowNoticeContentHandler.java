package notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mvc.command.CommandHandler;
import notice.model.NoticeContent;
import notice.service.ShowNoticeContentService;

public class ShowNoticeContentHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String noticeNumstr = request.getParameter("num");
		int noticeNum = Integer.parseInt(noticeNumstr);
		
		ShowNoticeContentService showNoticeContentService = new ShowNoticeContentService();
		NoticeContent noticeContent = showNoticeContentService.showNoticeContentService(noticeNum);
		System.out.println("Handler호출"+noticeContent.toString());
		HttpSession session = request.getSession();
		session.setAttribute("NoticeContent", noticeContent);
		return request.getContextPath()+"/view/notice/ShowNoticeContent.jsp";
		
	}

}

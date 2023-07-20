package notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import notice.model.Notice;
import notice.service.WriteNoticeService;

public class WriteNoticeHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String title =request.getParameter("title");
		String content =request.getParameter("content");
		Notice notice = new Notice(id, title, content);
		System.out.println("write handler="+notice.toString());
		WriteNoticeService writeNoticeService = new WriteNoticeService();
		int writeCnt = writeNoticeService.writeNotice(notice);
		
		if(writeCnt!=2) {
			return request.getContextPath()+"/view/notice/WriteFail.jsp";
		}else {
			return request.getContextPath()+"/notice/showNotice.do";
		}
		
	}

}

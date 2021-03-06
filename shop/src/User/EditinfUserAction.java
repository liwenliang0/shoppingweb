package User;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Action.Action;
import Factory.DAOFactory;
import pojo.Users;

public class EditinfUserAction implements Action{

	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		//获取用户的id值
		int uid = Integer.parseInt(String.valueOf(
				request.getSession().getAttribute("uid")));
		//获取用户的用户名
		String uname = request.getParameter("uname");
		//获取用户电话
		String phone = request.getParameter("phone");
		try{
			//根据用户名查询用户
			Users user=DAOFactory.getUserDAOInstance().queryByUsername(
					String.valueOf(request.getSession().getAttribute("username")));
			if(user.getUsername().equals(uname)||
					DAOFactory.getUserDAOInstance().
					queryByUsername(uname).getUid()==0){//用户名未注册
				if(user.getPhone().equals(phone)||
						DAOFactory.getUserDAOInstance().
						queryByPhone(phone).getUid()==0){//手机号未被注册
					if(DAOFactory.getUserDAOInstance().
							editInf(uid, uname, phone)==1){//用户信息修改成功
						request.getSession().setAttribute("username", uname);
						request.getSession().setAttribute("phone", phone);
						request.setAttribute("status", "信息修改成功！");
					}else{//用户信息修改失败
						request.setAttribute("status", "修改操作失败，请重试！");
					}
				}else{//电话已经被注册
					request.setAttribute("status", "电话已被注册,请换一个！");
				}
			}else{//判断用户名已经存在
				request.setAttribute("status", "用户名已存在，请换一个！");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return "editinf.jsp";
	}

}

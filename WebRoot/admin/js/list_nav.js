var t;

t=outlookbar.addtitle('修改密码')
outlookbar.additem('修改密码',t,'/yygh/admin/userinfo/userPw.jsp')


t=outlookbar.addtitle('科室管理')
outlookbar.additem('科室添加',t,'/yygh/admin/keshi/keshiAdd.jsp')
outlookbar.additem('科室管理',t,'/yygh/keshiMana.action')

t=outlookbar.addtitle('专家管理')
outlookbar.additem('专家添加',t,'/yygh/admin/yisheng/yishengAdd.jsp')
outlookbar.additem('专家管理',t,'/yygh/yishengMana.action')



t=outlookbar.addtitle('预约信息')
outlookbar.additem('预约信息',t,'/yygh/yuyueMana.action')

t=outlookbar.addtitle('用户管理')
outlookbar.additem('用户管理',t,'/yygh/userMana.action')


t=outlookbar.addtitle('留言管理')
outlookbar.additem('留言管理',t,'/yygh/liuyanMana.action')


t=outlookbar.addtitle('公告管理')
outlookbar.additem('公告管理',t,'/yygh/gonggaoMana.action')


t=outlookbar.addtitle('退出系统') 
outlookbar.additem('安全退出',t,'/yygh/login.jsp')
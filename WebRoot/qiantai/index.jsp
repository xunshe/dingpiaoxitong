<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title>医院挂号预约系统</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link href="css/Common.css" rel="stylesheet" type="text/css" />
    <link href="css/sitegeneric08.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
    <script language="JavaScript" type="text/javascript">
    </script>
  </head>
  
<body>
<div><br /></div><!-- head如果图片高度不合适。请修改Common.ces里面的".Header .HeaderTop"的高度。和".Header"的高度--> 
     
<!-- head-->	
	
	
	<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>    
	
<!--body-->
<div align="center" class="Wrapper">
<div id="MainCenter" align="center" class="MainCenter">
	     <div id="navigation" class="naivgation">
				<!-- 登录-->
				<div class="SquarelyGreenContainer">
					<div class="top">
						<div class="bgbtop-center">
							<span><a href="">用户登陆</a></span>
							<div class="WinRight"></div>
						</div>
					</div>
					<div class="Slot">
					    <jsp:include flush="true" page="/qiantai/userlogin/userlogin.jsp"></jsp:include>
					</div>
				 </div>
				 <div class="SquarelyGreenContainer">
					<div class="top">
						<div class="bgbtop-center">
							<span><a href="">网站公告</a></span>
							<div class="WinRight"></div>
						</div>
					</div>
					<div class="Slot">
					    <s:action name="gonggaoQian5" executeResult="true"></s:action>
					</div>
				 </div>
				 <!-- 公告-->
				 <!-- 登录-->
				
		 </div>
		 <div id="content" class="Sub">
				<div class="NewContainer770">
					<div class="BoxHeader">
						<div class="BoxHeader-center MarginTop10">医院介绍</div>
					</div>
					<div class="Slot">
						<p>首都医科大学附属北京儿童医院是集医疗、科研、教学、保健于一体的三级甲等综合性儿科医院，前身是我国现代儿科医学奠基人诸福棠院士于1942年创办的北平私立儿童医院。医院总占地面积7万平方米，建筑面积12万平方米，编制病床970张，年门诊量337万人次，住院病人7万余人次，手术逾2.2万例。</p><p>北京儿童医院设备先进、设施完善、技术力量雄厚，科室齐全，设有呼吸科、泌尿外科、重症医学科、血液肿瘤中心等35个临床和医技科室。医院拥有国家呼吸系统疾病临床医学研究中心;儿科重症、小儿呼吸、中西医结合儿科、小儿外科和临床护理等5个国家临床重点专科建设项目;儿童白血病分子分型、小儿耳鼻咽喉头颈外科、儿科呼吸感染等3个北京市重点实验室;北京市儿童外科矫形支具工程技术研究中心;小儿先天性心脏病治疗中心、小儿实体瘤治疗中心、儿童睡眠疾病中心等1 
6个市级医疗中心。在小儿复杂先心病的手术治疗、各类脊柱畸形的矫正、小儿泌尿畸形矫正、腹胸腔镜治疗、急腹症及创伤治疗以及神经、呼吸、内分泌、肾病、血液透析、耳鼻喉、纤维支气管镜、影像技术等专业疾病的诊断治疗及诊疗设备居国内领先地位，并率先在国内将儿科就诊年龄扩大到18岁。</p><p>北京儿童医院共有在职职工2142人，其中医生628人，护士923人，医技291人。正高级职称130人，副高级职称163人，中级职称574人。医院拥有中国现代儿科医学奠基人诸福棠、小儿白血病专业学科带头人胡亚美、中国小儿外科创始人之一张金哲等国内儿科界仅有的三位院士，以及突出贡献医生9人，享受国务院政府特殊津贴人员31人，先后有38人次入选“十百千”人才资助。</p><p>医院拥有教育部儿科学国家重点学科和国家级优秀教学团队，是首都医科大学儿科医学院和儿科学系所在地，现有教授、副教授87人，博、硕士研究生导师64人，承担着博士、硕士研究生、七年制儿科专业、护理大中专及继续医学教育等多层次教学任务，并设有博士后流动站，每年为社会输送大量优秀儿科人才。</p><p>北京儿童医院积极发挥学科龙头作用，领航儿科行业发展。2013年牵头组建北京儿童医院集团，创新“病人不动、医生移动”的模式服务全国患儿，目前集团成员已达15家。医院不仅在国内享有很高的声誉，而且在国际儿科界也有广泛影响，与美国、俄罗斯、加拿大、意大利、澳大利亚、瑞典、德国、法国、日本、新加坡和捷克等国家的儿童医疗机构建立了良好的关系和广泛的合作。</p><p>多年来，为方便病人，北京儿童医院始终坚持24小时接诊病人，同时开设晚间门诊。为继续深入推动公立医院医疗改革，医院积极推进预约挂号工作，优化服务流程，有针对性地解决了群众反映突出的“看病难、住院难”问题，受到国家卫计委的肯定和广大群众的认可。在完成日常医疗工作的同时，医院还承担了国家卫计委、北京市卫生局委派的手足口病防治、问题奶粉筛查、H7N9禽流感疫情筛查、抗震救灾支援、突发公共事件救援等医疗救治任务。</p><p>多年来，医院以“以病人为中心，全心全意为儿童服务”为宗旨，大力弘扬“公慈勤和”院训精神，树立医德医风品牌，涌现出全国道德模范、“时代楷模”贾立群同志等杰出代表。北京儿童医院坚持公益，始终“关注儿童、关注健康”，成立“扶助贫困儿童就医健康基金会”，组织职工为贫困患儿捐款;组织医疗骨干参加援疆援藏计划、“人才京郊行”、大型义诊活动，为偏远地区和基层单位的儿童送医、送药、送健康;开展免费救治西藏先心病、唇腭裂患儿活动;举办血友病、糖尿病、白血病儿童夏令营，让患儿感受到社会的关爱。</p><p>北京儿童医院先后获得“首都文明单位标兵”、“首都文明服务示范窗口”、“最受欢迎专科医院”、“双十佳人民满意医院”、“北京最受欢迎三甲医院”荣誉称号及“首都劳动奖状”、“全国五一劳动奖状”。</p><p><br/></p>
                    </div>
				</div>
		 </div>
</div>
</div>
<!--body-->
	
	
	
<!--foot -->	
<div align="center" class="Wrapper">
	<div id="footer" align="center" class="Footer">
		 <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
	</div>
</div>
<!--foot -->	
</body>
</html>

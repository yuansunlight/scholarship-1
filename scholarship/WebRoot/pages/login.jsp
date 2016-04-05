<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/pages/commons/taglibs.jsp"%>
<head>
<%@ include file="/pages/commons/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>奖助学金登记系统-黄冈师范学院</title>
<link rel="shortcut icon" href="${ctx}/images/favicon.ico">
<link rel="Bookmark" href="${ctx}/images/favicon.ico">
<link href="${ctx}/styles/css.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/styles/jquery-ui.custom.css" rel="stylesheet" type="text/css">
<link href="${ctx}/styles/jquery.popuplayer.css" rel="stylesheet" type="text/css">
<link href="${ctx}/styles/login.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/styles/style.css" rel="stylesheet" type="text/css">
<link href="${ctx}/styles/right.css" rel="stylesheet" type="text/css">
<link href="${ctx}/styles/template.css" rel="stylesheet" type="text/css">
<link href="${ctx}/styles/validationEngine.jquery.css" rel="stylesheet" type="text/css">
<script type='text/javascript' src="${ctx}/scripts/jquery-1.7.2.min.js"></script>
<script type='text/javascript' src="${ctx}/scripts/util.js"></script>
<script type='text/javascript' src="${ctx}/scripts/jquery-ui.custom.min.js"></script>
<script type='text/javascript' src="${ctx}/scripts/popuplayer.js"></script>
<script type='text/javascript' src="${ctx}/scripts/date.js"></script>
<script type="text/javascript">
	function submitForm(){
		$("#LoginForm").submit();
	}
	function nameblur(){
		
	}
	/**
	 * 换验证码图片
	 */
	function change(img) {
	  img.src = '${ctx}/pages/commons/image.jsp?seed=' + Math.random();
	}
</script>
</head>
<body bgcolor="#3c7fb4">
	<div class="container2">
		<table width="100%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="80px"></td>
			</tr>
			<tr>
				<td height="187px"><center>
						<%-- <img src="${ctx}/images/login2logo.png" /> --%>
					</center></td>
			</tr>
			<tr>
				<td valign="top">
					<div class="loginbox2">
						<s:form action="check" id="LoginForm" namespace="/login"
							method="post" theme="simple">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td class="lbox2top">
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr id="jlogin">
												<td>
													<div class="lbox2m">
														<table width="100%" border="0" align="center"
															cellpadding="0" cellspacing="0">
															<!-- 空行 -->
															<tr>
																<td class="td_detail_separator">
																</td>
															</tr>
															<!-- 空行 -->
															<tr>
																<td class="td_detail_separator">
																</td>
															</tr>
															<tr>
																<td class="lboxleft">用户名：</td>
																<td class="lboxright"><input type="text"
																	name="loginAccno" id="loginAccno" class="inputtext"
																	onblur="nameblur()" /></td>
															</tr>
															<!-- 空行 -->
															<tr>
																<td class="td_detail_separator">
																</td>
															</tr>
															<tr>
																<td class="lboxleft">密码：</td>
																<td class="lboxright"><input type="password"
																	maxlength="255" name="loginPassword" id="loginPassword"
																	class="inputtext" size="22"></td>
															</tr>
															<!-- 空行 -->
															<tr>
																<td class="td_detail_separator">
																</td>
															</tr>
															<tr>
																<td class="lboxleft">验证码：</td>
																<td class="lboxright"><input name="imgCode"
																	id="imgCode" maxlength="4" size="4" class="inputtext2" />
																	<img src="${ctx}/pages/commons/image.jsp"
																	align="middle" title="点击图片刷新" onclick="change(this)"
																	style="cursor:pointer;" /> <span class="loginSecurity">点击图片刷新</span>
																	<input type="hidden" id="para" value="1" /></td>
															</tr>
															<!-- 空行 -->
															<tr>
																<td class="td_detail_separator">
																</td>
															</tr>
															<tr>
																<td class="lboxleft"></td>
																<td class="lboxright">
																	<table width="100%" border="0" cellspacing="0"
																		cellpadding="0">
																		<tr>
																			<td><input type="button" id="btn_login"
																				value="登录系统" class="inputsubmit"
																				onclick="submitForm()" />
																			</td>
																			<td>
										                              			<span id="codeMessage" class="actmsg"><s:actionmessage/><c:if test="${requestScope.FailNumber != null}">失败<c:out value="${requestScope.FailNumber}"></c:out>次后账户将被锁定</c:if></span>
										                              			<s:if test="@com.fort.module.conf.AppConfig@SETTING_CHECKING_USE eq 1">
										                              				<span id="check_msg"><img src="${ctx}/images/loading.gif" border="0" width="15" height="15" />&nbsp;正在进行安全检查...</span>
										                              			</s:if>
										                              		</td>
																		</tr>
																	</table>
																</td>
															</tr>
														</table>
													</div>
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td class="lbox2mid">&nbsp;</td>
								</tr>
								<tr>
									<td class="lbox2foot"></td>
								</tr>
							</table>
						</s:form>
					</div>
				</td>
			</tr>
			<tr>
				<td class="100px"></td>
			</tr>
		</table>
	</div>
</body>
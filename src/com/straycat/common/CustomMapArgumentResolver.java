/*
 * package com.straycat.common;
 * 
 * import java.util.Enumeration;
 * 
 * import javax.servlet.http.HttpServletRequest;
 * 
 * import org.springframework.core.MethodParameter; import
 * org.springframework.web.bind.support.WebDataBinderFactory; import
 * org.springframework.web.context.request.NativeWebRequest; import
 * org.springframework.web.method.support.HandlerMethodArgumentResolver; import
 * org.springframework.web.method.support.ModelAndViewContainer;
 * 
 * 
 * public class CustomMapArgumentResolver implements
 * HandlerMethodArgumentResolver { // Resolver가 적용 가능한지 검사하는 역할
 * 
 * @Override public boolean supportsParameter(MethodParameter parameter) {
 * return CommandMap.class.isAssignableFrom(parameter.getParameterType()); }
 * 
 * // 파라미터와 기타 정보를 받아서 실제 객체를 반환
 * 
 * @Override public Object resolveArgument(MethodParameter parameter,
 * ModelAndViewContainer mavContainer, NativeWebRequest webRequest,
 * WebDataBinderFactory binderFactory) throws Exception { CommandMap commandMap
 * = new CommandMap();
 * 
 * HttpServletRequest request = (HttpServletRequest)
 * webRequest.getNativeRequest();
 * 
 * Enumeration<?> enumeration = request.getParameterNames();
 * 
 * String key = null;
 * 
 * String[] values = null;
 * 
 * while (enumeration.hasMoreElements()) {
 * 
 * key = (String) enumeration.nextElement();
 * 
 * values = request.getParameterValues(key);
 * 
 * if (values != null) { commandMap.put(key, (values.length > 1) ? values :
 * values[0]); }
 * 
 * } // commandMap 타입 반환 return commandMap; }
 * 
 * }
 */
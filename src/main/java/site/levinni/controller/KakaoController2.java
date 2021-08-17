package site.levinni.controller;
//package site.levinni.controller;
//
//import java.io.IOException;
//import java.io.UnsupportedEncodingException;
//import java.util.ArrayList;
//import java.util.List;
//
//import javax.servlet.http.HttpSession;
//
//import org.aspectj.apache.bcel.classfile.annotation.NameValuePair;
//
//import com.fasterxml.jackson.databind.JsonNode;
//import com.fasterxml.jackson.databind.ObjectMapper;
//
//import sun.net.www.http.HttpClient;
//
//public class KakaoController {
//	private final static String K_CLIENT_ID = "7097eb2e299d693c29ebee8a50df2245";
//	private final static String K_REDIRECT_URI = "http://localhost:8080/user/loginpage_kakao_callback";
//
//	public static String getAuthorizationUrl(HttpSession session) {
//		String kakaoUrl = "https://kauth.kakao.com/oauth/authorize?" + "client_id=" + K_CLIENT_ID + "&redirect_uri="
//				+ K_REDIRECT_URI + "&response_type=code";
//		return kakaoUrl;
//	}
//
//	public static JsonNode getAccessToken(String autorize_code) { 
//		final String RequestUrl = "https://kauth.kakao.com/oauth/token";
//		final List<NameValuePair> postParams = new ArrayList<NameValuePair>();
//		postParams.add(new BasicNameValuePair("grant_type", "authorization_code")); postParams.add(new BasicNameValuePair("client_id", "자기꺼REST API KEY복붙")); postParams.add(new BasicNameValuePair("redirect_uri", "http://localhost:8080/myfinal/kakaologin.do")); // 리다이렉트 URI 
//	postParams.add(new BasicNameValuePair("code", autorize_code)); // 로그인 과정중 얻은 code 값
//	final HttpClient client = HttpClientBuilder.create().build(); final HttpPost post = new HttpPost(RequestUrl); JsonNode returnNode = null; try { post.setEntity(new UrlEncodedFormEntity(postParams)); final HttpResponse response = client.execute(post); // JSON 형태 반환값 처리
//	ObjectMapper mapper = new ObjectMapper(); returnNode = mapper.readTree(response.getEntity().getContent()); } catch (UnsupportedEncodingException e) { e.printStackTrace(); } catch (ClientProtocolException e) { e.printStackTrace(); } catch (IOException e) { e.printStackTrace(); } finally { // clear resources
//		
//	
//	} return returnNode; } public static JsonNode getKakaoUserInfo(JsonNode accessToken) { final String RequestUrl = "https://kapi.kakao.com/v2/user/me"; final HttpClient client = HttpClientBuilder.create().build(); final HttpPost post = new HttpPost(RequestUrl); // add header post.addHeader("Authorization", "Bearer " + accessToken); JsonNode returnNode = null; try { final HttpResponse response = client.execute(post); // JSON 형태 반환값 처리 ObjectMapper mapper = new ObjectMapper(); returnNode = mapper.readTree(response.getEntity().getContent()); } catch (ClientProtocolException e) { e.printStackTrace(); } catch (IOException e) { e.printStackTrace(); } finally { // clear resources } return returnNode; }
//	}
//	}
//
//}

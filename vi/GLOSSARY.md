# Glossary — Spring Security tiếng Việt

Giữ nguyên các thuật ngữ sau; dịch phần giải thích xung quanh bằng tiếng Việt.

## Nguyên tắc English-first theo ngữ cảnh

- Glossary này là **baseline, không phải whitelist**. Term kỹ thuật chưa có trong bảng vẫn có thể và nên giữ English nếu đó là cách viết chuẩn/tự nhiên hơn trong ngữ cảnh.
- Không ép Việt hóa các concept thuộc architecture, runtime, workflow hoặc domain model. Các term thường giữ English khi mang nghĩa kỹ thuật gồm: `system`, `backend`, `frontend`, `service`, `module`, `request`, `response`, `payload`, `message`, `event`, `job`, `task`, `workflow`, `upstream`, `downstream`, `sync`, `async`, `batch`, `retry`, `timeout`, `fallback`, `validation`, `mapping`, `binding`.
- Domain term như `order`, `approval`, `inventory`, `fulfillment`, `procurement`, `finance`, `payment`, `price` giữ English khi chúng là concept của system/model/API/flow; nếu chỉ mang nghĩa đời thường thì dịch theo nghĩa câu.
- Technical verbs như `validate`, `map`, `bind`, `serialize`, `deserialize`, `persist`, `flush`, `commit`, `rollback`, `retry`, `resolve`, `reserve`, `publish`, `consume`, `mock`, `override` có thể giữ English khi tự nhiên hơn.
- Không mặc định viết “bản dịch tiếng Việt (English term)” ở lần xuất hiện đầu. Term phổ biến dùng English trực tiếp; chỉ giải thích thêm khi concept khó và thực sự cần cho người đọc.
- Cùng một technical concept phải dùng nhất quán một term trong cùng file/section.


| Nhóm | Thuật ngữ giữ nguyên |
| --- | --- |
| Core security | Spring Security, authentication, authorization, authenticated, unauthenticated, principal, credential, authority, role, permission |
| Context | SecurityContext, SecurityContextHolder, Authentication, AnonymousAuthenticationToken |
| Servlet | Servlet, Filter, SecurityFilterChain, FilterChainProxy, DelegatingFilterProxy, HttpSecurity, RequestMatcher |
| Reactive | Reactive, WebFlux, WebFilter, SecurityWebFilterChain, ServerHttpSecurity, Reactor Context |
| Authentication | AuthenticationManager, AuthenticationProvider, ProviderManager, UserDetails, UserDetailsService, PasswordEncoder |
| Authorization | AuthorizationManager, AccessDecisionManager, method security, request authorization, ACL |
| Session | session, SessionManagement, remember-me, concurrent session, session fixation |
| Web security | CSRF, CORS, HTTP Security Headers, firewall, redirect, logout |
| OAuth/OIDC | OAuth 2.0, OpenID Connect, OAuth2 Client, Resource Server, Authorization Server, access token, refresh token, ID Token, Bearer Token, JWT, opaque token, DPoP |
| Federation | SAML 2.0, Relying Party, Identity Provider, Service Provider, metadata |
| Authentication methods | Basic Authentication, Form Login, LDAP, JAAS, X.509, passkey, WebAuthn, One-Time Token, MFA |
| Testing | MockMvc, WebTestClient, SecurityMockMvcRequestPostProcessors, WithMockUser |
| Java/Spring | bean, ApplicationContext, dependency injection, annotation, interface, class, method, package, JVM, JDK |
| Build/docs | Gradle, Antora, AsciiDoc, build, deploy, GitHub Pages, upstream |

Tên API, annotation, config key, command, protocol và standard phải giữ nguyên chính tả, kể cả khi không có trong bảng.

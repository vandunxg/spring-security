# Tiến độ dịch Spring Security

- Repository: `vandunxg/spring-security`
- Branch làm việc hiện tại: `main`
- Official upstream: `spring-projects/spring-security`
- Upstream branch: `main`
- Source commit khởi tạo: `26b6b2a84fa8fa26991ca0f57282720b48db9f91`
- English source: `docs/modules/`
- Vietnamese source: `vi/modules/`
- Cập nhật: 2026-09-19
- Đã xác nhận dịch trọn vẹn: **40 trang**

## Quy ước trạng thái

- Chỉ đánh dấu `[x]` khi toàn bộ prose của file đã được dịch và đã kiểm tra cấu trúc.
- File được copy từ English sang `vi/` nhưng chưa dịch vẫn tính là chưa dịch.
- Sau mỗi lần chạy `scripts/sync-spring-security-docs.sh`, cập nhật source commit và danh sách file cần review.
- Navigation chính thức tại `docs/modules/ROOT/nav.adoc` quyết định thứ tự dịch.

## Batch đã hoàn tất

1. [x] `modules/ROOT/pages/index.adoc`
2. [x] `modules/ROOT/pages/prerequisites.adoc`
3. [x] `modules/ROOT/pages/community.adoc`
4. [x] `modules/ROOT/pages/whats-new.adoc`
5. [x] `modules/ROOT/pages/migration-8/index.adoc`
6. [x] `modules/ROOT/pages/migration/index.adoc`
7. [x] `modules/ROOT/pages/migration/servlet/authorization.adoc`
8. [x] `modules/ROOT/pages/migration/servlet/oauth2.adoc`
9. [x] `modules/ROOT/pages/migration/servlet/saml2.adoc`
10. [x] `modules/ROOT/pages/migration/reactive.adoc`
11. [x] `modules/ROOT/pages/getting-spring-security.adoc`
12. [x] `modules/ROOT/pages/features/index.adoc`
13. [x] `modules/ROOT/pages/features/authentication/index.adoc`
14. [x] `modules/ROOT/pages/features/authentication/password-storage.adoc`
15. [x] `modules/ROOT/pages/features/authorization/index.adoc`
16. [x] `modules/ROOT/pages/features/exploits/index.adoc`
17. [x] `modules/ROOT/pages/features/exploits/csrf.adoc`
18. [x] `modules/ROOT/pages/features/exploits/headers.adoc`
19. [x] `modules/ROOT/pages/features/exploits/http.adoc`
20. [x] `modules/ROOT/pages/features/integrations/index.adoc`
21. [x] `modules/ROOT/pages/features/integrations/rest/http-service-client.adoc`
22. [x] `modules/ROOT/pages/features/integrations/cryptography.adoc`
23. [x] `modules/ROOT/pages/features/integrations/data.adoc`
24. [x] `modules/ROOT/pages/features/integrations/concurrency.adoc`
25. [x] `modules/ROOT/pages/features/integrations/jackson.adoc`
26. [x] `modules/ROOT/pages/features/integrations/localization.adoc`
27. [x] `modules/ROOT/pages/servlet/index.adoc`
28. [x] `modules/ROOT/pages/servlet/getting-started.adoc`
29. [x] `modules/ROOT/pages/servlet/architecture.adoc`
30. [x] `modules/ROOT/pages/servlet/authentication/index.adoc`
31. [x] `modules/ROOT/pages/servlet/authentication/architecture.adoc`
32. [x] `modules/ROOT/pages/servlet/authentication/passwords/index.adoc`
33. [x] `modules/ROOT/pages/servlet/authentication/passwords/input.adoc`
34. [x] `modules/ROOT/pages/servlet/authentication/passwords/form.adoc`
35. [x] `modules/ROOT/pages/servlet/authentication/passwords/basic.adoc`
36. [x] `modules/ROOT/pages/servlet/authentication/passwords/digest.adoc`
37. [x] `modules/ROOT/pages/servlet/authentication/passwords/storage.adoc`
38. [x] `modules/ROOT/pages/servlet/authentication/passwords/in-memory.adoc`
39. [x] `modules/ROOT/pages/servlet/authentication/passwords/jdbc.adoc`
40. [x] `modules/ROOT/pages/servlet/authentication/passwords/user-details.adoc`
41. [x] `modules/ROOT/pages/servlet/authentication/passwords/credentials-container.adoc`
42. [x] `modules/ROOT/pages/servlet/authentication/passwords/erasure.adoc`
43. [x] `modules/ROOT/pages/servlet/authentication/passwords/user-details-service.adoc`
44. [x] `modules/ROOT/pages/servlet/authentication/passwords/password-encoder.adoc`
45. [x] `modules/ROOT/pages/servlet/authentication/passwords/dao-authentication-provider.adoc`
46. [x] `modules/ROOT/pages/servlet/authentication/passwords/ldap.adoc`
47. [x] `modules/ROOT/pages/servlet/authentication/mfa.adoc`
48. [x] `modules/ROOT/pages/servlet/authentication/persistence.adoc`
49. [x] `modules/ROOT/pages/servlet/authentication/passkeys.adoc`
50. [x] `modules/ROOT/pages/servlet/authentication/onetimetoken.adoc`
51. [x] `modules/ROOT/pages/servlet/authentication/session-management.adoc`
52. [x] `modules/ROOT/pages/servlet/authentication/rememberme.adoc`
53. [x] `modules/ROOT/pages/servlet/authentication/anonymous.adoc`
54. [x] `modules/ROOT/pages/servlet/authentication/preauth.adoc`
55. [x] `modules/ROOT/pages/servlet/authentication/jaas.adoc`
56. [x] `modules/ROOT/pages/servlet/authentication/cas.adoc`
57. [x] `modules/ROOT/pages/servlet/authentication/x509.adoc`
58. [x] `modules/ROOT/pages/servlet/authentication/runas.adoc`
59. [x] `modules/ROOT/pages/servlet/authentication/logout.adoc`
60. [x] `modules/ROOT/pages/servlet/authentication/events.adoc`
61. [x] `modules/ROOT/pages/servlet/authentication/kerberos/index.adoc`
62. [x] `modules/ROOT/pages/servlet/authentication/kerberos/introduction.adoc`
63. [x] `modules/ROOT/pages/servlet/authentication/kerberos/ssk.adoc`
64. [x] `modules/ROOT/pages/servlet/authentication/kerberos/samples.adoc`
65. [x] `modules/ROOT/pages/servlet/authentication/kerberos/appendix.adoc`
66. [x] `modules/ROOT/pages/servlet/authorization/index.adoc`
67. [x] `modules/ROOT/pages/servlet/authorization/architecture.adoc`
68. [x] `modules/ROOT/pages/servlet/authorization/authorize-http-requests.adoc`
69. [x] `modules/ROOT/pages/servlet/authorization/method-security.adoc`
70. [x] `modules/ROOT/pages/servlet/authorization/acls.adoc`

## Trang tiếp theo

1. [ ] `modules/ROOT/pages/servlet/authorization/events.adoc`

## Kiểm tra chất lượng

Mỗi batch phải kiểm tra tối thiểu:

- anchor/ID không bị thay đổi;
- xref/include target không bị thay đổi;
- code block và command không bị dịch;
- macro `javadoc:`, `include-code::` và resource family giữ nguyên;
- không lược bỏ câu, bảng, list, note/warning hoặc conditional;
- website build riêng được kiểm tra độc lập với trạng thái dịch.

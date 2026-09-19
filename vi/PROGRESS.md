# Tiến độ dịch Spring Security

- Repository: `vandunxg/spring-security`
- Branch làm việc hiện tại: `main`
- Official upstream: `spring-projects/spring-security`
- Upstream branch: `main`
- Source commit khởi tạo: `26b6b2a84fa8fa26991ca0f57282720b48db9f91`
- English source: `docs/modules/`
- Vietnamese source: `vi/modules/`
- Cập nhật: 2026-09-19
- Đã xác nhận dịch trọn vẹn: **20 trang**

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

## Trang tiếp theo

1. [ ] `modules/ROOT/pages/features/integrations/rest/http-service-client.adoc`

## Kiểm tra chất lượng

Mỗi batch phải kiểm tra tối thiểu:

- anchor/ID không bị thay đổi;
- xref/include target không bị thay đổi;
- code block và command không bị dịch;
- macro `javadoc:`, `include-code::` và resource family giữ nguyên;
- không lược bỏ câu, bảng, list, note/warning hoặc conditional;
- website build riêng được kiểm tra độc lập với trạng thái dịch.

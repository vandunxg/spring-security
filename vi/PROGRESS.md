# Tiến độ dịch Spring Security

- Repository: `vandunxg/spring-security`
- Branch làm việc hiện tại: `main`
- Official upstream: `spring-projects/spring-security`
- Upstream branch: `main`
- Source commit khởi tạo: `26b6b2a84fa8fa26991ca0f57282720b48db9f91`
- English source: `docs/modules/`
- Vietnamese source: `vi/modules/`
- Cập nhật: 2026-09-19
- Đã xác nhận dịch trọn vẹn: **0 trang**

## Quy ước trạng thái

- Chỉ đánh dấu `[x]` khi toàn bộ prose của file đã được dịch và đã kiểm tra cấu trúc.
- File được copy từ English sang `vi/` nhưng chưa dịch vẫn tính là chưa dịch.
- Sau mỗi lần chạy `scripts/sync-spring-security-docs.sh`, cập nhật source commit và danh sách file cần review.
- Navigation chính thức tại `docs/modules/ROOT/nav.adoc` quyết định thứ tự dịch.

## Thứ tự bắt đầu

1. [ ] `modules/ROOT/pages/index.adoc`
2. [ ] `modules/ROOT/pages/prerequisites.adoc`
3. [ ] `modules/ROOT/pages/community.adoc`
4. [ ] `modules/ROOT/pages/whats-new.adoc`
5. [ ] Tiếp tục theo `modules/ROOT/nav.adoc`

## Kiểm tra chất lượng

Mỗi batch phải kiểm tra tối thiểu:

- anchor/ID không bị thay đổi;
- xref/include target không bị thay đổi;
- code block và command không bị dịch;
- macro `javadoc:`, `include-code::` và resource family giữ nguyên;
- không lược bỏ câu, bảng, list, note/warning hoặc conditional;
- website build riêng được kiểm tra độc lập với trạng thái dịch.

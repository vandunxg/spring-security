# Quy tắc dịch Spring Security sang tiếng Việt

Kế thừa quy tắc dịch của `vandunxg/spring-boot/vi/CLAUDE.md`, điều chỉnh cho cấu trúc và thuật ngữ Spring Security.

## Phạm vi và nguồn

- Chỉ làm việc trên `vandunxg/spring-security`.
- English source nằm dưới `docs/`; bản dịch chỉ ghi dưới `vi/`.
- Source upstream chính thức: `spring-projects/spring-security`, nhánh `main`.
- Mapping: `docs/modules/<module>/<family>/<path>` thành `vi/modules/<module>/<family>/<path>`.
- Dịch theo `docs/modules/ROOT/nav.adoc` từ đầu đến cuối.
- Một trang là một file trong family `pages/`. Không tính navigation, redirect, glossary, progress hoặc code sample thành trang dịch.
- File trong `vi/` chỉ được đánh dấu đã dịch khi toàn bộ prose của trang đã được dịch; file copy nguyên English không được tính.

## Nội dung

1. Đọc toàn bộ file gốc trước khi dịch. Không dịch từ tiêu đề, snippet rời rạc hoặc kiến thức nhớ lại.
2. Dịch đầy đủ, không tóm tắt, không thêm ý, không bỏ ví dụ, cảnh báo, điều kiện, bảng hoặc danh sách.
3. Văn phong kỹ thuật, trực tiếp, tự nhiên; không kéo dài câu không cần thiết.
4. Giữ thuật ngữ chuyên ngành bằng tiếng Anh theo `GLOSSARY.md`; dịch phần diễn giải xung quanh.
5. Giữ nguyên tên API, class, interface, method, package, annotation, property, identifier, command, URL, số liệu và version.
6. Dịch heading, prose, nhãn link, caption, alt text, text trong bảng và comment giải thích.
7. Không dịch executable code, output log, configuration key hoặc sample value có ý nghĩa kỹ thuật.
8. Không thêm tutorial, bài tập, lời bình hoặc nội dung do AI tự suy diễn vào bản dịch.

## Spring Security

Giữ nguyên các thuật ngữ và tên chuẩn như `SecurityFilterChain`, `Authentication`, `AuthorizationManager`, `SecurityContext`, `HttpSecurity`, `ServerHttpSecurity`, OAuth 2.0, OpenID Connect, SAML 2.0, CSRF, CORS, JWT và method security.

Phải phân biệt chính xác:
- authentication và authorization;
- Servlet và Reactive/WebFlux;
- OAuth2 Client, Resource Server và Authorization Server;
- filter, filter chain, authentication provider và authorization manager.

Không tự đổi tên API cũ sang API mới nếu source chưa đổi. Nội dung migration/deprecation phải bám sát đúng version upstream.

## AsciiDoc và Antora

Giữ nguyên explicit anchor/ID, xref target, include/include-code target, attribute reference, macro, conditional directive, source language, delimiter, callout, role, config key và file path. Chỉ dịch text hiển thị.

Các macro như `javadoc:`, `kdoc:`, `include-code::`, `xref:` và resource reference `example$`, `partial$`, `attachment$`, `image$` phải được giữ nguyên.

Không đổi slug/path để Việt hóa URL.

## Đồng bộ upstream

- `scripts/sync-spring-security-docs.sh` là entrypoint duy nhất để sync English docs.
- `.upstream-version` lưu commit upstream đã sync.
- Không sửa `.upstream-version` bằng tay.
- `docs/antora.yml` là descriptor local dành cho docs-only build và không bị script sync ghi đè.
- Sau mỗi lần sync, chỉ dịch những file thực sự thay đổi trong `docs/modules/`.

## Tiến độ và kiểm tra

- `PROGRESS.md` ghi trạng thái thực tế, source commit và file tiếp theo.
- Không đánh dấu trang đã dịch chỉ vì file tồn tại.
- Phân biệt rõ: dịch nội dung, kiểm tra cấu trúc, build website và deploy.
- Không ghi build/deploy thành công nếu chưa chạy và xác minh.
- Đối chiếu số section, anchor, xref, include, source block, bảng, danh sách, admonition và conditional với source.
- Nội dung code block phải giữ nguyên trừ khi source upstream thay đổi.

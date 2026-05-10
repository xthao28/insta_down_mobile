## Tổng quan cấu trúc dự án

Dự án `mobile_base_clean` được tổ chức theo mô hình Clean Architecture, với cấu trúc thư mục rõ ràng nhằm tách biệt các thành phần và chức năng khác nhau của ứng dụng. Cấu trúc thư mục chính bao gồm:

- **assets/**: Chứa tài nguyên như icons, fonts, locales,...
- **lib/**: Thư mục chính chứa mã nguồn ứng dụng Flutter:
	- **core/**: Các thành phần cốt lõi (config, data, domain, presentation, widgets, navigation).
	- **features/**: Chứa các module tính năng như home, login, splash,... mỗi module gồm các phần data, domain, presentation.
	- **generated/**: File sinh tự động (ví dụ: locales.g.dart).
	- **routes/**: Định nghĩa router (app_pages.dart, app_routes.dart).
	- **shared/**: Chứa các thành phần dùng chung (constants, entity, exceptions, mappers, model, themes, utils, widgets).

Mỗi module trong `features/` đều tuân thủ mô hình phân lớp rõ ràng: data (dữ liệu), domain (logic nghiệp vụ), presentation (giao diện).

Các thành phần dùng chung được đặt trong `shared/` giúp tái sử dụng và quản lý dễ dàng.

Thư mục `core/` chứa các cấu hình, luồng điều hướng, binding, controller và các widget nền tảng cho toàn bộ ứng dụng.
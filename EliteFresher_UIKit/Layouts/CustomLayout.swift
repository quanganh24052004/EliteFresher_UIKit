//
//  CustomLayout.swift
//  EliteFresher_UIKit
//
//  Created by iKame Elite Fresher 2025 on 6/30/25.
//

import UIKit

// MARK: - SpacingMode (Cấu hình khoảng cách giữa các ô)

public struct SpacingMode {
    public var horizontal: CGFloat
    public var vertical: CGFloat
    
    public init(horizontal: CGFloat = 0.0, vertical: CGFloat = 0.0) {
        self.horizontal = horizontal
        self.vertical = vertical
    }
    
    /// Khoảng cách bằng 0 theo cả chiều ngang và dọc
    public static var zero: SpacingMode {
        return SpacingMode()
    }
}

// MARK: - CustomLayout (Layout tùy chỉnh cho CollectionView)

class CustomLayout: UICollectionViewFlowLayout {
    
    // MARK: - Public Configurations
    
    /// Khoảng cách ngang và dọc giữa các ô
    public var contentMode: SpacingMode = .zero
    
    // MARK: - Properties (Thuộc tính nội bộ)
    
    /// Kích thước tổng thể của CollectionView (dùng cho scroll)
    public var contentSize: CGSize = .zero
    
    /// Bộ nhớ đệm lưu các thuộc tính layout đã tính
    public var cache: [UICollectionViewLayoutAttributes] = []
    
    // MARK: - UICollectionViewLayout Overrides
    
    /// Trả về chiều rộng và chiều cao của toàn bộ nội dung CollectionView
    override var collectionViewContentSize: CGSize {
        return contentSize
    }
    
    /// Chuẩn bị lại bố cục mỗi khi CollectionView reload / invalidate
    override func prepare() {
        super.prepare()
        cache.removeAll()      // Xóa cache cũ
        calculateFrame()       // Tính lại frame mới
    }
    
    /// Truy xuất thông tin bố cục cho tất cả cell nằm trong rect hiển thị
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        return cache.filter { $0.frame.intersects(rect) }
    }
    
    /// Truy xuất thông tin bố cục cho một cell tại IndexPath chỉ định
    override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        return cache[indexPath.item]
    }
    
    // MARK: - Custom Layout Logic
    
    /// Tính toán vị trí (frame) của từng ô (cell) và lưu vào cache
    public func calculateFrame() {
        // TODO: Cài đặt logic layout tùy chỉnh tại đây
    }
}

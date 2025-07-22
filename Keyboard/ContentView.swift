import SwiftUI

enum KeyAlignment {
    case center
    case bottomLeading
    case bottomTrailing
}

struct Key: Identifiable {
    let id = UUID()
    let label: String
    let subLabel: String?
    let width: CGFloat
    var alignment: KeyAlignment = .center
    var heightMultiplier: CGFloat = 1.0 // 新增，高度比例
}

struct KeyboardRow: Identifiable {
    let id = UUID()
    let keys: [Key]
}

struct ContentView: View {
    let keyBaseHeight: CGFloat = 40 // 主要鍵高度

    let rows: [KeyboardRow] = [
        // esc 那一列，高度設 0.5
        KeyboardRow(keys: [
            Key(label: "esc", subLabel: nil, width: 1, heightMultiplier: 0.5),
            Key(label: "🔅", subLabel: nil, width: 1, heightMultiplier: 0.5),
            Key(label: "🔆", subLabel: nil, width: 1, heightMultiplier: 0.5),
            Key(label: "⛶", subLabel: nil, width: 1, heightMultiplier: 0.5),
            Key(label: "⛶", subLabel: nil, width: 1, heightMultiplier: 0.5),
            Key(label: "F5", subLabel: nil, width: 1, heightMultiplier: 0.5),
            Key(label: "F6", subLabel: nil, width: 1, heightMultiplier: 0.5),
            Key(label: "⏮", subLabel: nil, width: 1, heightMultiplier: 0.5),
            Key(label: "⏯", subLabel: nil, width: 1, heightMultiplier: 0.5),
            Key(label: "⏭", subLabel: nil, width: 1, heightMultiplier: 0.5),
            Key(label: "🔇", subLabel: nil, width: 1, heightMultiplier: 0.5),
            Key(label: "🔉", subLabel: nil, width: 1, heightMultiplier: 0.5),
            Key(label: "🔊", subLabel: nil, width: 1, heightMultiplier: 0.5),
            Key(label: "⏏️", subLabel: nil, width: 1, heightMultiplier: 0.5),
        ]),
        KeyboardRow(keys: [
            Key(label: "`", subLabel: "~", width: 1),
            Key(label: "1", subLabel: "！", width: 1, alignment: .bottomLeading),
            Key(label: "2", subLabel: "ㄉ", width: 1),
            Key(label: "3", subLabel: "ˇ", width: 1),
            Key(label: "4", subLabel: "ˋ", width: 1),
            Key(label: "5", subLabel: "ㄓ", width: 1),
            Key(label: "6", subLabel: "ˊ", width: 1),
            Key(label: "7", subLabel: "˙", width: 1),
            Key(label: "8", subLabel: "ㄚ", width: 1),
            Key(label: "9", subLabel: "ㄞ", width: 1),
            Key(label: "0", subLabel: "ㄢ", width: 1),
            Key(label: "-", subLabel: "ㄦ", width: 1),
            Key(label: "=", subLabel: "+", width: 1),
            Key(label: "delete", subLabel: nil, width: 2, alignment: .bottomTrailing),
        ]),
        KeyboardRow(keys: [
            Key(label: "tab", subLabel: nil, width: 1.3, alignment: .bottomLeading),
            Key(label: "Q", subLabel: "ㄆ", width: 1),
            Key(label: "W", subLabel: "ㄊ", width: 1),
            Key(label: "E", subLabel: "ㄍ", width: 1),
            Key(label: "R", subLabel: "ㄐ", width: 1),
            Key(label: "T", subLabel: "ㄔ", width: 1),
            Key(label: "Y", subLabel: "ㄗ", width: 1),
            Key(label: "U", subLabel: "ㄧ", width: 1),
            Key(label: "I", subLabel: "ㄛ", width: 1),
            Key(label: "O", subLabel: "ㄟ", width: 1),
            Key(label: "P", subLabel: "ㄣ", width: 1),
            Key(label: "[", subLabel: "(", width: 1),
            Key(label: "]", subLabel: ")", width: 1),
            Key(label: "\\", subLabel: "|", width: 1.2),
        ]),
        KeyboardRow(keys: [
            Key(label: "中／英", subLabel: nil, width: 1.8, alignment: .bottomLeading),
            Key(label: "A", subLabel: "ㄇ", width: 1),
            Key(label: "S", subLabel: "ㄋ", width: 1),
            Key(label: "D", subLabel: "ㄎ", width: 1),
            Key(label: "F", subLabel: "ㄑ", width: 1),
            Key(label: "G", subLabel: "ㄕ", width: 1),
            Key(label: "H", subLabel: "ㄘ", width: 1),
            Key(label: "J", subLabel: "ㄨ", width: 1),
            Key(label: "K", subLabel: "ㄜ", width: 1),
            Key(label: "L", subLabel: "ㄠ", width: 1),
            Key(label: ";", subLabel: "ㄤ", width: 1),
            Key(label: "'", subLabel: "、", width: 1),
            Key(label: "return", subLabel: nil, width: 2, alignment: .bottomTrailing),
        ]),
        KeyboardRow(keys: [
            Key(label: "shift", subLabel: nil, width: 2.5, alignment: .bottomLeading),
            Key(label: "Z", subLabel: "ㄈ", width: 1),
            Key(label: "X", subLabel: "ㄌ", width: 1),
            Key(label: "C", subLabel: "ㄏ", width: 1),
            Key(label: "V", subLabel: "ㄒ", width: 1),
            Key(label: "B", subLabel: "ㄖ", width: 1),
            Key(label: "N", subLabel: "ㄙ", width: 1),
            Key(label: "M", subLabel: "ㄩ", width: 1),
            Key(label: ",", subLabel: "ㄝ", width: 1),
            Key(label: ".", subLabel: "ㄡ", width: 1),
            Key(label: "/", subLabel: "ㄥ", width: 1),
            Key(label: "shift", subLabel: nil, width: 3, alignment: .bottomTrailing),
        ]),
        KeyboardRow(keys: [
            // 空白鍵左邊（左下對齊）
            Key(label: "control", subLabel: nil, width: 1.5, alignment: .bottomLeading),
            Key(label: "option", subLabel: nil, width: 1, alignment: .bottomLeading),
            Key(label: "command", subLabel: nil, width: 1.5, alignment: .bottomLeading),
            Key(label: "", subLabel: nil, width: 6),
            // 空白鍵右邊（右下對齊）
            Key(label: "command", subLabel: nil, width: 1.5, alignment: .bottomTrailing),
            Key(label: "option", subLabel: nil, width: 1, alignment: .bottomTrailing),
            Key(label: "control", subLabel: nil, width: 1.5, alignment: .bottomTrailing),
            Key(label: "←", subLabel: nil, width: 1),
            Key(label: "↓", subLabel: nil, width: 1),
            Key(label: "→", subLabel: nil, width: 1),
        ])
    ]

    var body: some View {
        VStack(spacing: 9) {
            ForEach(rows) { row in
                HStack(spacing: 9) {
                    ForEach(row.keys) { key in
                        KeyView(key: key, baseHeight: keyBaseHeight)
                    }
                }
            }
        }
        .padding()
        .background(Color.gray.opacity(0.6))
        .cornerRadius(16)
        .padding()
    }
}

struct KeyView: View {
    let key: Key
    let baseHeight: CGFloat

    var body: some View {
        ZStack(alignment: alignment(for: key.alignment)) {
            Color.white
            VStack(alignment: .leading, spacing: 2) {
                if let sub = key.subLabel {
                    Text(sub)
                        .font(.caption2)
                        .foregroundColor(.black)
                }
                Text(key.label)
                    .font(.system(size: 12, weight: .medium, design: .monospaced))
                    .foregroundColor(.secondary)
            }
            .padding(padding(for: key.alignment))
        }
        .frame(width: key.width * 40, height: baseHeight * key.heightMultiplier)
        .cornerRadius(6)
    }

    private func alignment(for alignment: KeyAlignment) -> Alignment {
        switch alignment {
        case .center: return .center
        case .bottomLeading: return .bottomLeading
        case .bottomTrailing: return .bottomTrailing
        }
    }

    private func padding(for alignment: KeyAlignment) -> EdgeInsets {
        switch alignment {
        case .center:
            return EdgeInsets()
        case .bottomLeading:
            return EdgeInsets(top: 0, leading: 6, bottom: 6, trailing: 0)
        case .bottomTrailing:
            return EdgeInsets(top: 0, leading: 0, bottom: 6, trailing: 6)
        }
    }
}

#Preview {
    ContentView()
}

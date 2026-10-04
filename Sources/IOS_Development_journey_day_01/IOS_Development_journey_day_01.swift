public struct PracticeSession: Sendable, Equatable {
    public let day: Int
    public let minutes: Int
    public let stackFocus: String
    public let topic: String

    public init(day: Int, minutes: Int, stackFocus: String, topic: String) {
        self.day = day
        self.minutes = minutes
        self.stackFocus = stackFocus
        self.topic = topic
    }
}

public enum IOSNinetyDayPlan {
    public static let totalDays = 90
    public static let minutesPerDay = 90
    public static let stackFocus = "iOS Development (Swift + SwiftUI)"

    public static func generate() -> [PracticeSession] {
        (1...totalDays).map { day in
            PracticeSession(
                day: day,
                minutes: minutesPerDay,
                stackFocus: stackFocus,
                topic: topic(for: day)
            )
        }
    }

    private static func topic(for day: Int) -> String {
        switch day {
        case 1...30:
            return "Swift foundations, control flow, optionals, structs, and protocols"
        case 31...60:
            return "SwiftUI views, state management, navigation, and networking basics"
        default:
            return "Production practice: architecture, persistence, testing, and capstone app"
        }
    }
}

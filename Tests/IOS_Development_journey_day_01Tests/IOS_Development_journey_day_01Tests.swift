import Testing
@testable import IOS_Development_journey_day_01

@Test("Plan has 90 daily sessions")
func planHasNinetyDays() {
    let plan = IOSNinetyDayPlan.generate()

    #expect(plan.count == 90)
    #expect(plan.first?.day == 1)
    #expect(plan.last?.day == 90)
}

@Test("Every day is a 90-minute iOS-focused session")
func everySessionMatchesFocusAndDuration() {
    let plan = IOSNinetyDayPlan.generate()

    #expect(plan.allSatisfy { $0.minutes == 90 })
    #expect(plan.allSatisfy { $0.stackFocus == "iOS Development (Swift + SwiftUI)" })
}

@Test("Plan phases cover foundations, SwiftUI, and capstone")
func planPhasesAreDistributedAcross90Days() {
    let plan = IOSNinetyDayPlan.generate()

    #expect(plan[0].topic.contains("Swift foundations"))
    #expect(plan[30].topic.contains("SwiftUI"))
    #expect(plan[60].topic.contains("Production practice"))
}

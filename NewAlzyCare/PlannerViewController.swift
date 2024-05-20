//
//  PlannerViewController.swift
//  NewAlzyCare
//
//  Created by Batch-1 on 20/05/24.
//
import UIKit
import CalendarKit

class PlannerViewController: UIViewController {
    required init?(coder: NSCoder){
        super.init(coder: coder)
        self.tabBarItem.title = "Planner"
        self.tabBarItem.image = UIImage(systemName: "calendar")
    }

    var calendarView: DayViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Initialize the calendar view controller
        calendarView = DayViewController()

        // Set the calendar style to remove timing and grind sections
        calendarView.dayView = DayView(frame: .init())

        // Embed the calendar view controller
        addChild(calendarView)
        view.addSubview(calendarView.view)
        calendarView.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            calendarView.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            calendarView.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calendarView.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            calendarView.view.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        calendarView.didMove(toParent: self)
    }
}


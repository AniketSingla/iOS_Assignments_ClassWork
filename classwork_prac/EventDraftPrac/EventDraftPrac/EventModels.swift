//
//  EventModels.swift
//  EventDraftPrac
//
//  Created by Aniket Singla on 12/08/25.
//

import Foundation

struct EventDraft {
    var title: String
    var date: String
    var location: String
    var attendeeCount: String
}

protocol EventEditorDelegate: AnyObject {
    func didSaveEvent(_ event: EventDraft)
    func didDeleteEvent()
}

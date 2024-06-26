/**
*  SwiftUIIndexedList
*  Copyright (c) Ciaran O'Brien 2024
*  MIT license, see LICENSE file for details
*/

import SwiftUI

public struct Index: Equatable {
    internal let contentID: AnyHashable
    internal let displayPriority: DisplayPriority
    internal let icon: Image?
    internal let title: Text?
}


public extension Index {
    enum DisplayPriority: Equatable, Hashable {
        case standard
        case increased
    }
}


public extension Index {
    init<Title, ContentID>(
        _ title: Title,
        image name: String? = nil,
        displayPriority: DisplayPriority = .standard,
        contentID: ContentID
    )
    where
    Title : StringProtocol,
    ContentID : Hashable
    {
        self.contentID = AnyHashable(contentID)
        self.displayPriority = displayPriority
        self.title = Text(title)
        
        if let name = name {
            self.icon = Image(name)
        } else {
            self.icon = nil
        }
    }
    
    init<ContentID>(
        _ title: LocalizedStringKey,
        image name: String? = nil,
        displayPriority: DisplayPriority = .standard,
        contentID: ContentID
    )
    where ContentID : Hashable
    {
        self.contentID = AnyHashable(contentID)
        self.displayPriority = displayPriority
        self.title = Text(title)
        
        if let name = name {
            self.icon = Image(name)
        } else {
            self.icon = nil
        }
    }
    
    init<Title, ContentID>(
        _ title: Title,
        systemImage name: String?,
        displayPriority: DisplayPriority = .standard,
        contentID: ContentID
    )
    where
    Title : StringProtocol,
    ContentID : Hashable
    {
        self.contentID = AnyHashable(contentID)
        self.displayPriority = displayPriority
        self.title = Text(title)
        
        if let name = name {
            self.icon = Image(systemName: name)
        } else {
            self.icon = nil
        }
    }
    
    init<ContentID>(
        _ title: LocalizedStringKey,
        systemImage name: String?,
        displayPriority: DisplayPriority = .standard,
        contentID: ContentID
    )
    where ContentID : Hashable
    {
        self.contentID = AnyHashable(contentID)
        self.displayPriority = displayPriority
        self.title = Text(title)
        
        if let name = name {
            self.icon = Image(systemName: name)
        } else {
            self.icon = nil
        }
    }
}

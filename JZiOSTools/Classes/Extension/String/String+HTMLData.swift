//
//  String+HTMLData.swift
//  JZiOSTools
//
//  Created by Jiahao Zhu on 2021/1/14.
//

public extension String {
    
    // returns the tree-like data format from the HTML string
    func convertHTMLStringToData() -> HTMLData? {
        let data = HTMLData()
        var layer = 0
        var index = 0
        var node: HTMLNode? = nil
        var content: String = self
        if self.findLast("</body>") > -1 {
            content = self.subStringEnclosedBy("<body>", and: "</body>")
        } else {
            content = self
        }
        while index < content.count {
            let headIndex = content.findFirst("<", index)
            guard headIndex > -1 else {
                if layer == 0 {
                    data.head.val = content.subStringFrom(index)
                    return data
                } else {
                    return nil
                }
            }
            if content.subStringFrom(headIndex, to: headIndex + 1) == "</" {
                layer -= 1
                guard layer > -1 else { return nil }
                if headIndex > index {
                    node?.val = content.subStringFrom(index, to: headIndex - 1)
                }
                node = node?.parent
            } else if content.subStringFrom(headIndex, to: headIndex + 1) != "<!" {
                if let oldNode = node {
                    if let _ = oldNode.next {
                        oldNode.next?.append(HTMLNode())
                    } else {
                        oldNode.next = [HTMLNode()]
                    }
                    let newNode = oldNode.next![oldNode.next!.count - 1]
                    newNode.parent = node
                    node = newNode
                } else {
                    node = data.head
                }
                if headIndex > index {
                    node?.val = content.subStringFrom(index, to: headIndex - 1)
                }
                layer += 1
            }
            index = content.findFirst(">", index) + 1
        }
        return layer == 0 ? data : nil
    }
    
}

public class HTMLNode {
    
    public var val : String?
    
    public var parent: HTMLNode?
    
    public var next : [HTMLNode]?
    
}

public class HTMLData {
    
    public var head : HTMLNode = HTMLNode()
    
}

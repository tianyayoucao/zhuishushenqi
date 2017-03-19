//
//  BookDetail.swift
//  zhuishushenqi
//
//  Created by Nory Chao on 16/10/4.
//  Copyright © 2016年 QS. All rights reserved.
//

import UIKit

@objc(BookDetail)
class BookDetail: NSObject,NSCoding {

    
    var _id:String = ""
    var author:String = ""
    var cover:String = ""
    var creater:String = ""
    var longIntro:String = ""
    var title:String = ""
    var cat:String = ""
    var majorCate:String = ""
    var minorCate:String = ""
    var latelyFollower:String = ""
    var retentionRatio:String = ""
    var serializeWordCount:String = ""//每天更新字数
    var wordCount:String = ""
    var updated:String = ""//更新时间
    var tags:NSArray?
    
    //更新信息
    var updateInfo:UpdateInfo?
    
    class func modelCustomPropertyMapper() ->NSDictionary{
        return ["author":"author","cover":"cover","creater":"creater","longIntro":"longIntro","title":"title","cat":"cat","majorCate":"majorCate","minorCate":"minorCate","latelyFollower":"latelyFollower","retentionRatio":"retentionRatio","serializeWordCount":"serializeWordCount","wordCount":"wordCount","updated":"updated","tags":"tags","_id":"_id"]
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        self._id = aDecoder.decodeObject(forKey: "_id") as? String ?? ""
        self.author = aDecoder.decodeObject(forKey: "author") as? String ?? ""
        self.cover = aDecoder.decodeObject(forKey: "cover") as? String ?? ""
        self.creater = aDecoder.decodeObject(forKey: "creater") as? String ?? ""
        self.longIntro = aDecoder.decodeObject(forKey: "longIntro") as? String ?? ""
        self.title = aDecoder.decodeObject(forKey: "title") as? String ?? ""
        self.cat = aDecoder.decodeObject(forKey: "cat") as? String ?? ""
        self.majorCate = aDecoder.decodeObject(forKey: "majorCate") as? String ?? ""
        self.minorCate = aDecoder.decodeObject(forKey: "minorCate") as? String ?? ""
        self.latelyFollower = aDecoder.decodeObject(forKey: "latelyFollower")  as? String ?? ""
        self.retentionRatio = aDecoder.decodeObject(forKey: "retentionRatio") as? String ?? ""
        self.serializeWordCount = aDecoder.decodeObject(forKey: "serializeWordCount") as? String ?? ""
        self.wordCount = aDecoder.decodeObject(forKey: "wordCount") as? String ?? ""
        self.updated = aDecoder.decodeObject(forKey: "updated") as? String ?? ""
        self.tags = aDecoder.decodeObject(forKey: "tags") as? NSArray
        self.updateInfo = aDecoder.decodeObject(forKey: "updateInfo") as? UpdateInfo
    }
    
    override init() {
        
    }
    
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self._id, forKey: "_id")
        aCoder.encode(self.author, forKey: "author")
        aCoder.encode(self.cover, forKey: "cover")
        aCoder.encode(self.creater, forKey: "creater")
        aCoder.encode(self.longIntro, forKey: "longIntro")
        aCoder.encode(self.title, forKey: "title")
        aCoder.encode(self.cat, forKey: "cat")
        aCoder.encode(self.majorCate, forKey: "majorCate")
        aCoder.encode(self.minorCate, forKey: "minorCate")
        aCoder.encode(self.latelyFollower, forKey: "latelyFollower")
        aCoder.encode(self.retentionRatio, forKey: "retentionRatio")
        aCoder.encode(self.serializeWordCount, forKey: "serializeWordCount")
        aCoder.encode(self.wordCount, forKey: "wordCount")
        aCoder.encode(self.updated, forKey: "updated")
        aCoder.encode(self.tags, forKey: "tags")
        aCoder.encode(self.updateInfo, forKey: "updateInfo")

    }
}

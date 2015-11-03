////    SMServerTokenHandler.swift
////
////    The MIT License (MIT)
////
////    Copyright (c) 2015 Nofel Mahmood ( https://twitter.com/NofelMahmood )
////
////    Permission is hereby granted, free of charge, to any person obtaining a copy
////    of this software and associated documentation files (the "Software"), to deal
////    in the Software without restriction, including without limitation the rights
////    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
////    copies of the Software, and to permit persons to whom the Software is
////    furnished to do so, subject to the following conditions:
////
////    The above copyright notice and this permission notice shall be included in all
////    copies or substantial portions of the Software.
////
////    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
////    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
////    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
////    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
////    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
////    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
////    SOFTWARE.
//
//
//import Foundation
//import CloudKit
//
//let SMStoreSyncOperationServerTokenKey = "SMStoreSyncOperationServerTokenKey"
//
//class SMServerTokenHandler {
//
//    static let defaultHandler = SMServerTokenHandler()
//    private var newToken: CKServerChangeToken?
//    
//    func token() -> CKServerChangeToken? {
//        if NSUserDefaults.standardUserDefaults().objectForKey(SMStoreSyncOperationServerTokenKey) != nil {
//            let fetchTokenKeyArchived = NSUserDefaults.standardUserDefaults().objectForKey(SMStoreSyncOperationServerTokenKey) as! NSData
//            return NSKeyedUnarchiver.unarchiveObjectWithData(fetchTokenKeyArchived) as? CKServerChangeToken
//        }
//        return nil
//    }
//    
//    func save(serverChangeToken serverChangeToken: CKServerChangeToken) {
//        self.newToken = serverChangeToken
//    }
//    
//    func unCommittedToken() -> CKServerChangeToken? {
//        return newToken
//    }
//    
//    func commit() {
//        if self.newToken != nil {
//            NSUserDefaults.standardUserDefaults().setObject(NSKeyedArchiver.archivedDataWithRootObject(self.newToken!), forKey: SMStoreSyncOperationServerTokenKey)
//        }
//    }
//    
//    func delete() {
//        if self.token() != nil {
//            NSUserDefaults.standardUserDefaults().setObject(nil, forKey: SMStoreSyncOperationServerTokenKey)
//        }
//    }
//}

//
// EnumTest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class EnumTest: JSONEncodable {
    public enum EnumString: String { 
        case upper = "UPPER"
        case lower = "lower"
    }
    public enum EnumInteger: Int32 { 
        case number1 = 1
        case numberminus1 = -1
    }
    public enum EnumNumber: Double { 
        case number11 = 1.1
        case numberminus12 = -1.2
    }
    public var enumString: EnumString?
    public var enumInteger: EnumInteger?
    public var enumNumber: EnumNumber?
    public var outerEnum: OuterEnum?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["enum_string"] = self.enumString?.rawValue
        nillableDictionary["enum_integer"] = self.enumInteger?.rawValue
        nillableDictionary["enum_number"] = self.enumNumber?.rawValue
        nillableDictionary["outerEnum"] = self.outerEnum?.encodeToJSON()
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

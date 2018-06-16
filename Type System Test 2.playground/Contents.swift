class ValueType {
    public static var any: ValueType = ValueType(name: "Any")
    
    private let internalSupertype: ValueType?
    public var supertype: ValueType { return internalSupertype ?? ValueType.any }
    public let name: String
    
    /// Initialize a new type. If `supertype` is nil, it assumes the supertype
    /// is `Any`.
    init(name: String, supertype: ValueType? = nil) {
        self.internalSupertype = supertype
        self.name = name
    }
}

class ValueInstance {
    public let type: ValueType
    public let data: Any
    
    init(type: ValueType, data: Any) {
        self.type = type
        self.data = data
    }
}

let boolType = ValueType(name: "Bool")
let intType = ValueType(name: "Int")
let floatType = ValueType(name: "Float")
let stringType = ValueType(name: "String")

let stringInstance = ValueInstance(type: stringType, data: "Hello, world!")


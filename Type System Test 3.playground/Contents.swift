// TODO: THIS IS NOT RIGHT; I need a way to define an instance of a value type
// e.g. [1,2,3] vs Array<Number> vs Array

class TypeDeclaration {
    public static let any: ValueType = TypeDeclaration(name: "Any")
    
    public let name: String
    
    public let generics: [ValueType]
    
    private let internalSupertype: ValueType?
    public var supertype: ValueType { return internalSupertype ?? ValueType(declaration: TypeDeclaration.any) }
    
    /// Initialize a new type. If `supertype` is nil, it assumes the supertype
    /// is `Any`.
    public init(name: String, generics: [ValueType] = [], supertype: ValueType? = nil) {
        self.internalSupertype = supertype
        self.generics = generics
        self.name = name
    }
}

class ValueType {
    init(declaration: ValueType, generics: [ValueType] = []) {
        // TODO: Assert generics can coerce to declaration types
    }
    
    /// Determines if this value type can be converted to another value type
    /// without downcasting.
    public func canCoerce(to other: ValueType) -> Bool {
        return self === other || (self !== ValueType.any && supertype.canCoerce(to: other))
    }
}

class ValueInstance {
    public let type: ValueType
    public let data: Any
    
    public init(type: ValueType, data: Any) {
        self.type = type
        self.data = data
    }
}

// TODO: Custom VPL types would just be a subclass of `ValueType` and `ValueInstance`

let boolType = ValueType(name: "Bool")
let numberType = ValueType(name: "Number")
let intType = ValueType(name: "Int", supertype: numberType)
let floatType = ValueType(name: "Float", supertype: numberType)
let stringType = ValueType(name: "String")

stringType.canCoerce(to: boolType)
stringType.canCoerce(to: ValueType.any)
intType.canCoerce(to: numberType)

let stringInstance = ValueInstance(type: stringType, data: "Hello, world!")


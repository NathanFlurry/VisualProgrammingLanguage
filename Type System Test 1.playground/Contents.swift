// TODO: Generics?
// TODO: Add protocol that wraps a Swift value into a runtime value

public protocol RuntimeValue: class {
    /// The superclass of this runtime value.
    static var superclass: RuntimeValue.Type { get }
    
    /// The defualt value for this type. This is only used when creating a new
    /// value node and is never used at runtime.
    static var defaultValue: RuntimeValue { get } // TODO: Since can't use `Self` here, write assert to make sure it refers to itself
    
    /// The base type label for this value type. This should be upper camel case
    /// with only alphanumeric letters, starting with a letter.
    static var baseTypeLabel: String { get }
    
    /// The generic contrains for this value type.
    static var generics: [RuntimeValue.Type] { get }
}

extension RuntimeValue {
    public static var generics: [RuntimeValue.Type] { return [] }
    
    /// Returns the full type of the runtime value, including the generic
    /// constraints.
    public static var typeLabel: String {
        // Set the base type label
        var label = baseTypeLabel
        
        // Add the generics
        if generics.count > 0 {
            label += "<"
            label += generics.map { $0.typeLabel }.joined(separator: ", ")
            label += ">"
        }
        
        return label
    }
    
    /// Determines if this value type can be converted to another value type
    /// without downcasting.
    public static func canCoerce(to other: RuntimeValue.Type) -> Bool {
        // Check self matches the type or the superclass matches the type
        // Stop at `AnyValue`, since the superclass of `AnyValue` is `AnyValue`
        return self == other || (self != AnyValue.self && superclass.canCoerce(to: other))
    }
}

public class AnyValue: RuntimeValue {
    public static var superclass: RuntimeValue.Type { return AnyValue.self }
    public static var defaultValue: RuntimeValue { return IntValue.defaultValue } // TODO: Make this nil
    public static var baseTypeLabel: String { return "Any" }
}

public class BoolValue: RuntimeValue {
    public static var superclass: RuntimeValue.Type { return AnyValue.self }
    public static var defaultValue: RuntimeValue { return BoolValue(value: true) }
    public static var baseTypeLabel: String { return "Bool" }
    
    var value: Bool
    
    init(value: Bool) {
        self.value = value
    }
}

class IntValue: RuntimeValue {
    public static var superclass: RuntimeValue.Type { return AnyValue.self }
    public static var defaultValue: RuntimeValue { return IntValue(value: 0) } // TODO: Number superclass?
    public static var baseTypeLabel: String { return "Int" }
    
    var value: Int
    
    init(value: Int) {
        self.value = value
    }
}

public class FloatValue: RuntimeValue {
    public static var superclass: RuntimeValue.Type { return AnyValue.self }
    public static var defaultValue: RuntimeValue { return FloatValue(value: 0) }
    public static var baseTypeLabel: String { return "Float" }
    
    var value: Int
    
    init(value: Int) {
        self.value = value
    }
}

public class StringValue: RuntimeValue {
    public static var superclass: RuntimeValue.Type { return AnyValue.self }
    public static var defaultValue: RuntimeValue { return StringValue(value: "") }
    public static var baseTypeLabel: String { return "String" }
    
    var value: String
    
    init(value: String) {
        self.value = value
    }
}


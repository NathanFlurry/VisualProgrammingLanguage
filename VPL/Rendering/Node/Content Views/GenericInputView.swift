//
//  GenericInputView.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

public class GenericInputViewField: UIView {
    public let name: String

    public var value: String

    var valueChangeCallback: (() -> Void)?

    private var valueLabel: UILabel!

    public init(name: String, defaultValue: String) {
        self.name = name
        self.value = defaultValue

        super.init(frame: .zero)

        let fieldLabel = UILabel()
        fieldLabel.textAlignment = .center
        fieldLabel.text = "\(name):"
        fieldLabel.textColor = UIColor(white: 0.3, alpha: 1.0)
        fieldLabel.font = .systemFont(ofSize: UIFont.smallSystemFontSize, weight: .bold)
        addSubview(fieldLabel)

        valueLabel = UILabel()
        valueLabel.textAlignment = .center
        valueLabel.text = value
        valueLabel.font = UIFont.codeFont()
        valueLabel.numberOfLines = 0
        addSubview(valueLabel)

        let pickButton = UIButton(type: .detailDisclosure)
        addSubview(pickButton)

        // Add constraints
        fieldLabel.translatesAutoresizingMaskIntoConstraints = false
        valueLabel.translatesAutoresizingMaskIntoConstraints = false
        pickButton.translatesAutoresizingMaskIntoConstraints = false

        fieldLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8).activate()
        fieldLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).activate()
        fieldLabel.rightAnchor.constraint(equalTo: pickButton.leftAnchor, constant: -8).activate()

        valueLabel.topAnchor.constraint(equalTo: fieldLabel.bottomAnchor, constant: 8).activate()
        valueLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8).activate()
        valueLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).activate()
        valueLabel.rightAnchor.constraint(equalTo: pickButton.leftAnchor, constant: -8).activate()

        pickButton.centerYAnchor.constraint(equalTo: centerYAnchor).activate()
        pickButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -8).activate()

        pickButton.addTarget(self, action: #selector(pickTouched(sender:)), for: .touchUpInside)
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @objc func pickTouched(sender: UIButton) {
        // Create the alert
        let alert = UIAlertController(title: name, message: nil, preferredStyle: .alert)
        alert.addTextField { textField in
            textField.text = self.value
            textField.clearButtonMode = .whileEditing
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        let doneAction = UIAlertAction(
            title: "Done",
            style: .default,
            handler: { _ in
                let textField = alert.textFields![0]
                if let text = textField.text {
                    self.set(value: text)
                }
            }
        )
        alert.addAction(cancelAction)
        alert.addAction(doneAction)
        parentViewController?.present(alert, animated: true)
    }

    func set(value: String) {
        // Update the value
        self.value = value
        self.valueLabel.text = value

        // Value change callback
        self.valueChangeCallback?()
    }
}

public class GenericInputView: DisplayableNodeContentView {
    /// The owning node.
    weak var node: Node?

    /// The value from the view.
    public let fields: [GenericInputViewField]

    init(node: Node, fields: [GenericInputViewField]) {
        self.node = node
        self.fields = fields

        super.init(frame: .zero)

        // Set the callbacks
        for field in fields {
            field.valueChangeCallback = {
                self.contentValueChanged()
            }
        }

        // Add the views
        let stackView = UIStackView(arrangedSubviews: fields)
        stackView.axis = .vertical
        stackView.distribution = .fill
        addSubview(stackView)

        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.leftAnchor.constraint(equalTo: leftAnchor).activate()
        stackView.rightAnchor.constraint(equalTo: rightAnchor).activate()
        stackView.topAnchor.constraint(equalTo: topAnchor).activate()
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor).activate()
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

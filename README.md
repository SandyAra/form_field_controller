## Form Field Controller
Simple and easy way to handle Form Fields and Validation.

### Features
- [x] Controllers
- [x] Input Formatters
- [x] Input Validators
- [ ] Predefined Form Widgets

---

### Available Form Field Controller
- [Phone](#phone-form-field-controller)
- [Email](#email-form-field-controller)
- [MultiLine](#multi-line-form-field-controller)
- [Name](#name-form-field-controller)
- [Number](#number-form-field-controller)
- [Amount](#amount-form-field-controller)
- [Text](#text-form-field-controller)
- [Dropdown](#dropdown-field-controller)
- [MultiSelection](#multi-selection-field-controller)


### How to use
Wrap all the form field widget inside `Form` widget.

```dart
PhoneFormFieldController phoneController = PhoneFormFieldController(const ValueKey("txtPhone"));
```

```dart
TextFormField(
  controller: phoneController.textEditingController,
  focusNode: phoneController.focusNode,
  validator: phoneController.validator,
  inputFormatters: phoneController.inputFormatter,
  maxLength: phoneController.maxLength,
  decoration: const InputDecoration(labelText: "Phone Number"),
),
```

---

### Phone Form Field Controller

This controller is used to validate Phone number. It uses `InputFormatter.phoneNoFormatter`, `InputValidator.phoneValidator`

```dart
PhoneFormFieldController phoneController = PhoneFormFieldController(const ValueKey("txtPhone"), maxlength: 10);
```

| Arguments      | Default Value | Description           |
| -------------- | ------------- | --------------------- |
| key |                     | `ValueKey` |
| maxlength        | 10 | |
| required          | true | `true` - mandatory field it can't be empty |
| requiredText           | Required!  | Message to show if the field is in error state |

<br/>

### Email Form Field Controller

This controller is used to validate Email Field. It uses `InputValidator.emailValidator`

```dart
PhoneFormFieldController phoneController = PhoneFormFieldController(const ValueKey("txtPhone"), maxlength: 10);
```

| Arguments      | Default Value | Description           |
| -------------- | ------------- | --------------------- |
| key |                     | `ValueKey` |
| required          | true | `true` - mandatory field it can't be empty |
| requiredText           | Please enter a valid Email  | Message to show if the field is in error state |

<br/>

## Feedback
You like the package ? Give me a thumbsup :thumbsup:	

Invariant:  strength-required
Description: "If product is active, then strength  MUST be populated"
Expression: "role.coding.code='100000072072' implies strength.exists()"
Severity:   #error

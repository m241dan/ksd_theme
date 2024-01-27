; inherits: cpp

(preproc_ifdef
  name: (identifier) @preproc.ifdef.var)

(preproc_def
  name: (identifier) @define.var)

"," @punctuation.comma
";" @punctuation.semicolon

(enum_specifier
  name: (type_identifier) @type.enum
  body: (enumerator_list
    (enumerator
      name: (identifier) @type.enum.id)))

(union_specifier
  name: (type_identifier) @type.union)

(struct_specifier
  name: (type_identifier) @type.struct)

(class_specifier
  name: (type_identifier) @type.class)

(concept_definition
  name: (identifier) @type.concept)

(template_declaration
  parameters: (template_parameter_list [
    (variadic_type_parameter_declaration (type_identifier) @template.variadic.id) @template.variadic             
    (type_parameter_declaration (type_identifier) @template.normal.id) @template.normal
    (parameter_declaration 
      type: (primitive_type)
      declarator: (identifier) @template.param)
  ]))


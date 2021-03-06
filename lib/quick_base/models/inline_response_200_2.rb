=begin
#Quick Base API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15

=end

require 'date'

module QuickBase
  class InlineResponse2002
    # The id of the field, unique to this table.
    attr_accessor :id

    # The type of field, as described [here](https://help.quickbase.com/user-assistance/field_types.html).
    attr_accessor :field_type

    # Only present for derived fields: lookup, summary or formula.
    attr_accessor :mode

    # The label (name) of the field.
    attr_accessor :label

    # Indicates if the field is configured to not wrap when displayed in the product.
    attr_accessor :no_wrap

    # Indicates if the field is configured to display in bold in the product.
    attr_accessor :bold

    # Indicates if the field is marked required.
    attr_accessor :required

    # Indicates if the field is marked as a default in reports.
    attr_accessor :appears_by_default

    # Indicates if the field is marked as searchable.
    attr_accessor :find_enabled

    # Indicates if users can add new choices to a selection list.
    attr_accessor :allow_new_choices

    # Indicates if the listed entries sort as entered vs alphabetically.
    attr_accessor :sort_as_given

    # Whether the field should carry its multiple choice fields when copied.
    attr_accessor :carry_choices

    # Indicates if the field is a foreign key (or reference field) in a relationship.
    attr_accessor :foreign_key

    # Indicates if the field is marked unique.
    attr_accessor :unique

    # Indicates if the field data will copy when a user copies the record.
    attr_accessor :does_data_copy

    # The configured help text shown to users within the product.
    attr_accessor :field_help

    # Indicates if the field is being tracked as part of Quick Base Audit Logs.
    attr_accessor :audited

    # The number of lines shown in the Quick Base product for this text field.
    attr_accessor :num_lines

    # The maximum number of characters allowed for entry in the Quick Base product for this field.
    attr_accessor :max_length

    # Whether this field is append only.
    attr_accessor :append_only

    # Whether this field allows html.
    attr_accessor :allow_html

    # Whether this field has a phone extension.
    attr_accessor :has_extension

    # The units label.
    attr_accessor :units

    # The number of decimal places displayed in the product for this field.
    attr_accessor :decimal_places

    # The number of digits before commas display in the product, when applicable.
    attr_accessor :comma_start

    # The format used for displaying numeric values in the product (decimal, separators, digit group).
    attr_accessor :number_format

    # Whether this field averages in reports within the product.
    attr_accessor :does_average

    # Whether this field totals in reports within the product.
    attr_accessor :does_total

    # Whether a blank value is treated the same as 0 in calculations within the product.
    attr_accessor :blank_is_zero

    # The current symbol used when displaying field values within the product.
    attr_accessor :currency_symbol

    # The currency format used when displaying field values within the product.
    attr_accessor :currency_format

    # Indicates whether to display the time, in addition to the date.
    attr_accessor :display_time

    # Whether to display time as relative.
    attr_accessor :display_relative

    # How to display months.
    attr_accessor :display_month

    # Indicates if the field value is defaulted today for new records.
    attr_accessor :default_today

    # Indicates whether to display the day of the week within the product.
    attr_accessor :display_day_of_week

    # Indicates whether to display the timezone within the product.
    attr_accessor :display_timezone

    # The work week type.
    attr_accessor :work_week

    # The start field id.
    attr_accessor :start_field

    # The duration field id.
    attr_accessor :duration_field

    # The format to display time.
    attr_accessor :format

    # Indicates whether or not to display time in the 24-hour format within the product.
    attr_accessor :hours24

    # The configured option for how users display within the product.
    attr_accessor :display_user

    # The user default type.
    attr_accessor :default_kind

    # Default user id value.
    attr_accessor :default_value_luid

    # List of user choices.
    attr_accessor :choices_luid

    # An array of entries that exist for a field that offers choices to the user.
    attr_accessor :choices

    # An array of the fields that make up a composite field (e.g., address).
    attr_accessor :composite_fields

    # The id of the target table.
    attr_accessor :target_table_id

    # The id of the target field.
    attr_accessor :target_field_id

    # The id of the source field.
    attr_accessor :source_field_id

    # Indicates if the URL should open a new window when a user clicks it within the product.
    attr_accessor :use_new_window

    # The configured text value that replaces the URL that users see within the product.
    attr_accessor :link_text

    # Whether an exact match is required for a report link.
    attr_accessor :exact

    # Indicates whether images will display for file attachments on forms and reports within the product.
    attr_accessor :display_images

    # Default email domain.
    attr_accessor :default_domain

    # How the email is displayed.
    attr_accessor :display_email

    # The link text, if empty, the url will be used as link text.
    attr_accessor :appears_as

    # Don't show the URL protocol when showing the URL.
    attr_accessor :abbreviate

    # Whether the link field will auto save.
    attr_accessor :auto_save

    # The field's target table name.
    attr_accessor :target_table_name

    # Indicates if a field that is part of the relationship should be shown as a hyperlink to the parent record within the product.
    attr_accessor :display_as_link

    # Whether to sort alphabetically, default sort is by record ID.
    attr_accessor :sort_alpha

    # Version modes for files. Keep all versions vs keep last version.
    attr_accessor :version_mode

    # The maximum number of versions configured for a file attachment.
    attr_accessor :max_versions

    # Indicates if the user can see other versions, aside from the most recent, of a file attachment within the product.
    attr_accessor :see_versions

    # The field's html input width in the product.
    attr_accessor :width

    # The field's xml tag.
    attr_accessor :xml_tag

    # The formula of the field as configured in Quick Base.
    attr_accessor :formula

    # The default value configured for a field when a new record is added.
    attr_accessor :default_value

    # The comments entered on the field properties by an administrator.
    attr_accessor :comments

    # The id of the table that is the master in this relationship.
    attr_accessor :master_choice_table_id

    # The id of the field that is the reference in the relationship.
    attr_accessor :master_choice_field_id

    # The id of the field that is used to snapshot values from, when applicable.
    attr_accessor :snap_field_id

    # The id of the parent composite field, when applicable.
    attr_accessor :parent_field_id

    # The id of the field that is the target on the master table for this lookup.
    attr_accessor :lookup_target_field_id

    # The id of the field that is the reference in the relationship for this lookup.
    attr_accessor :lookup_reference_field_id

    # The id of the field that is the reference in the relationship for this summary.
    attr_accessor :summary_reference_field_id

    # The id of the field that is used to aggregate values from the child, when applicable. This displays 0 if the summary function doesn’t require a field selection (like count).
    attr_accessor :summary_target_field_id

    # The summary accumulation function type.
    attr_accessor :summary_function

    # The table alias for the master table in the relationship this field is part of.
    attr_accessor :master_table_tag

    # Field Permissions for different roles.
    attr_accessor :permissions

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'field_type' => :'fieldType',
        :'mode' => :'mode',
        :'label' => :'label',
        :'no_wrap' => :'noWrap',
        :'bold' => :'bold',
        :'required' => :'required',
        :'appears_by_default' => :'appearsByDefault',
        :'find_enabled' => :'findEnabled',
        :'allow_new_choices' => :'allowNewChoices',
        :'sort_as_given' => :'sortAsGiven',
        :'carry_choices' => :'carryChoices',
        :'foreign_key' => :'foreignKey',
        :'unique' => :'unique',
        :'does_data_copy' => :'doesDataCopy',
        :'field_help' => :'fieldHelp',
        :'audited' => :'audited',
        :'num_lines' => :'numLines',
        :'max_length' => :'maxLength',
        :'append_only' => :'appendOnly',
        :'allow_html' => :'allowHTML',
        :'has_extension' => :'hasExtension',
        :'units' => :'units',
        :'decimal_places' => :'decimalPlaces',
        :'comma_start' => :'commaStart',
        :'number_format' => :'numberFormat',
        :'does_average' => :'doesAverage',
        :'does_total' => :'doesTotal',
        :'blank_is_zero' => :'blankIsZero',
        :'currency_symbol' => :'currencySymbol',
        :'currency_format' => :'currencyFormat',
        :'display_time' => :'displayTime',
        :'display_relative' => :'displayRelative',
        :'display_month' => :'displayMonth',
        :'default_today' => :'defaultToday',
        :'display_day_of_week' => :'displayDayOfWeek',
        :'display_timezone' => :'displayTimezone',
        :'work_week' => :'workWeek',
        :'start_field' => :'startField',
        :'duration_field' => :'durationField',
        :'format' => :'format',
        :'hours24' => :'hours24',
        :'display_user' => :'displayUser',
        :'default_kind' => :'defaultKind',
        :'default_value_luid' => :'defaultValueLuid',
        :'choices_luid' => :'choicesLuid',
        :'choices' => :'choices',
        :'composite_fields' => :'compositeFields',
        :'target_table_id' => :'targetTableId',
        :'target_field_id' => :'targetFieldId',
        :'source_field_id' => :'sourceFieldId',
        :'use_new_window' => :'useNewWindow',
        :'link_text' => :'linkText',
        :'exact' => :'exact',
        :'display_images' => :'displayImages',
        :'default_domain' => :'defaultDomain',
        :'display_email' => :'displayEmail',
        :'appears_as' => :'appearsAs',
        :'abbreviate' => :'abbreviate',
        :'auto_save' => :'autoSave',
        :'target_table_name' => :'targetTableName',
        :'display_as_link' => :'displayAsLink',
        :'sort_alpha' => :'sortAlpha',
        :'version_mode' => :'versionMode',
        :'max_versions' => :'maxVersions',
        :'see_versions' => :'seeVersions',
        :'width' => :'width',
        :'xml_tag' => :'xmlTag',
        :'formula' => :'formula',
        :'default_value' => :'defaultValue',
        :'comments' => :'comments',
        :'master_choice_table_id' => :'masterChoiceTableId',
        :'master_choice_field_id' => :'masterChoiceFieldId',
        :'snap_field_id' => :'snapFieldId',
        :'parent_field_id' => :'parentFieldId',
        :'lookup_target_field_id' => :'lookupTargetFieldId',
        :'lookup_reference_field_id' => :'lookupReferenceFieldId',
        :'summary_reference_field_id' => :'summaryReferenceFieldId',
        :'summary_target_field_id' => :'summaryTargetFieldId',
        :'summary_function' => :'summaryFunction',
        :'master_table_tag' => :'masterTableTag',
        :'permissions' => :'permissions'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'field_type' => :'String',
        :'mode' => :'String',
        :'label' => :'String',
        :'no_wrap' => :'BOOLEAN',
        :'bold' => :'BOOLEAN',
        :'required' => :'BOOLEAN',
        :'appears_by_default' => :'BOOLEAN',
        :'find_enabled' => :'BOOLEAN',
        :'allow_new_choices' => :'BOOLEAN',
        :'sort_as_given' => :'BOOLEAN',
        :'carry_choices' => :'BOOLEAN',
        :'foreign_key' => :'BOOLEAN',
        :'unique' => :'BOOLEAN',
        :'does_data_copy' => :'BOOLEAN',
        :'field_help' => :'String',
        :'audited' => :'BOOLEAN',
        :'num_lines' => :'Integer',
        :'max_length' => :'Integer',
        :'append_only' => :'BOOLEAN',
        :'allow_html' => :'BOOLEAN',
        :'has_extension' => :'BOOLEAN',
        :'units' => :'String',
        :'decimal_places' => :'Integer',
        :'comma_start' => :'Integer',
        :'number_format' => :'Integer',
        :'does_average' => :'BOOLEAN',
        :'does_total' => :'BOOLEAN',
        :'blank_is_zero' => :'BOOLEAN',
        :'currency_symbol' => :'String',
        :'currency_format' => :'String',
        :'display_time' => :'BOOLEAN',
        :'display_relative' => :'BOOLEAN',
        :'display_month' => :'String',
        :'default_today' => :'BOOLEAN',
        :'display_day_of_week' => :'BOOLEAN',
        :'display_timezone' => :'BOOLEAN',
        :'work_week' => :'Integer',
        :'start_field' => :'Integer',
        :'duration_field' => :'Integer',
        :'format' => :'Integer',
        :'hours24' => :'BOOLEAN',
        :'display_user' => :'String',
        :'default_kind' => :'String',
        :'default_value_luid' => :'Integer',
        :'choices_luid' => :'Array<null>',
        :'choices' => :'Array<String>',
        :'composite_fields' => :'Array<null>',
        :'target_table_id' => :'String',
        :'target_field_id' => :'Integer',
        :'source_field_id' => :'Integer',
        :'use_new_window' => :'BOOLEAN',
        :'link_text' => :'String',
        :'exact' => :'BOOLEAN',
        :'display_images' => :'BOOLEAN',
        :'default_domain' => :'String',
        :'display_email' => :'String',
        :'appears_as' => :'String',
        :'abbreviate' => :'BOOLEAN',
        :'auto_save' => :'BOOLEAN',
        :'target_table_name' => :'String',
        :'display_as_link' => :'BOOLEAN',
        :'sort_alpha' => :'BOOLEAN',
        :'version_mode' => :'Integer',
        :'max_versions' => :'Integer',
        :'see_versions' => :'BOOLEAN',
        :'width' => :'Integer',
        :'xml_tag' => :'String',
        :'formula' => :'String',
        :'default_value' => :'String',
        :'comments' => :'String',
        :'master_choice_table_id' => :'Integer',
        :'master_choice_field_id' => :'Integer',
        :'snap_field_id' => :'Integer',
        :'parent_field_id' => :'Integer',
        :'lookup_target_field_id' => :'Integer',
        :'lookup_reference_field_id' => :'Integer',
        :'summary_reference_field_id' => :'Integer',
        :'summary_target_field_id' => :'Integer',
        :'summary_function' => :'String',
        :'master_table_tag' => :'String',
        :'permissions' => :'Array<FieldsPermissions>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'fieldType')
        self.field_type = attributes[:'fieldType']
      end

      if attributes.has_key?(:'mode')
        self.mode = attributes[:'mode']
      end

      if attributes.has_key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.has_key?(:'noWrap')
        self.no_wrap = attributes[:'noWrap']
      end

      if attributes.has_key?(:'bold')
        self.bold = attributes[:'bold']
      end

      if attributes.has_key?(:'required')
        self.required = attributes[:'required']
      end

      if attributes.has_key?(:'appearsByDefault')
        self.appears_by_default = attributes[:'appearsByDefault']
      end

      if attributes.has_key?(:'findEnabled')
        self.find_enabled = attributes[:'findEnabled']
      end

      if attributes.has_key?(:'allowNewChoices')
        self.allow_new_choices = attributes[:'allowNewChoices']
      end

      if attributes.has_key?(:'sortAsGiven')
        self.sort_as_given = attributes[:'sortAsGiven']
      end

      if attributes.has_key?(:'carryChoices')
        self.carry_choices = attributes[:'carryChoices']
      end

      if attributes.has_key?(:'foreignKey')
        self.foreign_key = attributes[:'foreignKey']
      end

      if attributes.has_key?(:'unique')
        self.unique = attributes[:'unique']
      end

      if attributes.has_key?(:'doesDataCopy')
        self.does_data_copy = attributes[:'doesDataCopy']
      end

      if attributes.has_key?(:'fieldHelp')
        self.field_help = attributes[:'fieldHelp']
      end

      if attributes.has_key?(:'audited')
        self.audited = attributes[:'audited']
      end

      if attributes.has_key?(:'numLines')
        self.num_lines = attributes[:'numLines']
      end

      if attributes.has_key?(:'maxLength')
        self.max_length = attributes[:'maxLength']
      end

      if attributes.has_key?(:'appendOnly')
        self.append_only = attributes[:'appendOnly']
      end

      if attributes.has_key?(:'allowHTML')
        self.allow_html = attributes[:'allowHTML']
      end

      if attributes.has_key?(:'hasExtension')
        self.has_extension = attributes[:'hasExtension']
      end

      if attributes.has_key?(:'units')
        self.units = attributes[:'units']
      end

      if attributes.has_key?(:'decimalPlaces')
        self.decimal_places = attributes[:'decimalPlaces']
      end

      if attributes.has_key?(:'commaStart')
        self.comma_start = attributes[:'commaStart']
      end

      if attributes.has_key?(:'numberFormat')
        self.number_format = attributes[:'numberFormat']
      end

      if attributes.has_key?(:'doesAverage')
        self.does_average = attributes[:'doesAverage']
      end

      if attributes.has_key?(:'doesTotal')
        self.does_total = attributes[:'doesTotal']
      end

      if attributes.has_key?(:'blankIsZero')
        self.blank_is_zero = attributes[:'blankIsZero']
      end

      if attributes.has_key?(:'currencySymbol')
        self.currency_symbol = attributes[:'currencySymbol']
      end

      if attributes.has_key?(:'currencyFormat')
        self.currency_format = attributes[:'currencyFormat']
      end

      if attributes.has_key?(:'displayTime')
        self.display_time = attributes[:'displayTime']
      end

      if attributes.has_key?(:'displayRelative')
        self.display_relative = attributes[:'displayRelative']
      end

      if attributes.has_key?(:'displayMonth')
        self.display_month = attributes[:'displayMonth']
      end

      if attributes.has_key?(:'defaultToday')
        self.default_today = attributes[:'defaultToday']
      end

      if attributes.has_key?(:'displayDayOfWeek')
        self.display_day_of_week = attributes[:'displayDayOfWeek']
      end

      if attributes.has_key?(:'displayTimezone')
        self.display_timezone = attributes[:'displayTimezone']
      end

      if attributes.has_key?(:'workWeek')
        self.work_week = attributes[:'workWeek']
      end

      if attributes.has_key?(:'startField')
        self.start_field = attributes[:'startField']
      end

      if attributes.has_key?(:'durationField')
        self.duration_field = attributes[:'durationField']
      end

      if attributes.has_key?(:'format')
        self.format = attributes[:'format']
      end

      if attributes.has_key?(:'hours24')
        self.hours24 = attributes[:'hours24']
      end

      if attributes.has_key?(:'displayUser')
        self.display_user = attributes[:'displayUser']
      end

      if attributes.has_key?(:'defaultKind')
        self.default_kind = attributes[:'defaultKind']
      end

      if attributes.has_key?(:'defaultValueLuid')
        self.default_value_luid = attributes[:'defaultValueLuid']
      end

      if attributes.has_key?(:'choicesLuid')
        if (value = attributes[:'choicesLuid']).is_a?(Array)
          self.choices_luid = value
        end
      end

      if attributes.has_key?(:'choices')
        if (value = attributes[:'choices']).is_a?(Array)
          self.choices = value
        end
      end

      if attributes.has_key?(:'compositeFields')
        if (value = attributes[:'compositeFields']).is_a?(Array)
          self.composite_fields = value
        end
      end

      if attributes.has_key?(:'targetTableId')
        self.target_table_id = attributes[:'targetTableId']
      end

      if attributes.has_key?(:'targetFieldId')
        self.target_field_id = attributes[:'targetFieldId']
      end

      if attributes.has_key?(:'sourceFieldId')
        self.source_field_id = attributes[:'sourceFieldId']
      end

      if attributes.has_key?(:'useNewWindow')
        self.use_new_window = attributes[:'useNewWindow']
      end

      if attributes.has_key?(:'linkText')
        self.link_text = attributes[:'linkText']
      end

      if attributes.has_key?(:'exact')
        self.exact = attributes[:'exact']
      end

      if attributes.has_key?(:'displayImages')
        self.display_images = attributes[:'displayImages']
      end

      if attributes.has_key?(:'defaultDomain')
        self.default_domain = attributes[:'defaultDomain']
      end

      if attributes.has_key?(:'displayEmail')
        self.display_email = attributes[:'displayEmail']
      end

      if attributes.has_key?(:'appearsAs')
        self.appears_as = attributes[:'appearsAs']
      end

      if attributes.has_key?(:'abbreviate')
        self.abbreviate = attributes[:'abbreviate']
      end

      if attributes.has_key?(:'autoSave')
        self.auto_save = attributes[:'autoSave']
      end

      if attributes.has_key?(:'targetTableName')
        self.target_table_name = attributes[:'targetTableName']
      end

      if attributes.has_key?(:'displayAsLink')
        self.display_as_link = attributes[:'displayAsLink']
      end

      if attributes.has_key?(:'sortAlpha')
        self.sort_alpha = attributes[:'sortAlpha']
      end

      if attributes.has_key?(:'versionMode')
        self.version_mode = attributes[:'versionMode']
      end

      if attributes.has_key?(:'maxVersions')
        self.max_versions = attributes[:'maxVersions']
      end

      if attributes.has_key?(:'seeVersions')
        self.see_versions = attributes[:'seeVersions']
      end

      if attributes.has_key?(:'width')
        self.width = attributes[:'width']
      end

      if attributes.has_key?(:'xmlTag')
        self.xml_tag = attributes[:'xmlTag']
      end

      if attributes.has_key?(:'formula')
        self.formula = attributes[:'formula']
      end

      if attributes.has_key?(:'defaultValue')
        self.default_value = attributes[:'defaultValue']
      end

      if attributes.has_key?(:'comments')
        self.comments = attributes[:'comments']
      end

      if attributes.has_key?(:'masterChoiceTableId')
        self.master_choice_table_id = attributes[:'masterChoiceTableId']
      end

      if attributes.has_key?(:'masterChoiceFieldId')
        self.master_choice_field_id = attributes[:'masterChoiceFieldId']
      end

      if attributes.has_key?(:'snapFieldId')
        self.snap_field_id = attributes[:'snapFieldId']
      end

      if attributes.has_key?(:'parentFieldId')
        self.parent_field_id = attributes[:'parentFieldId']
      end

      if attributes.has_key?(:'lookupTargetFieldId')
        self.lookup_target_field_id = attributes[:'lookupTargetFieldId']
      end

      if attributes.has_key?(:'lookupReferenceFieldId')
        self.lookup_reference_field_id = attributes[:'lookupReferenceFieldId']
      end

      if attributes.has_key?(:'summaryReferenceFieldId')
        self.summary_reference_field_id = attributes[:'summaryReferenceFieldId']
      end

      if attributes.has_key?(:'summaryTargetFieldId')
        self.summary_target_field_id = attributes[:'summaryTargetFieldId']
      end

      if attributes.has_key?(:'summaryFunction')
        self.summary_function = attributes[:'summaryFunction']
      end

      if attributes.has_key?(:'masterTableTag')
        self.master_table_tag = attributes[:'masterTableTag']
      end

      if attributes.has_key?(:'permissions')
        if (value = attributes[:'permissions']).is_a?(Array)
          self.permissions = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          field_type == o.field_type &&
          mode == o.mode &&
          label == o.label &&
          no_wrap == o.no_wrap &&
          bold == o.bold &&
          required == o.required &&
          appears_by_default == o.appears_by_default &&
          find_enabled == o.find_enabled &&
          allow_new_choices == o.allow_new_choices &&
          sort_as_given == o.sort_as_given &&
          carry_choices == o.carry_choices &&
          foreign_key == o.foreign_key &&
          unique == o.unique &&
          does_data_copy == o.does_data_copy &&
          field_help == o.field_help &&
          audited == o.audited &&
          num_lines == o.num_lines &&
          max_length == o.max_length &&
          append_only == o.append_only &&
          allow_html == o.allow_html &&
          has_extension == o.has_extension &&
          units == o.units &&
          decimal_places == o.decimal_places &&
          comma_start == o.comma_start &&
          number_format == o.number_format &&
          does_average == o.does_average &&
          does_total == o.does_total &&
          blank_is_zero == o.blank_is_zero &&
          currency_symbol == o.currency_symbol &&
          currency_format == o.currency_format &&
          display_time == o.display_time &&
          display_relative == o.display_relative &&
          display_month == o.display_month &&
          default_today == o.default_today &&
          display_day_of_week == o.display_day_of_week &&
          display_timezone == o.display_timezone &&
          work_week == o.work_week &&
          start_field == o.start_field &&
          duration_field == o.duration_field &&
          format == o.format &&
          hours24 == o.hours24 &&
          display_user == o.display_user &&
          default_kind == o.default_kind &&
          default_value_luid == o.default_value_luid &&
          choices_luid == o.choices_luid &&
          choices == o.choices &&
          composite_fields == o.composite_fields &&
          target_table_id == o.target_table_id &&
          target_field_id == o.target_field_id &&
          source_field_id == o.source_field_id &&
          use_new_window == o.use_new_window &&
          link_text == o.link_text &&
          exact == o.exact &&
          display_images == o.display_images &&
          default_domain == o.default_domain &&
          display_email == o.display_email &&
          appears_as == o.appears_as &&
          abbreviate == o.abbreviate &&
          auto_save == o.auto_save &&
          target_table_name == o.target_table_name &&
          display_as_link == o.display_as_link &&
          sort_alpha == o.sort_alpha &&
          version_mode == o.version_mode &&
          max_versions == o.max_versions &&
          see_versions == o.see_versions &&
          width == o.width &&
          xml_tag == o.xml_tag &&
          formula == o.formula &&
          default_value == o.default_value &&
          comments == o.comments &&
          master_choice_table_id == o.master_choice_table_id &&
          master_choice_field_id == o.master_choice_field_id &&
          snap_field_id == o.snap_field_id &&
          parent_field_id == o.parent_field_id &&
          lookup_target_field_id == o.lookup_target_field_id &&
          lookup_reference_field_id == o.lookup_reference_field_id &&
          summary_reference_field_id == o.summary_reference_field_id &&
          summary_target_field_id == o.summary_target_field_id &&
          summary_function == o.summary_function &&
          master_table_tag == o.master_table_tag &&
          permissions == o.permissions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, field_type, mode, label, no_wrap, bold, required, appears_by_default, find_enabled, allow_new_choices, sort_as_given, carry_choices, foreign_key, unique, does_data_copy, field_help, audited, num_lines, max_length, append_only, allow_html, has_extension, units, decimal_places, comma_start, number_format, does_average, does_total, blank_is_zero, currency_symbol, currency_format, display_time, display_relative, display_month, default_today, display_day_of_week, display_timezone, work_week, start_field, duration_field, format, hours24, display_user, default_kind, default_value_luid, choices_luid, choices, composite_fields, target_table_id, target_field_id, source_field_id, use_new_window, link_text, exact, display_images, default_domain, display_email, appears_as, abbreviate, auto_save, target_table_name, display_as_link, sort_alpha, version_mode, max_versions, see_versions, width, xml_tag, formula, default_value, comments, master_choice_table_id, master_choice_field_id, snap_field_id, parent_field_id, lookup_target_field_id, lookup_reference_field_id, summary_reference_field_id, summary_target_field_id, summary_function, master_table_tag, permissions].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = QuickBase.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end

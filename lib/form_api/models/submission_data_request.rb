=begin
#API v1

#FormAPI is a service that helps you fill out and sign PDF templates.

OpenAPI spec version: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.0-SNAPSHOT

=end

require 'date'

module FormAPI
  class SubmissionDataRequest
    attr_accessor :id

    attr_accessor :name

    attr_accessor :email

    attr_accessor :order

    attr_accessor :fields

    attr_accessor :metadata

    attr_accessor :state

    attr_accessor :viewed_at

    attr_accessor :completed_at

    attr_accessor :auth_type

    attr_accessor :auth_second_factor_type

    attr_accessor :auth_provider

    attr_accessor :auth_session_started_at

    attr_accessor :auth_session_id_hash

    attr_accessor :auth_user_id_hash

    attr_accessor :auth_username_hash

    attr_accessor :auth_phone_number_hash

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'email' => :'email',
        :'order' => :'order',
        :'fields' => :'fields',
        :'metadata' => :'metadata',
        :'state' => :'state',
        :'viewed_at' => :'viewed_at',
        :'completed_at' => :'completed_at',
        :'auth_type' => :'auth_type',
        :'auth_second_factor_type' => :'auth_second_factor_type',
        :'auth_provider' => :'auth_provider',
        :'auth_session_started_at' => :'auth_session_started_at',
        :'auth_session_id_hash' => :'auth_session_id_hash',
        :'auth_user_id_hash' => :'auth_user_id_hash',
        :'auth_username_hash' => :'auth_username_hash',
        :'auth_phone_number_hash' => :'auth_phone_number_hash'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'name' => :'String',
        :'email' => :'String',
        :'order' => :'Integer',
        :'fields' => :'Array<String>',
        :'metadata' => :'Object',
        :'state' => :'String',
        :'viewed_at' => :'String',
        :'completed_at' => :'String',
        :'auth_type' => :'String',
        :'auth_second_factor_type' => :'String',
        :'auth_provider' => :'String',
        :'auth_session_started_at' => :'String',
        :'auth_session_id_hash' => :'String',
        :'auth_user_id_hash' => :'String',
        :'auth_username_hash' => :'String',
        :'auth_phone_number_hash' => :'String'
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

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'order')
        self.order = attributes[:'order']
      end

      if attributes.has_key?(:'fields')
        if (value = attributes[:'fields']).is_a?(Array)
          self.fields = value
        end
      end

      if attributes.has_key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'viewed_at')
        self.viewed_at = attributes[:'viewed_at']
      end

      if attributes.has_key?(:'completed_at')
        self.completed_at = attributes[:'completed_at']
      end

      if attributes.has_key?(:'auth_type')
        self.auth_type = attributes[:'auth_type']
      end

      if attributes.has_key?(:'auth_second_factor_type')
        self.auth_second_factor_type = attributes[:'auth_second_factor_type']
      end

      if attributes.has_key?(:'auth_provider')
        self.auth_provider = attributes[:'auth_provider']
      end

      if attributes.has_key?(:'auth_session_started_at')
        self.auth_session_started_at = attributes[:'auth_session_started_at']
      end

      if attributes.has_key?(:'auth_session_id_hash')
        self.auth_session_id_hash = attributes[:'auth_session_id_hash']
      end

      if attributes.has_key?(:'auth_user_id_hash')
        self.auth_user_id_hash = attributes[:'auth_user_id_hash']
      end

      if attributes.has_key?(:'auth_username_hash')
        self.auth_username_hash = attributes[:'auth_username_hash']
      end

      if attributes.has_key?(:'auth_phone_number_hash')
        self.auth_phone_number_hash = attributes[:'auth_phone_number_hash']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @email.nil?
        invalid_properties.push('invalid value for "email", email cannot be nil.')
      end

      if @order.nil?
        invalid_properties.push('invalid value for "order", order cannot be nil.')
      end

      if @fields.nil?
        invalid_properties.push('invalid value for "fields", fields cannot be nil.')
      end

      if @metadata.nil?
        invalid_properties.push('invalid value for "metadata", metadata cannot be nil.')
      end

      if @state.nil?
        invalid_properties.push('invalid value for "state", state cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @name.nil?
      return false if @email.nil?
      return false if @order.nil?
      return false if @fields.nil?
      return false if @metadata.nil?
      return false if @state.nil?
      state_validator = EnumAttributeValidator.new('String', ['pending', 'completed'])
      return false unless state_validator.valid?(@state)
      auth_type_validator = EnumAttributeValidator.new('String', ['none', 'password', 'oauth', 'email_link', 'phone_number', 'ldap', 'saml'])
      return false unless auth_type_validator.valid?(@auth_type)
      auth_second_factor_type_validator = EnumAttributeValidator.new('String', ['none', 'phone_number', 'totp', 'mobile_push', 'security_key', 'fingerprint'])
      return false unless auth_second_factor_type_validator.valid?(@auth_second_factor_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('String', ['pending', 'completed'])
      unless validator.valid?(state)
        fail ArgumentError, 'invalid value for "state", must be one of #{validator.allowable_values}.'
      end
      @state = state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] auth_type Object to be assigned
    def auth_type=(auth_type)
      validator = EnumAttributeValidator.new('String', ['none', 'password', 'oauth', 'email_link', 'phone_number', 'ldap', 'saml'])
      unless validator.valid?(auth_type)
        fail ArgumentError, 'invalid value for "auth_type", must be one of #{validator.allowable_values}.'
      end
      @auth_type = auth_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] auth_second_factor_type Object to be assigned
    def auth_second_factor_type=(auth_second_factor_type)
      validator = EnumAttributeValidator.new('String', ['none', 'phone_number', 'totp', 'mobile_push', 'security_key', 'fingerprint'])
      unless validator.valid?(auth_second_factor_type)
        fail ArgumentError, 'invalid value for "auth_second_factor_type", must be one of #{validator.allowable_values}.'
      end
      @auth_second_factor_type = auth_second_factor_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          email == o.email &&
          order == o.order &&
          fields == o.fields &&
          metadata == o.metadata &&
          state == o.state &&
          viewed_at == o.viewed_at &&
          completed_at == o.completed_at &&
          auth_type == o.auth_type &&
          auth_second_factor_type == o.auth_second_factor_type &&
          auth_provider == o.auth_provider &&
          auth_session_started_at == o.auth_session_started_at &&
          auth_session_id_hash == o.auth_session_id_hash &&
          auth_user_id_hash == o.auth_user_id_hash &&
          auth_username_hash == o.auth_username_hash &&
          auth_phone_number_hash == o.auth_phone_number_hash
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, email, order, fields, metadata, state, viewed_at, completed_at, auth_type, auth_second_factor_type, auth_provider, auth_session_started_at, auth_session_id_hash, auth_user_id_hash, auth_username_hash, auth_phone_number_hash].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
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
        temp_model = FormAPI.const_get(type).new
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

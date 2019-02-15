=begin
#Kubernetes

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1.13.4

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module Kubernetes
  # current status of a horizontal pod autoscaler
  class V1HorizontalPodAutoscalerStatus
    # current average CPU utilization over all pods, represented as a percentage of requested CPU, e.g. 70 means that an average pod is using now 70% of its requested CPU.
    attr_accessor :current_cpu_utilization_percentage

    # current number of replicas of pods managed by this autoscaler.
    attr_accessor :current_replicas

    # desired number of replicas of pods managed by this autoscaler.
    attr_accessor :desired_replicas

    # last time the HorizontalPodAutoscaler scaled the number of pods; used by the autoscaler to control how often the number of pods is changed.
    attr_accessor :last_scale_time

    # most recent generation observed by this autoscaler.
    attr_accessor :observed_generation


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'current_cpu_utilization_percentage' => :'currentCPUUtilizationPercentage',
        :'current_replicas' => :'currentReplicas',
        :'desired_replicas' => :'desiredReplicas',
        :'last_scale_time' => :'lastScaleTime',
        :'observed_generation' => :'observedGeneration'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'current_cpu_utilization_percentage' => :'Integer',
        :'current_replicas' => :'Integer',
        :'desired_replicas' => :'Integer',
        :'last_scale_time' => :'DateTime',
        :'observed_generation' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'currentCPUUtilizationPercentage')
        self.current_cpu_utilization_percentage = attributes[:'currentCPUUtilizationPercentage']
      end

      if attributes.has_key?(:'currentReplicas')
        self.current_replicas = attributes[:'currentReplicas']
      end

      if attributes.has_key?(:'desiredReplicas')
        self.desired_replicas = attributes[:'desiredReplicas']
      end

      if attributes.has_key?(:'lastScaleTime')
        self.last_scale_time = attributes[:'lastScaleTime']
      end

      if attributes.has_key?(:'observedGeneration')
        self.observed_generation = attributes[:'observedGeneration']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @current_replicas.nil?
        invalid_properties.push("invalid value for 'current_replicas', current_replicas cannot be nil.")
      end

      if @desired_replicas.nil?
        invalid_properties.push("invalid value for 'desired_replicas', desired_replicas cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @current_replicas.nil?
      return false if @desired_replicas.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          current_cpu_utilization_percentage == o.current_cpu_utilization_percentage &&
          current_replicas == o.current_replicas &&
          desired_replicas == o.desired_replicas &&
          last_scale_time == o.last_scale_time &&
          observed_generation == o.observed_generation
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [current_cpu_utilization_percentage, current_replicas, desired_replicas, last_scale_time, observed_generation].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
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
        temp_model = Kubernetes.const_get(type).new
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
        value.compact.map{ |v| _to_hash(v) }
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

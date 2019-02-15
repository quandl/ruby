=begin
#Kubernetes

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1.13.4

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module Kubernetes
  # DeploymentStatus is the most recently observed status of the Deployment.
  class AppsV1beta1DeploymentStatus
    # Total number of available pods (ready for at least minReadySeconds) targeted by this deployment.
    attr_accessor :available_replicas

    # Count of hash collisions for the Deployment. The Deployment controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet.
    attr_accessor :collision_count

    # Represents the latest available observations of a deployment's current state.
    attr_accessor :conditions

    # The generation observed by the deployment controller.
    attr_accessor :observed_generation

    # Total number of ready pods targeted by this deployment.
    attr_accessor :ready_replicas

    # Total number of non-terminated pods targeted by this deployment (their labels match the selector).
    attr_accessor :replicas

    # Total number of unavailable pods targeted by this deployment. This is the total number of pods that are still required for the deployment to have 100% available capacity. They may either be pods that are running but not yet available or pods that still have not been created.
    attr_accessor :unavailable_replicas

    # Total number of non-terminated pods targeted by this deployment that have the desired template spec.
    attr_accessor :updated_replicas


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'available_replicas' => :'availableReplicas',
        :'collision_count' => :'collisionCount',
        :'conditions' => :'conditions',
        :'observed_generation' => :'observedGeneration',
        :'ready_replicas' => :'readyReplicas',
        :'replicas' => :'replicas',
        :'unavailable_replicas' => :'unavailableReplicas',
        :'updated_replicas' => :'updatedReplicas'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'available_replicas' => :'Integer',
        :'collision_count' => :'Integer',
        :'conditions' => :'Array<AppsV1beta1DeploymentCondition>',
        :'observed_generation' => :'Integer',
        :'ready_replicas' => :'Integer',
        :'replicas' => :'Integer',
        :'unavailable_replicas' => :'Integer',
        :'updated_replicas' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'availableReplicas')
        self.available_replicas = attributes[:'availableReplicas']
      end

      if attributes.has_key?(:'collisionCount')
        self.collision_count = attributes[:'collisionCount']
      end

      if attributes.has_key?(:'conditions')
        if (value = attributes[:'conditions']).is_a?(Array)
          self.conditions = value
        end
      end

      if attributes.has_key?(:'observedGeneration')
        self.observed_generation = attributes[:'observedGeneration']
      end

      if attributes.has_key?(:'readyReplicas')
        self.ready_replicas = attributes[:'readyReplicas']
      end

      if attributes.has_key?(:'replicas')
        self.replicas = attributes[:'replicas']
      end

      if attributes.has_key?(:'unavailableReplicas')
        self.unavailable_replicas = attributes[:'unavailableReplicas']
      end

      if attributes.has_key?(:'updatedReplicas')
        self.updated_replicas = attributes[:'updatedReplicas']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          available_replicas == o.available_replicas &&
          collision_count == o.collision_count &&
          conditions == o.conditions &&
          observed_generation == o.observed_generation &&
          ready_replicas == o.ready_replicas &&
          replicas == o.replicas &&
          unavailable_replicas == o.unavailable_replicas &&
          updated_replicas == o.updated_replicas
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [available_replicas, collision_count, conditions, observed_generation, ready_replicas, replicas, unavailable_replicas, updated_replicas].hash
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

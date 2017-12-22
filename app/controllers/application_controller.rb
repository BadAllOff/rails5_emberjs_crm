class ApplicationController < ActionController::API
  # It looks like F&#9ING Mass assignment vulnerability MAN!!! WTF?!
  def relationship_params
    associations = {}
    params.dig(:data, :relationships).each do |key, value|
      associations[key.to_sym] = if value[:data].is_a? Array
          value[:data].map { |data| find_related_object(data) }
      else
        find_related_object(value[:data])
      end
    end
    associations
  end

  private

  def find_related_object(data)
    return unless data[:type] && data[:id]
    klass = data[:type].singularize.underscore.classify.safe_constantize
    klass&.find(data[:id]) # klass.find(data[:id]) if klass
  end
end

module HealthGraph
  class FitnessActivity
    include Model

    hash_attr_accessor :climb, :equipment, :type, :distance, :path, :calories, :total_calories, :activity, :total_distance, :duration, :start_time, :notes

    def initialize(access_token, params)
      self.access_token = access_token
      response = get params["uri"], HealthGraph.accept_headers[:fitness_activity]
      self.body = response.body
      populate_from_hash! self.body
    end
  end
end
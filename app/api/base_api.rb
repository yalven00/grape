module API

   class Base < Grape::API

          format :json

          rescue_from :all do |e|

             error_response (message: e.message, status:  500)

             end

             mount API::V1::Base

            end

      end
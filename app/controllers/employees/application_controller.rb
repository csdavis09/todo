class Employees::ApplicationController < ApplicationController
  before_action :authenticate_employee!
end


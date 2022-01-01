# frozen_string_literal: false

Rails.application.routes.draw do
  root to: 'homepage#index', as: :homepage_index
end

class Admin::SettingsController < ApplicationController
  before_action :authenticate_admin!, :set_admin_setting, only: [:show, :edit, :update, :destroy]

  layout "admin"
  def homepage
    @pages = Page.where(active: true)
    @homepage = Setting.where(meta_key: :homepage).first
  end

  def homepage_save
    @homepage = Setting.where(meta_key: :homepage).first
    @homepage.meta_value = params[:setting_homepage]
    @homepage.save
    Page.cache_expiration
    redirect_to admin_pages_path, notice: "Homepage was successfully saved."
  end
end

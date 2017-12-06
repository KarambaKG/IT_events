ActiveAdmin.register Event do
  config.filters = false

  permit_params :name, :description, :avatar, :city, :location, :date_and_time,
                :external_link, :organizer_id, :region_id

  index do
    selectable_column
    id_column
    column :name
    column :description
    column :city
    column :location
    column :date_and_time
    column :external_link
    column 'Organizer' do |command|
      link_to command.organizer.name, admin_organizer_path(command.organizer)
    end
    column 'Region' do |command|
      link_to command.region.name, admin_region_path(command.region)
    end
    column 'Avatar' do |command|
      image_tag command.avatar.url(:thumb)
    end
    column :created_at
    actions
  end

  show do |command|
    attributes_table do
      row :name
      row :description
      row :city
      row :location
      row :date_and_time
      row :external_link
      row 'Organizer' do |command|
        link_to command.organizer.name, admin_organizer_path(command.organizer)
      end
      row 'Region' do |command|
        link_to command.region.name, admin_region_path(command.region)
      end
      row :thumbnail do
        image_tag(command.avatar.url(:thumb))
      end
      # Will display the image on show object page
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :avatar
      f.input :city
      f.input :location
      f.input :date_and_time
      f.input :external_link
      f.input :organizer_id, :label => 'Organizer', :as => :select,
              :collection => Organizer.all.map{|organizer| ["#{organizer.name}", organizer.id]}
      f.input :region_id, :label => 'Region', :as => :select,
              :collection => Region.all.map{|region| ["#{region.name}", region.id]}
    end
    f.actions
  end

end

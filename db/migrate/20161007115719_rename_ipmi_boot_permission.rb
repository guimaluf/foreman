class RenameIpmiBootPermission < ActiveRecord::Migration
  def up
    Permission.where(:name => 'ipmi_boot').
      update_all(:name => 'ipmi_boot_hosts')
  end

  def down
    Permission.where(:name => 'ipmi_boot_hosts').
      update_all(:name => 'ipmi_boot')
  end
end

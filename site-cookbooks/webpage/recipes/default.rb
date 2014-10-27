# encoding: utf-8
#
# Cookbook Name:: webpage
# Recipe:: default.rb
#
# Copyright 2014, Christoph Hartmann
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# ensure git is there
package "git"

# download git repo for hardening page
git "/var/www/hardening" do
 repository "https://github.com/TelekomLabs/TelekomLabs.github.io.git"
 revision "master"
 action :checkout
 user "root"
end

# enable web page for hardening
web_app "hardening" do
   server_name node['hostname']
   docroot "/var/www/hardening"
   cookbook 'apache2'
   enable true
end

#!/usr/bin/ruby

#    This file is part of EC2 on Rails.
#    http://rubyforge.org/projects/ec2onrails/
#
#    Copyright 2007 Paul Dowman, http://pauldowman.com/
#
#    EC2 on Rails is free software; you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation; either version 2 of the License, or
#    (at your option) any later version.
#
#    EC2 on Rails is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#    To customize the nginx config files, you can setup a template like:
#    /etc/ec2onrails/balancer_members.erb
#    /etc/ec2onrails/nginx_upstream_members.erb
#

require "#{File.dirname(__FILE__)}/../lib/roles_helper"
include Ec2onrails::RolesHelper

puts "Roles: "
pp roles

set_hostnames
process_config_file_templates


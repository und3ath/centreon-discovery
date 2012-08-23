-- This file is part of Centreon-Discovery module.
--
-- Centreon-Discovery is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by the
--  Free Software Foundation, either version 2 of the License.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, see <http://www.gnu.org/licenses>.
--
-- Linking this program statically or dynamically with other modules is making a
-- combined work based on this program. Thus, the terms and conditions of the GNU
-- General Public License cover the whole combination.
--
-- Module name: Centreon-Discovery
--
-- Developped by : Sub2.13
--
-- WEBSITE: http://community.centreon.com/projects/centreon-discovery
-- SVN: http://svn.modules.centreon.com/centreon-discovery

-- 
-- DATABASE: @DB_NAME_CENTREON@
-- TABLE: modules_informations
-- 
-- Mise � jour du num�ro de version du module Centreon-Discovery
UPDATE `modules_informations` SET  `mod_release` = '@VERSION@' WHERE `modules_informations`.`name` ="Discovery";
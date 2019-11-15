#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
#     ||          ____  _ __
#  +------+      / __ )(_) /_______________ _____  ___
#  | 0xBC |     / __  / / __/ ___/ ___/ __ `/_  / / _ \
#  +------+    / /_/ / / /_/ /__/ /  / /_/ / / /_/  __/
#   ||  ||    /_____/_/\__/\___/_/   \__,_/ /___/\___/
#
#  Copyright (C) 2011-2013 Bitcraze AB
#
#  Crazyflie Nano Quadcopter Client
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation; either version 2
#  of the License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.

#  You should have received a copy of the GNU General Public License along with
#  this program; if not, write to the Free Software Foundation, Inc.,
#  51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

"""
Superclass for all tabs that implements common functions.
"""

import logging

from PyQt5 import QtWidgets
from PyQt5.QtCore import pyqtSlot

from cfclient.utils.config import Config

__author__ = 'Bitcraze AB'
__all__ = ['Tab']

logger = logging.getLogger(__name__)


class Tab(QtWidgets.QWidget):
    """Superclass for all tabs that implements common functions."""

    def __init__(self):
        super(Tab, self).__init__()
        self.tabName = "N/A"
        self.menuName = "N/A"
        self.enabled = True

    @pyqtSlot(bool)
    def toggleVisibility(self, checked):
        """Show or hide the tab."""
        if checked:
            self.tabWidget.addTab(self, self.getTabName())
            s = ""
            try:
                s = Config().get("open_tabs")
                if (len(s) > 0):
                    s += ","
            except Exception:
                logger.warning("Exception while adding tab to config and "
                               "reading tab config")
            # Check this since tabs in config are opened when app is started
            if (self.tabName not in s):
                s += "%s" % self.tabName
                Config().set("open_tabs", str(s))

        if not checked:
            self.tabWidget.removeTab(self.tabWidget.indexOf(self))
            try:
                parts = Config().get("open_tabs").split(",")
            except Exception:
                logger.warning("Exception while removing tab from config and "
                               "reading tab config")
                parts = []
            s = ""
            for p in parts:
                if (self.tabName != p):
                    s += "%s," % p
            s = s[0:len(s) - 1]  # Remove last comma
            Config().set("open_tabs", str(s))

    def getMenuName(self):
        """Return the name of the tab that will be shown in the menu"""
        return self.menuName

    def getTabName(self):
        """Return the name of the tab that will be shown in the tab"""
        return self.tabName

    def is_visible(self):
        return self.tabWidget.currentWidget() == self

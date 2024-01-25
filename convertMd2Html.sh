#!/bin/bash

#  Copyright (C) 2024 hidenorly
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

if [ $# == 2 ]; then
	BOOT_STRAP=$1
	REPORT_NAME=$2
else
	REPORT_NAME=$1
	BOOT_STRAP=bootstrap-md.css
fi

/usr/bin/python2 md2html.py $REPORT_NAME -t $REPORT_NAME -o $REPORT_NAME.html -s $BOOT_STRAP -r ".md)=.md.html)"

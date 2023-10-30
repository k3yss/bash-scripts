#!/bin/bash
for i in {1..32}
do
	sudo userdel nixbld$i
done

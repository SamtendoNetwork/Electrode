@echo off
setlocal enabledelayedexpansion

if exist build rmdir /s /q build
if exist dist rmdir /s /q dist
if exist Electrode-samtendo.elf del /q Electrode-samtendo.elf
if exist Electrode-samtendo.wms del /q Electrode-samtendo.wms
if exist plugin\build rmdir /s /q plugin\build
if exist plugin\Electrode-samtendo.elf del /q plugin\Electrode-samtendo.elf
if exist plugin\Electrode-samtendo.wps del /q plugin\Electrode-samtendo.wps

echo Cleanup complete!
#
# Copyright (C) 2013 The Android Open Source Project
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
#
# Note that components added here will be also shared in PDK. Components
# that should not be in PDK should be added in lower level like core.mk.

PRODUCT_PROPERTY_OVERRIDES := \
#    ro.config.notification_sound=OnTheHunt.ogg \
#    ro.config.alarm_alert=Alarm_Classic.ogg

PRODUCT_PACKAGES += \
    Home \
    atrace \
    libandroidfw \
    libaudiopreprocessing \
    libaudioutils \
    libbcc \
    libfilterpack_imageproc \
    libgabi++ \
    libkeystore \
    libmdnssd \
    libnfc_ndef \
    libportable \
    libpowermanager \
    libspeexresampler \
    libstagefright_soft_h264dec \
    libstagefright_soft_h264enc \
    libstagefright_soft_mp3dec \
    libstagefright_soft_mpeg4dec \
    libstagefright_soft_mpeg4enc \
    libstagefright_soft_rawdec \
    libstagefright_soft_vorbisdec \
    libvariablespeed \
    libwebrtc_audio_preprocessing \
    mdnsd \
    requestsync 

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)
# Override the PRODUCT_BOOT_JARS set in core_minimal.mk
PRODUCT_BOOT_JARS := core:conscrypt:okhttp:core-junit:bouncycastle:ext:framework:framework2:android.policy:services:apache-xml

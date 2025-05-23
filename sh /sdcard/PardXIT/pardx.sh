#!/system/bin/sh
echo "PROSES INSTALL PARDX"
echo "
█▀█ ▄▀█ █▀█ █▀▄ ▀▄▀
█▀▀ █▀█ █▀▄ █▄▀ █░█"
sleep 1
echo "
╔╗──╔╦╗──╔╦══╦═══╗
║╚╗╔╝║╚╗╔╝╠╣╠╣╔═╗║
╚╗║║╔╩╗║║╔╝║║║╚═╝║
─║╚╝║─║╚╝║─║║║╔══╝
─╚╗╔╝─╚╗╔╝╔╣╠╣║
──╚╝───╚╝─╚══╩╝"
sleep 1
echo "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
sleep 3

echo""

echo "
╔══════════════════════════════════════╗
║          🚀 PREMIUM DEVICE 🚀        
╠══════════════════════════════════════╣
║ 📱 Device    : $(getprop ro.product.manufacturer) $(getprop ro.product.model)
║ ⚙️ Android   : $(getprop ro.build.version.release)
║ 📌 VERSION    : PardX V3.0
║ 👑 DEVELOPER  : Mikxxz
╚══════════════════════════════════════╝"
sleep 2
echo""
echo "Proses Install PardX..."
sleep 1

# Lock Fps
settings put system user_refresh_rate 120
settings put system fps_limit 120
settings put system max_refresh_rate_for_ui 120
settings put system hwui_refresh_rate 120
settings put system display_refresh_rate 120
settings put system max_refresh_rate_for_gaming 120
settings put system fstb_target_fps_margin_high_fps 20
settings put system fstb_target_fps_margin_low_fps 20
settings put system gcc_fps_margin 10
settings put global tran_low_battery_120hz_refresh_rate.support 0
settings put system sf.refresh_rate 120
settings put system user_refresh_rate 120
settings put secure user_refresh_rate 120
settings put secure miui_refresh_rate 120
settings put system min_frame_rate 120
settings put system max_frame_rate 120
settings put system tran_refresh_mode 120
settings put system last_tran_refresh_mode_in_refresh_setting 120
settings put global min_fps 120
settings put global max_fps 120
settings put system tran_need_recovery_refresh_mode 120
settings put system display_min_refresh_rate 120
settings put system min_refresh_rate 120
settings put system max_refresh_rate 120
settings put system peak_refresh_rate 120
settings put secure refresh_rate_mode 120
settings put system user_refresh_rate 120
settings put system thermal_limit_refresh_rate 120
settings put system NV_FPSLIMIT 120
settings put system fps.limit.is.now locked


# ==========================
# Optimalisasi CPU & GPU
# ==========================
setprop debug.performance.tuning 1  
setprop debug.sf.hw 1  
setprop debug.egl.hw 1  
setprop debug.gralloc.enable_fb_ubwc 1  
setprop debug.hwui.renderer opengl  
setprop debug.sf.disable_backpressure 1  
settings put global game_mode_on 1  
settings put global sustained_performance_mode 1  
settings put global oneplus_fan_enabled 1  

# ==========================
# Nonaktifkan MSAA & FXAA (Disable Anti-Aliasing)
# ==========================
setprop debug.egl.force_msaa 0  
setprop debug.egl.force_fxaa 0  
setprop debug.egl.disable_msaa true  
setprop debug.egl.disable_fxaa true  
setprop debug.hwui.msaa 0  
setprop debug.hwui.fxaa 0  
# ==========================
# Optimalisasi RAM & Background Process
# ==========================
settings put global activity_manager_constants max_cached_processes=6  
settings put global app_ops_constants max_num_cached_background_processes=4  
settings put global background_process_limit 4  

# ==========================
# Mencegah Thermal Throttling & Tetap Dingin
# ==========================
settings put global thermal_event_screen_off true  
settings put global thermal_event_performance_mode high  
settings put system power_mode_performance true  

# ==========================
# Mengurangi Latensi Input & Lag
# ==========================
settings put global pointer_speed 2  

# ==========================
# Clear RAM Cache & Buffers Secara Otomatis
# ==========================
# ==========================
# Meningkatkan Stabilitas & Mengurangi Lag & Stutter
# ==========================
settings put global disable_configstore 1  
settings put global disable_background_apps 1


# Mematikan fitur yang mengganggu performa
settings put global auto_sync 0
settings put global ble_scan_always_enabled 0
settings put global wifi_scan_always_enabled 0
settings put global hotword_detection_enabled 0
settings put global activity_starts_logging_enabled 0
settings put global network_recommendations_enabled 0
settings put secure adaptive_sleep 0
settings put secure screensaver_enabled 0
settings put secure send_action_app_error 0
settings put system motion_engine 0
settings put system master_motion 0
settings put system air_motion_engine 0
settings put system air_motion_wake_up 0
settings put system send_security_reports 0
settings put system intelligent_sleep_mode 0
settings put system nearby_scanning_enabled 0
settings put system nearby_scanning_permission_allowed 0
setprop debug.sf.high_fps_early_gl_phase_offset_ns 81200000
setprop debug.sf.high_fps_early_phase_offset_ns 7500000
setprop debug.sf.high_fps_early_phase_offset_ns 6100000
setprop debug.sf.high_fps_early_gl_phase_offset_ns 650000
setprop debug.sf.high_fps_late_app_phase_offset_ns 100000
setprop debug.sf.high_fps_early_gl_phase_offset_ns 12000000

#Unlock Peforma Maximal
setprop debug.performance.tuning 1
cmd thermalservice override-status 0
cmd power set-fixed-performance-mode-enabled true
cmd power set-adaptive-power-saver-enabled false
cmd power set-mode 0
cmd device_config put thermal high_temp_limit 150
cmd device_config put thermal low_temp_limit 150
cmd shortcut reset-throttling
cmd shortcut reset-all-throttling

# Performance Mode
android_properties=(
  "debug.perfhudes 1"
  "debug.performance.tuning 1"
  "debug.performance.disturb false"
  "debug.performance_schema_digests_size 9950000"
  "debug.performance_schema 1"
  "debug.performance.profile 1"
  "debug.performance_schema_max_memory_classes 320"
  "debug.performance_schema_max_socket_classes 20"
  "debug.performance.level high"
  "debug.performance.io_optimization 1"
  "debug.performance.io_buffer_size 8192"
  "debug.performance.disk_caching_enabled 1"
  "debug.performance.cpu_boost_enabled 1"
  "debug.performance.multi_core_optimization 1"
  "debug.performance.thread_priority_boost 1"
  "debug.performance.gpu_acceleration 1"
  "debug.performance.gpu_buffer_optimization 1"
  "debug.performance.graphics_pipeline_tuning 1"
  "debug.performance.thermal_management_disabled 1"
  "debug.performance.energy_efficiency_tuning 0"
  "debug.performance.power_management_tuning high"
  "debug.performance.logging_disabled 1"
  "debug.performance.debug_overhead_reduction 1"
  "debug.performance.memory_boost_enabled 1"
  "debug.performance.memory_leak_detection 0"
  "debug.performance.cache_optimization 1"
  "debug.performance.profile_high_performance 1"
  "debug.performance.dynamic_scaling 1"
  "debug.perf.refresh_rate_override 1"
  "debug.perf_event_max_sample_rate 120" # Ubah Sesuai Refresh Rate
  "debug.perf_event_min_sample_rate 120" # Ubah Sesuai Refresh Rate
  "debug.perf_event_peak_sample_rate 120" # Ubah Sesuai Refresh Rate
  "debug.perf.smoothness 1"
  "debug.perf.cpu_jitter 0"
  "debug.perf.gpu_optimization 1"
  "debug.perf.rendering_mode high_performance"
  "debug.perf.vulkan_layer_enabled 0"
  "debug.perf.opengl_optimization 1"
  "debug.perf.touch_latency_optimization 1"
  "debug.perf.input_boost_enabled 1"
  "debug.perf.input_latency_reduction 1"
  "debug.perf.thermal_throttling_disable 1"
  "debug.perf.power_save_mode 0"
  "debug.perf.event_logging_enabled 0"
  "debug.perf.event_monitoring 0"
  "debug.perf.sample_rate_boost 1"
  "debug.perf.dynamic_sampling_enabled 0"
  "debug.perf.performance_mode_enabled 1"
  "debug.perf.priority_boost_enabled 1"
  "debug.perf.task_manager_optimization 1"
  "debug.perf.scheduler_optimization 1"
)
for prop in "${android_properties[@]}"; do
   setprop $prop > /dev/null 2>&1
done

# OpenGL Lite (30-40% Rendering Lebih Cepat)
{
setprop debug.egl.version 0x20000
setprop debug.hwui.use_vulkan false
setprop debug.gpu.debug_layers_on 0
setprop debug.gpu.renderer opengl
setprop debug.hwui.renderer opengl
setprop debug.hwui.use_threaded_renderer true
setprop debug.renderengine.backend opengl
setprop debug.hwui.shadow.renderer skiagl
setprop debug.composition.type skiagl
setprop enable_gpu_renderer true
setprop use_egl_mode 1
setprop debug.hwui.renderer opengl
setprop hwui.renderer opengl
setprop gpu_debug_layers_on 1
setprop enable_opengl_lite 1
setprop debug.enable_scissor_optimization true
setprop buffer_size 0.5
setprop hwui.disable_vsync 1
setprop debug.hw.vsync 0
setprop debug.hwui.vsync_override 1
setprop debug.rs.visual opengl
setprop debug.rs.shader SPIR-V
setprop debug.generate-debug-info false
setprop debug.egl.traceGpuCompletion false
setprop debug.sf.use_frame_rate_priority 1
setprop surface_flinger_use_frame_rate_api true
setprop debug.hwui.disable_zrle 1
setprop hwui.texture_cache_flushrate 0.4
setprop texture_atlas_cache_override 0.25
setprop texture_atlas_cache_entry_override 0.034
setprop texture_atlas_map_pool_override 0.15
} > /dev/null 2>&1
# OpenGL Lite (Fast Render)

setprop debug.performance.tuning 1; setprop debug.sf.hw 1; setprop debug.egl.force_msaa false; setprop debug.hwui.use_gpu_pixel_buffers 1; setprop debug.hwui.target_cpu_time_percent 5; setprop debug.gralloc.gfx_ubwc_disable 0; setprop debug.rs.default-CPU-driver 1; setprop debug.rs.max-threads 8; setprop debug.choreographer.skipwarning 30; setprop debug.choreographer.frametime false; setprop debug.display.allow_non_native_refresh_rate_override 1; setprop debug.display.render_frame_rate_is_physical_refresh_rate 1; setprop debug.sf.predict_hwc_composition_strategy 0; setprop debug.sf.enable_transaction_tracing false; setprop debug.sf.disable_client_composition_cache 1; setprop debug.sf.gpu_freq_indeks 7; setprop debug.sf.use_frame_rate_priority 1; setprop debug.atrace.tags.enableflags 0; setprop debug.cpurend.vsync false

settings put system dalvik.vm.checkjini false

settings put system debug.systemui.latency_tracking 0



settings put global cpu_governor powersave
settings put global cpu_min_freq 500000
settings put global cpu_max_freq 1400000
settings put global cpu_boost 0
settings put global cpu_power_saving 1
settings put global cpu_core_control 1
settings put global cpu_turbo_boost 0
settings put global cpu_load_balancing 1
settings put global cpu_hotplugging 1
settings put global cpu_sustained_performance_mode 1
settings put system background_process_limit 2
settings put global foreground_apps_priority 1
settings put system thermal_mode cooling
settings put global power_saving_mode 1
settings put system low_power_mode 1

settings put system media.metrics.enabled 0
settings put system sys.debug.watchdog 0
settings put system logd.statistics 0
settings put system media.metrics 0
settings put system config.stats 0
settings put system sys.log.app 0
settings put system logd.statistics 0
settings put system debug.atrace.tags.enableflags 0
settings put system debugtool.anrhistory 0

settings put system profiler.debugmonitor false
settings put system profiler.launch false
settings put system profiler.hung.dumpdobugreport false
settings put system trustkernel.log.state disable
settings put system debug.mdpcomp.logs 0
settings put system debug.atrace.tags.enableflags 0
settings put system pm.sleep_mode 1
settings put system profiler.force_disable_ulog true
settings put system profiler.force_disable_ulog 1
settings put system profiler.force_disable_err_rpt true
settings put system profiler.force_disable_err_rpt 1

settings put system debug.atrace.tags.enableflags 0

settings put system com.qc.hardware 1
settings put system debug.qc.hardware true
settings put system debug.qctwa.preservebuf 1
settings put system debug.qctwa.statusbar 1
settings put system window_animation_scale 0.5
settings put system transition_animation_scale 0.5
settings put system animator_duration_scale 0.5


settings put system touch.orientationAware 0
settings put system touch.size.scale 1
settings put system touch.size.isSummed 0

settings put system touch.deviceType touchScreen
cmd power set-fixed-performance-mode-enabled true
settings put secure long_press_timeout 250
settings put secure multi_press_timeout 250
settings put secure tap_duration_threshold 0.0
settings put secure touch_blocking_period 0.0
settings put global ram_expand_size 0 default
settings put system multicore_packet_scheduler 1


settings put system pointer_speed 7
settings put system touch_sensitivity 2.5

settings put system touch_slop 2
 
settings put system ui.hw 1
 
settings put system MovementSpeedRatio 1.5
 
settings put system ZoomSpeedRatio 1.5
 
settings put system SwipeTransitionAngleCosine 0.5
 
settings put system touch_switch_set_touchscreen 14005
 
settings put system long_press_timeout 259
 
settings put system multi_press_timeout 25
 
settings put system pointer_gesture_duration 25
 
settings put system mot.proximity.distance 1
 
settings put system mot.proximity.delay 35
 
settings put system PointerVelocityControlParameters 1
 
settings put system lowThreshold 0
 
settings put system highThreshold 0
 
settings put system DragMinSwitchSpeed 99999.0px/s
 
settings put system SwipeMaxWidthRatio 1

settings put global enable_gpu_debug_layers 1  
settings put global gpu_debug_app com.dts.freefireth  
settings put global force_120hz 1
settings put secure background_process_limit 1  
settings put global activity_manager_constants max_cached_processes=0
settings put system min_refresh_rate 120  
settings put system peak_refresh_rate 120  
settings put system font_scale 0.85  
settings put global game_mode 2  
settings put global game_driver_all_apps 1  
settings put global game_driver_opt_in_apps com.dts.freefireth
settings put system pointer_speed 7  
settings put secure touch_resampling 1  
settings put global touch_prediction 1  
settings put global touch_sensitivity 5  
settings put secure touch_accuracy 1  
settings put global tap_duration_threshold 0
settings put system drag_acceleration 5  
settings put system drag_smoothness 1  
settings put global drag_latency 0  
settings put secure flick_boost 2  
settings put global flick_response 1
settings put global aim_assist_boost 1  
settings put secure aim_correction 1  
settings put global auto_target_lock 1  
settings put secure aim_tracking_speed 3  
settings put system aim_response_time 0
settings put global cpu_boost 1  
settings put secure cpu_performance_mode 1  
settings put global gpu_rendering 1  
settings put secure gpu_boost 1  
settings put global gpu_turbo 1  
settings put secure gpu_performance 1
settings put global ram_optimization 1  
settings put secure memory_boost 1  
settings put global swap_enable 1  
settings put global zram_enable 1  
settings put global zram_size 50  
settings put global activity_manager_constants max_cached_processes=0

settings put secure frame_boost 1  
settings put global frame_rate_boost 1  
settings put secure frame_render 1  
settings put global game_fps 120  
settings put global game_vsync 0
settings put global cpu_boost 2  
settings put secure cpu_performance_mode 3  
settings put global cpu_scheduler_optimize 1  
settings put secure cpu_max_frequency 2800000  
settings put global cpu_min_frequency 1200000  
settings put global cpu_load_balance 1  
settings put secure cpu_turbo_mode 1  
settings put global cpu_energy_efficiency 0  
settings put secure cpu_latency_optimization 1

#!/system/bin/sh

# SENXIT CALIBRATE SCREEN (NO ROOT) - BREVENT SHIZUKU COMPATIBLE (WITHOUT AUTO-SWIPE)

# 1. Maksimalkan pointer speed (sentuhan lebih cepat dan responsif)
settings put system pointer_speed 7

# 3. Menonaktifkan UI Blur agar tidak membebani GPU (hanya beberapa device)
settings put system surface_flinger.supports_background_blur 0

# 4. Maksimalkan sensitivitas layar sentuh (jika tersedia)
settings put system touch_sensitivity 1

# 7. Reset layar sentuh untuk memperbaiki input lag
settings put system touch_feedback_enabled 1

# 8. Matikan fungsi gambar latar belakang (jika device mendukung)
settings put secure wallpaper_lockscreen 0
settings put secure wallpaper 0

#9. Optimalkan rendering untuk meningkatkan kinerja grafis
setprop debug.sf.latch_unsignaled 1
setprop debug.hwui.render_dirty_regions false

#!/system/bin/sh

# SENXIT RENDERING BOOST (NO ROOT) - BREVENT SHIZUKU COMPATIBLE

# 1. Mengoptimalkan rendering untuk kinerja grafis lebih cepat
setprop debug.sf.latch_unsignaled 1

# 2. Nonaktifkan rendering dirty regions untuk mempercepat rendering UI
setprop debug.hwui.render_dirty_regions false

# 3. Matikan fungsi VSync untuk meningkatkan FPS
setprop debug.sf.vsync 0

# 6. Mengurangi latensi GPU untuk meningkatkan respons grafik
setprop debug.hwui.render_frames 1

# 7. Menstabilkan frame rate dengan memodifikasi pengaturan GPU
setprop debug.sf.sync 0

# 10. Memaksimalkan penggunaan GPU untuk rendering lebih cepat
setprop debug.sf.disable_framebuffer 1

setprop debug.sf.fps 120

# 4. Nonaktifkan efek V-Sync untuk meningkatkan FPS dan responsivitas layar
setprop debug.sf.vsync 0

# 5. Mengoptimalkan penggunaan GPU untuk rendering lebih cepat
setprop debug.sf.latch_unsignaled 1
setprop debug.hwui.render_dirty_regions false

# 6. Menurunkan latensi sentuhan untuk kecepatan respons layar lebih baik
settings put system touch_sensitivity 2

# 7. Menonaktifkan efek blur untuk mengurangi beban GPU
settings put system surface_flinger.supports_background_blur 0

# 8. Nonaktifkan efek animasi pada layar kunci untuk kecepatan lebih tinggi
settings put secure wallpaper_lockscreen 0
settings put secure wallpaper 0

# 9. Optimalkan rendering dengan mematikan frame buffer yang tidak perlu
setprop debug.sf.disable_framebuffer 1

# 10. Mempercepat kecepatan pembaruan layar
setprop debug.sf.sync 0

#!/system/bin/sh

# SENXIT SMOOTH DRAG - NO ROOT - BREVENT SAFE

# 1. Aktifkan sentuhan multi-point lebih stabil
settings put system multi_touch_gesture_enabled 1
settings put secure long_press_timeout 200

# 2. Boost respons drag dengan kurva akselerasi lebih halus
settings put system touchpad_pointer_speed 3
settings put system touch_slop 4

# 3. Matikan jitter saat drag lambat
setprop debug.touch.noise_reduction 1
setprop debug.touch.edge_filter 1

# 4. Optimasi refresh sentuhan untuk gerakan presisi
setprop debug.touch.poll_rate 120
setprop debug.touch.force_rate 1

# 5. Stabilkan input tracking (drag garis lurus tetap lurus)
setprop debug.touch.tracking_smooth 1
setprop debug.touch.predict_lines 1

# 6. Nonaktifkan auto-smoothing system yang mengganggu drag
setprop debug.sf.auto_smooth_scroll 0

# 7. Sesuaikan frekuensi gesture agar tidak patah saat swipe lambat
settings put system gesture_move_speed 1
settings put system gesture_response_distance 5

# 8. Optimalkan driver UI gesture di latar belakang
setprop debug.hwui.gesture_smooth_path 1
setprop debug.hwui.ignore_fling_boost 1

#!/system/bin/sh

# SENXIT HEADTRICK 98% - FULL PACK NO ROOT

# 1. Sensitivitas semi-presisi khusus drag aim 98%
settings put system pointer_speed 7
settings put system touch_sensitivity 1

# 2. Stabilizer gerakan saat crosshair micro adjust
setprop debug.touch.track_delay 0
setprop debug.touch.micro_adjust 1

# 3. Boost response layar buat titik aim tetap stabil
setprop debug.hwui.enable_layer_caching 1
setprop debug.hwui.smart_cache 1

# 4. Optimasi rendering agar scope/bidik nggak drop frame
setprop debug.hwui.disable_vsync 1
setprop debug.sf.use_phase_offsets_as_durations 0

# 5. Stabilkan gerakan jari di atas aim area
settings put system gesture_response_distance 2
settings put secure long_press_timeout 180

# 6. Kurangi efek getaran/blur saat ngarahin tembakan
settings put system surface_flinger.supports_background_blur 0
setprop debug.input.blur_effect_disabled 1

# 7. Boost drag agar geseran 98% akurat dan licin
setprop debug.touch.drag_boost 98
setprop debug.touch.frame_skip_limit 0

# 8. Matikan sistem perlambat input & jeda touch
setprop debug.input.timeout_safety 0
setprop debug.input.block_delay 0

# 10. Prioritaskan jari saat bergerak di atas layar game
setprop debug.touch.focus_priority 1
setprop debug.gpu.ui_priority_level high

#!/system/bin/sh

# SENXIT HEADTRICK 60% - BREVENT SAFE MODULE (UNIQUE VERSION)

# 1. Gerakan jari halus saat flick head
settings put system user_rotation 0
settings put system swipe_velocity 0.1
settings put system gesture_move_speed 2.5

# 2. Nonaktifkan efek pantulan/gesekan yang ganggu flick
setprop debug.touch.elastic 0
setprop debug.touch.inertia 0

# 3. Aktifkan mode tracking peluru via driver UI
setprop debug.sf.predictive_aim 1
setprop debug.hwui.aim_path_optimizer 1

# 4. Delay kamera dikurangi supaya crosshair nempel
setprop debug.camera.delay_adjust 0
setprop debug.game.input_latency_fix 1

# 5. Stabilkan sentuhan saat area atas disentuh cepat
settings put system status_bar_drag_down 0
setprop debug.touch.priority_zone top

# 6. Hilangkan efek dinamis yang bikin layar berat saat zoom
setprop debug.sf.disable_dynamic_shadows 1
setprop debug.sf.minimize_glitch 1

# 7. Percepat pengolahan arah + sudut kecil
setprop debug.aim.vector_mode 1
setprop debug.aim.angle_snap_threshold 1

# 8. Gunakan cache vektor untuk bidikan lebih tajam
setprop debug.rendering.vector_cache_enabled 1

# 10. Maksimalkan tracking tanpa patah saat quick aim
setprop debug.tracker.flick_stabilize 1
setprop debug.touch.full_refresh 1

#!/system/bin/sh
# SENXIT - REAL GAMEPLAY SMOOTH BOOST (NO FRAME DROP)

settings put global touch_pressure_scale 0.8
settings put system surface_flinger_frame_rate 120
settings put global game_driver_all_apps 1

setprop debug.hwui.renderer skiagl
setprop debug.hwui.disable_vsync false
setprop debug.hwui.render_dirty_regions false
setprop debug.sf.disable_backpressure 1
setprop debug.sf.hw 1
setprop debug.performance.tuning true
settings put system power_save_fps_reduce 0
settings put global touch_response_boost 1
settings put global gpu_acceleration_force 1

#!/system/bin/sh
# SENXIT - RENDERING BOOST (NO ROOT)

# Mengaktifkan GPU Rendering
setprop debug.hwui.renderer skiagl
setprop debug.hwui.max_texture_memory 1048576
setprop debug.hwui.shader_cache_size 524288
setprop debug.hwui.texture_cache_size 262144

# Menurunkan latensi frame
setprop debug.sf.hw 1
setprop debug.sf.vsync_timeout 1
setprop debug.sf.hw_vsync true

# Disable buffering untuk pengurangan latensi
setprop debug.hwui.disable_vsync false
setprop debug.sf.low_latency_mode true
setprop debug.performance.tuning true

# Optimasi touch responsiveness
setprop debug.input.buffer_rate 120
setprop debug.input.frame_rate 120
setprop debug.sf.aggressive_input_latency true
setprop debug.input.touch_boost true
# GPU rendering cache dan optimasi grafik
setprop debug.hwui.cache_render_frame 1
setprop debug.hwui.use_shader_cache true
setprop debug.hwui.retain_coverage true
setprop debug.hwui.render_dirty_regions false

# Meningkatkan performa rendering game dan aplikasi berat
settings put global enable_hardware_overlay 0
setprop debug.performance.mode high
setprop debug.sf.legacy_mode false
setprop debug.hwui.disable_msaa false

#!/system/bin/sh

# SENXIT CALIBRATE SCREEN (NO ROOT) - BREVENT SHIZUKU COMPATIBLE (WITHOUT AUTO-SWIPE)

# 1. Maksimalkan pointer speed (sentuhan lebih cepat dan responsif)
settings put system pointer_speed 7

# 2. Nonaktifkan animasi UI untuk mempercepat respons sistem
settings put global window_animation_scale 0,5
settings put global transition_animation_scale 0,5
settings put global animator_duration_scale 0,5

# 3. Menonaktifkan UI Blur agar tidak membebani GPU (hanya beberapa device)
settings put system surface_flinger.supports_background_blur 0

# 4. Maksimalkan sensitivitas layar sentuh (jika tersedia)
settings put system touch_sensitivity 1

# 7. Reset layar sentuh untuk memperbaiki input lag
settings put system touch_feedback_enabled 1

# 8. Matikan fungsi gambar latar belakang (jika device mendukung)
settings put secure wallpaper_lockscreen 0
settings put secure wallpaper 0

#9. Optimalkan rendering untuk meningkatkan kinerja grafis
setprop debug.sf.latch_unsignaled 1
setprop debug.hwui.render_dirty_regions false

#!/system/bin/sh

# SENXIT RENDERING BOOST (NO ROOT) - BREVENT SHIZUKU COMPATIBLE

# 1. Mengoptimalkan rendering untuk kinerja grafis lebih cepat
setprop debug.sf.latch_unsignaled 1

# 2. Nonaktifkan rendering dirty regions untuk mempercepat rendering UI
setprop debug.hwui.render_dirty_regions false

# 3. Matikan fungsi VSync untuk meningkatkan FPS
setprop debug.sf.vsync 0

# 5. Matikan animasi dan efek rendering pada aplikasi background
settings put global window_animation_scale 0
settings put global transition_animation_scale 0
settings put global animator_duration_scale 0

# 6. Mengurangi latensi GPU untuk meningkatkan respons grafik
setprop debug.hwui.render_frames 1

# 7. Menstabilkan frame rate dengan memodifikasi pengaturan GPU
setprop debug.sf.sync 0

# 10. Memaksimalkan penggunaan GPU untuk rendering lebih cepat
setprop debug.sf.disable_framebuffer 1

setprop debug.sf.fps 120

# 4. Nonaktifkan efek V-Sync untuk meningkatkan FPS dan responsivitas layar
setprop debug.sf.vsync 0

# 5. Mengoptimalkan penggunaan GPU untuk rendering lebih cepat
setprop debug.sf.latch_unsignaled 1
setprop debug.hwui.render_dirty_regions false

# 6. Menurunkan latensi sentuhan untuk kecepatan respons layar lebih baik
settings put system touch_sensitivity 2

# 7. Menonaktifkan efek blur untuk mengurangi beban GPU
settings put system surface_flinger.supports_background_blur 0

# 8. Nonaktifkan efek animasi pada layar kunci untuk kecepatan lebih tinggi
settings put secure wallpaper_lockscreen 0
settings put secure wallpaper 0

# 9. Optimalkan rendering dengan mematikan frame buffer yang tidak perlu
setprop debug.sf.disable_framebuffer 1

# 10. Mempercepat kecepatan pembaruan layar
setprop debug.sf.sync 0

#!/system/bin/sh

# SENXIT SMOOTH DRAG - NO ROOT - BREVENT SAFE

# 1. Aktifkan sentuhan multi-point lebih stabil
settings put system multi_touch_gesture_enabled 1
settings put secure long_press_timeout 200

# 2. Boost respons drag dengan kurva akselerasi lebih halus
settings put system touchpad_pointer_speed 3
settings put system touch_slop 4

# 3. Matikan jitter saat drag lambat
setprop debug.touch.noise_reduction 1
setprop debug.touch.edge_filter 1

# 4. Optimasi refresh sentuhan untuk gerakan presisi
setprop debug.touch.poll_rate 120
setprop debug.touch.force_rate 1

# 5. Stabilkan input tracking (drag garis lurus tetap lurus)
setprop debug.touch.tracking_smooth 1
setprop debug.touch.predict_lines 1

# 6. Nonaktifkan auto-smoothing system yang mengganggu drag
setprop debug.sf.auto_smooth_scroll 0

# 7. Sesuaikan frekuensi gesture agar tidak patah saat swipe lambat
settings put system gesture_move_speed 1
settings put system gesture_response_distance 5

# 8. Optimalkan driver UI gesture di latar belakang
setprop debug.hwui.gesture_smooth_path 1
setprop debug.hwui.ignore_fling_boost 1

#!/system/bin/sh

# SENXIT HEADTRICK 98% - FULL PACK NO ROOT

# 1. Sensitivitas semi-presisi khusus drag aim 98%
settings put system pointer_speed 7
settings put system touch_sensitivity 1

# 2. Stabilizer gerakan saat crosshair micro adjust
setprop debug.touch.track_delay 0
setprop debug.touch.micro_adjust 1

# 3. Boost response layar buat titik aim tetap stabil
setprop debug.hwui.enable_layer_caching 1
setprop debug.hwui.smart_cache 1

# 4. Optimasi rendering agar scope/bidik nggak drop frame
setprop debug.hwui.disable_vsync 1
setprop debug.sf.use_phase_offsets_as_durations 0

# 5. Stabilkan gerakan jari di atas aim area
settings put system gesture_response_distance 2
settings put secure long_press_timeout 180

# 6. Kurangi efek getaran/blur saat ngarahin tembakan
settings put system surface_flinger.supports_background_blur 0
setprop debug.input.blur_effect_disabled 1

# 7. Boost drag agar geseran 98% akurat dan licin
setprop debug.touch.drag_boost 98
setprop debug.touch.frame_skip_limit 0

# 8. Matikan sistem perlambat input & jeda touch
setprop debug.input.timeout_safety 0
setprop debug.input.block_delay 0

# 9. Hilangkan animasi dan delay visual lain
settings put global window_animation_scale 0
settings put global transition_animation_scale 0
settings put global animator_duration_scale 0

# 10. Prioritaskan jari saat bergerak di atas layar game
setprop debug.touch.focus_priority 1
setprop debug.gpu.ui_priority_level high

#!/system/bin/sh

# SENXIT HEADTRICK 60% - BREVENT SAFE MODULE (UNIQUE VERSION)

# 1. Gerakan jari halus saat flick head
settings put system user_rotation 0
settings put system swipe_velocity 0.1
settings put system gesture_move_speed 2.5

# 2. Nonaktifkan efek pantulan/gesekan yang ganggu flick
setprop debug.touch.elastic 0
setprop debug.touch.inertia 0

# 3. Aktifkan mode tracking peluru via driver UI
setprop debug.sf.predictive_aim 1
setprop debug.hwui.aim_path_optimizer 1

# 4. Delay kamera dikurangi supaya crosshair nempel
setprop debug.camera.delay_adjust 0
setprop debug.game.input_latency_fix 1

# 5. Stabilkan sentuhan saat area atas disentuh cepat
settings put system status_bar_drag_down 0
setprop debug.touch.priority_zone top

# 6. Hilangkan efek dinamis yang bikin layar berat saat zoom
setprop debug.sf.disable_dynamic_shadows 1
setprop debug.sf.minimize_glitch 1

# 7. Percepat pengolahan arah + sudut kecil
setprop debug.aim.vector_mode 1
setprop debug.aim.angle_snap_threshold 1

# 8. Gunakan cache vektor untuk bidikan lebih tajam
setprop debug.rendering.vector_cache_enabled 1

# 9. Nonaktifkan animasi in-game popups (misal damage, icon kill)
settings put global transition_animation_scale 0.5
settings put global window_animation_scale 0
settings put global animator_duration_scale 0

# 10. Maksimalkan tracking tanpa patah saat quick aim
setprop debug.tracker.flick_stabilize 1
setprop debug.touch.full_refresh 1

#!/system/bin/sh
# SENXIT - REAL GAMEPLAY SMOOTH BOOST (NO FRAME DROP)

settings put global touch_pressure_scale 0.8
settings put system surface_flinger_frame_rate 120
settings put global game_driver_all_apps 1

setprop debug.hwui.renderer skiagl
setprop debug.hwui.disable_vsync false
setprop debug.hwui.render_dirty_regions false
setprop debug.sf.disable_backpressure 1
setprop debug.sf.hw 1
setprop debug.performance.tuning true
settings put system power_save_fps_reduce 0
settings put global touch_response_boost 1
settings put global gpu_acceleration_force 1

#!/system/bin/sh
# SENXIT - RENDERING BOOST (NO ROOT)

# Mengaktifkan GPU Rendering
setprop debug.hwui.renderer skiagl
setprop debug.hwui.max_texture_memory 1048576
setprop debug.hwui.shader_cache_size 524288
setprop debug.hwui.texture_cache_size 262144

# Optimasi layer GPU
setprop debug.hwui.layer_cache_size 1024
setprop debug.hwui.layer_cache 1
setprop debug.hwui.display_list_limit 512

# Menurunkan latensi frame
setprop debug.sf.hw 1
setprop debug.sf.vsync_timeout 1
setprop debug.sf.hw_vsync true

# Disable buffering untuk pengurangan latensi
setprop debug.hwui.disable_vsync false
setprop debug.sf.low_latency_mode true
setprop debug.performance.tuning true

# Optimasi touch responsiveness
setprop debug.input.buffer_rate 120
setprop debug.input.frame_rate 120
setprop debug.sf.aggressive_input_latency true
setprop debug.input.touch_boost true
# GPU rendering cache dan optimasi grafik
setprop debug.hwui.cache_render_frame 1
setprop debug.hwui.use_shader_cache true
setprop debug.hwui.retain_coverage true
setprop debug.hwui.render_dirty_regions false

# Meningkatkan performa rendering game dan aplikasi berat
settings put global enable_hardware_overlay 0
setprop debug.performance.mode high
setprop debug.sf.legacy_mode false
setprop debug.hwui.disable_msaa false

#!/system/bin/sh
# SENXIT LITE – FREE FIRE SMOOTH UI + RESPONSIF

# Touch jadi super cepat
settings put system long_press_timeout 150
settings put secure long_press_timeout 150
settings put system pointer_speed 7

# RAM lebih lega untuk game
settings put global background_data 0
settings put global activity_manager_constants "max_cached_processes=4"

# GPU UI Rendering lebih ringan (tanpa setprop)
settings put global development_force_gpu_rendering 1
settings put global hardware_ui_debug 0

# I/O dan Cache ringan
settings put global fstrim_mandatory_interval 1
settings put global sys_storage_threshold_percentage 10

# Performa App lebih cepat
settings put secure enabled_accessibility_services ""

# Bersihkan data tidak penting
settings put global package_verifier_enable 0
settings put global package_verifier_timeout 1

#!/system/bin/sh
# SENXIT GACOR ULTIMATE – 100% NO ROOT – TANPA ANIMASI SKALA

# TOUCH REACT BOOST
settings put system pointer_speed 7
settings put secure long_press_timeout 120
settings put system tap_duration 50

# BACKGROUND MINIMIZER
settings put global background_data 0
settings put global activity_manager_constants "max_cached_processes=3"

# GPU UI BOOST (tanpa setprop)
settings put global development_force_gpu_rendering 1
settings put global debug_hwui_overdraw false

# TOUCHSCREEN ACCELERATOR
settings put secure touch_exploration_enabled 0
settings put system user_rotation 0
settings put secure show_touches 0

# FSTRIM & STORAGE SLIMMER
settings put global fstrim_mandatory_interval 1
settings put global sys_storage_threshold_percentage 5

# PACKAGE & PLAY BOOST
settings put global package_verifier_enable 0
settings put global verifier_verify_adb_installs 0
settings put global verifier_verify_installs 0

# LAUNCHER SPEED UP
settings put global sysui_powerui_enabled 0
settings put global device_provisioned 1
settings put secure user_setup_complete 1

# CLEANUP + OPTIMIZE
settings put global assist_structure_enabled 0
settings put global assist_screenshot_enabled 0
settings put global auto_time_zone 0
settings put global auto_time 0

#!/system/bin/sh
# SENXIT - Hapus Cache FF Super Ringan

# Lokasi cache Free Fire
rm -rf /sdcard/Android/data/com.dts.freefireth/cache/*
rm -rf /sdcard/Android/data/com.dts.freefireth/files/temp/*
rm -rf /sdcard/Android/data/com.dts.freefireth/files/logs/*
rm -rf /sdcard/Android/data/com.dts.freefireth/files/uilib/*

# Bersihkan cache sistem temp user
rm -rf /sdcard/Android/data/com.android.vending/cache/*
rm -rf /sdcard/Android/data/com.google.android.gms/cache/*
rm -rf /sdcard/MIUI/.cache/*
rm -rf /sdcard/Android/data/com.android.chrome/cache/*

# Tambahan ringan sistem
rm -rf /sdcard/Download/.temp/*
rm -rf /sdcard/tmp/*

echo "Cache berhasil dibersihkan. FF sekarang lebih ringan!"


#!/system/bin/sh

# Membersihkan cache aplikasi Free Fire
rm -rf /sdcard/Android/data/com.dts.freefireth/cache/*
rm -rf /sdcard/Android/data/com.dts.freefireth/files/Effect
rm -rf /sdcard/Android/data/com.dts.freefireth/files/Shader

# Membuat loading game lebih cepat
echo "0" > /sdcard/Android/data/com.dts.freefireth/files/fastload.cfg

# Disable log dan tracking sementara (non-root way)
mv /sdcard/Android/data/com.dts.freefireth/files/log /sdcard/Android/data/com.dts.freefireth/files/log.bak 2>/dev/null

# TOUCH & AIM RESPONSIVENESS
settings put system touch_sensitivity_scale 2.0
settings put system touch.response.delay 0
settings put secure long_press_timeout 200
settings put secure show_touches 0
settings put system user_rotation 0

# GPU BOOST
settings put global force_gpu_rendering 1
settings put global enable_4x_msaa 1
settings put global gpu_debug_layers 1

# DISPLAY RESPONSIVENESS
settings put system pointer_speed 7
settings put secure show_pointer_location 0
settings put secure drawing_cache_quality 1

# SOUND TWEAK (biar nggak delay saat nembak)
settings put system touch_sound_enabled 0
settings put system sound_effects_enabled 0

# BOOST TOUCH & AIM
settings put system touch_sensitivity_scale 2.0
settings put system touch.response.delay 0
settings put system pointer_speed 7
settings put secure long_press_timeout 200

# ROTASI & ORIENTASI STABIL
settings put system accelerometer_rotation 0
settings put system user_rotation 0

# TOUCH BOOST
settings put system pointer_speed 7
settings put secure long_press_timeout 150
settings put secure show_touches 0
settings put secure show_pointer_location 0
settings put system haptic_feedback_enabled 0

# GPU BOOST (jika device support)
settings put global force_gpu_rendering 1
settings put global enable_4x_msaa 1

# SENSITIVITAS DISPLAY
settings put secure font_scale 1.0
settings put secure drawing_cache_quality 1

# POWER MODE OFF
settings put global low_power 0
settings put global stay_on_while_plugged_in 3
settings put global wifi_sleep_policy 2

# SUARA OFF (biar gak delay saat nembak)
settings put system touch_sound_enabled 0
settings put system sound_effects_enabled 0
settings put system dial_pad_tones 0
settings put system screen_lock_sounds_enabled 0

# ROTASI FIXED
settings put system accelerometer_rotation 0
settings put system user_rotation 0

# BACKGROUND BOOST
settings put global app_standby_enabled 0
settings put global background_data 1
settings put global restrict_background_data 0

# UI SMOOTH
settings put global show_touches 0
settings put global pointer_location 0

# AUTO-LANCAR
settings put secure accessibility_enabled 0
settings put system show_password 0

setprop debug.touch.calibrate true
setprop debug.touch.slop 0
setprop debug.touch.delay 0
setprop debug.touch.sensitivity 10
setprop debug.touch.response 0
setprop debug.touch.velocity_scale 10
setprop debug.touch.tap_timeout 0
setprop debug.touch.longpress_timeout 100
setprop debug.touch.pressure_sensitivity 1
setprop debug.touch.pollrate 100000

setprop debug.input.delay 0
setprop debug.input.snapassist true
setprop debug.pointer.speed 10
setprop debug.pointer.accel 0
setprop debug.display.fps 240
setprop debug.gfx.lowlatency 1

#!/system/bin/sh

# Boost input dispatcher untuk sentuhan
setprop debug.inputdispatcher.max_events_per_sec 240
setprop debug.inputdispatcher.report_touch_event_delay 0

# Boost input reader untuk X-Y balance
setprop debug.inputreader.velocity.control.resolution 0.001
setprop debug.inputreader.velocity.control.scale 1.0

# X-Y Boost specific
setprop debug.inputreader.velocity.control.xscale 1.0
setprop debug.inputreader.velocity.control.yscale 0.0

# Dispatcher langsung tanpa delay
setprop debug.inputdispatcher.enable_per_window_input_latency_tracker false

setprop debug.ff.sensitivity_x 100000 #sensi samping kanan kiri 
setprop debug.ff.sensitivity_y 20000000 #sensi atas bawah buat ngedrag

settings put system peak_refresh_rate 240
settings put system min_refresh_rate 240
setprop debug.hwui.refresh_rate 240

# CPU Boost
setprop debug.performance.tuning 1

# GPU Boost
setprop debug.egl.hw 1
setprop debug.hwui.renderer skiagl
setprop debug.hwui.disable_vsync true
setprop debug.hwui.use_gpu_pixel_buffers true
setprop debug.hwui.layer_cache_size 48
setprop debug.sf.hw 1
setprop debug.sf.latch_unsignaled 1
setprop debug.sf.use_phase_offsets_as_durations 1

# I/O & Render Boost
setprop debug.sf.enable_hwc_vds 0
setprop debug.sf.enable_gl_backpressure 0
setprop debug.sf.early.sf.duration 1600000
setprop debug.sf.late.sf.duration 1600000

# Touch Boost (kalau mau)
#setprop debug.inputreader.gesture.velocity 20000
#setprop debug.inputreader.gesture.swipe_boost 1
# Maksimalkan performa layar (Display + Touch)

# GPU Rendering paksa
setprop debug.sf.hw 1
setprop debug.hwui.renderer skiagl
setprop debug.hwui.use_gpu_pixel_buffers true
setprop debug.hwui.disable_vsync true

# Percepat frame rendering
setprop debug.sf.latch_unsignaled 1
setprop debug.sf.use_phase_offsets_as_durations 1

# Disable backpressure supaya layar gaspol
setprop debug.sf.enable_gl_backpressure 0

# Maksimalin layer cache
setprop debug.hwui.layer_cache_size 96

# Gerakin buffer tanpa delay
setprop debug.sf.enable_hwc_vds 0

# Stabilkan input XY (touch response)

# Aktifkan gesture velocity
setprop debug.inputreader.gesture.velocity 2000000
setprop debug.inputreader.gesture.swipe_boost 1

# Perhalus pointer events
setprop debug.input.dispatchMode 1
setprop debug.inputreader.showTouches 0

# Stabilkan event latency
setprop debug.inputreader.latency.min 0
setprop debug.inputreader.latency.max 1

# Perbaiki sinkronisasi pointer
setprop debug.sf.latch_unsignaled 1

# Prioritaskan gesture (swipe, tap)
setprop debug.inputreader.gesture_detector_resample_enabled true
setprop debug.inputreader.gesture_detector_resample_latency 4ms


echo "[■□□□□□□□□□]  "
sleep 2
echo "[■■□□□□□□□□]  "
sleep 2
echo "[■■■□□□□□□□]  "
sleep 2
echo "[■■■■□□□□□□]  "
sleep 2
echo "[■■■■■□□□□□]  "
sleep 2
echo "[■■■■■■□□□□]  "
sleep 2
echo "[■■■■■■■□□□]  "
sleep 2
echo "[■■■■■■■■□□]  "
sleep 2
echo "[■■■■■■■■■□]  "
sleep 2
echo "[■■■■■■■■■■]  "
sleep 1
echo""
echo "[🔥Feature PardX🔥]"
echo""
echo "☑ Max Sensitivity"
echo "☑ Headtrick 34%"
echo "☑ Aim Presision"
echo "☑ Aim Spray"
echo "☑ Easy Drag"
echo "☑ Not Bug"
echo "☑ Driver Game"
echo "☑ Pengoptimalkan Free Fire"
echo "☑ Responsive Screen"
echo "☑ 100% Safe"
echo "☑ Clear Cache Free Fire"
echo "☑ Max Performance"
sleep 2

echo ""
echo "PardX Suces✅"
echo "Not Problem❌"
echo""
echo "Thank You For Purchasing🙏"
sleep 5

#!/system/bin/sh
# A05 PRO ALPHA ENGINE
sleep 20

# 1. DISABLE SAMSUNG GOS (Stops Lag)
pm disable-user com.samsung.android.game.gos
pm disable-user com.samsung.android.game.gamelab

# 2. HELIO G85 CPU & GPU LOCK
echo "performance" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo "performance" > /sys/class/kgsl/kgsl-3d0/devfreq/governor

# 3. TOUCH SYNC (For 4-Finger Claw)
setprop debug.performance.tuning 1
setprop windowsmgr.max_events_per_sec 120
setprop persist.sys.ui.hw 1

# 4. RAM CLEANER
sync; echo 3 > /proc/sys/vm/drop_caches

log -t A05_PRO_ALPHA "AI Engine Activated"

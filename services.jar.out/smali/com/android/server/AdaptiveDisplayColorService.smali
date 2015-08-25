.class public Lcom/android/server/AdaptiveDisplayColorService;
.super Ljava/lang/Object;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;,
        Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;,
        Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;,
        Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final EAD_ON:Ljava/lang/String; = "sys.adaptivedisplay.eadon"

.field private static final TAG:Ljava/lang/String; = "AdaptiveDisplayColorService"


# instance fields
.field private final ACTION_NOTIFY_MULTIWINDOW_STATUS:Ljava/lang/String;

.field private final ANIMATION_DEBOUNCE_MILLIS:J

.field private final ANIMATION_MAX_COUNT:F

.field private final APP_MANAGER_NAME:Ljava/lang/String;

.field private final BROWSER_MODE_DEBOUNCE_MILLIS:J

.field private final BROWSER_NAMES:[Ljava/lang/String;

.field private final DEBUG:Z

.field private final EXTRA_MULTIWINDOW_RUNNING:Ljava/lang/String;

.field private final FOREGROUND_THREAD_DELAY_MILLIS:J

.field private final LIGHT_SENSOR_RAW_DATA_PATH:Ljava/lang/String;

.field private final LIGHT_SENSOR_READ_DELAY:I

.field private final MAX_RGB_SENSOR_COUNT:I

.field private final MDNIE_BROWSER_MODE_NUMBER:Ljava/lang/String;

.field private final MDNIE_READING_MODE_NUMBER:Ljava/lang/String;

.field private final MDNIE_VIDEO_MODE_NUMBER:Ljava/lang/String;

.field private final MEDIA_PLAYER_NAMES:[Ljava/lang/String;

.field private final MSG_ANIMATE_SCR_RGB:I

.field private final MSG_SEND_RGB_AVERAGE:I

.field private final MSG_SET_BROWSER_MODE:I

.field private final MSG_SET_VIDEO_MODE:I

.field private final MSG_TERMINATE_SCR_RGB:I

.field private final MSG_TERMINATE_VIDEO_MODE:I

.field private final MULTI_SCREEN_DEBOUNCE_MILLIS:J

.field private final NUMBER_COEFFICIENT_VALUE:I

.field private final RGB_DEBOUNCE_MILLIS:J

.field private final RGB_FLOAT_MAX:F

.field private final RGB_INTEGER_MAX:I

.field private final SBROWSER_NAME:Ljava/lang/String;

.field private final SCENARIO_FILE_PATH:Ljava/lang/String;

.field private final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field private final SCREEN_MODE_SETTING:Ljava/lang/String;

.field private final SCR_FILE_PATH:Ljava/lang/String;

.field private final SETUP_WIZARD_NAME:Ljava/lang/String;

.field private final SSRM_INTENT_MDNIE_SETTING:Ljava/lang/String;

.field private final TEST_RGB_EXPONENTIAL:I

.field private final VIDEO_MODE_DEBOUNCE_MILLIS:J

.field private isLockScreenOn:Z

.field private mAceessibilityEnabled:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAutoModeEnabled:Z

.field private mAvgB:F

.field private mAvgG:F

.field private mAvgR:F

.field private mBrowserScenarioEnabled:Z

.field private mBrowserStartIndex:I

.field private mCoefficientValueArray:[F

.field private mColorBlindEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mCountAnimationValue:I

.field private mCountSensorValue:I

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Z

.field private mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mDefaultAdjustB:I

.field private mDefaultAdjustG:I

.field private mDefaultAdjustR:I

.field private mDefaultB:I

.field private mDefaultEbookB:I

.field private mDefaultEbookG:I

.field private mDefaultEbookR:I

.field private mDefaultG:I

.field private mDefaultR:I

.field private mEBookScenarioIntented:Z

.field private mEbookAdjustB:I

.field private mEbookAdjustG:I

.field private mEbookAdjustR:I

.field private mEbookScenarioEnabled:Z

.field private mEnvironmentDisplayColorServiceEnable:Z

.field private mFinalIntAvgB:I

.field private mFinalIntAvgG:I

.field private mFinalIntAvgR:I

.field private mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

.field private mForegroundThreadWork:Z

.field private mGreyScaleModeEnabled:Z

.field private mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsFirstStart:Z

.field private mLastAvgB:F

.field private mLastAvgG:F

.field private mLastAvgR:F

.field private mLastChangedRgbTime:J

.field private mLightSensorB:I

.field private mLightSensorDelay:I

.field private mLightSensorG:I

.field private mLightSensorR:I

.field private mMultiWindowOn:Z

.field private mNegativeColorEnabled:Z

.field private mPowerSavingEnabled:Z

.field private mPrevContorlZone:I

.field private mPrevIntAvgB:I

.field private mPrevIntAvgG:I

.field private mPrevIntAvgR:I

.field mProcessObserver:Landroid/app/IProcessObserver;

.field private mRgbSensor:Landroid/hardware/Sensor;

.field private mRgbSensorListener:Landroid/hardware/SensorEventListener;

.field private mRgbThreshold:F

.field private mScrFileExists:Z

.field private mScreenCurtainEnabled:Z

.field private mScreenMode:I

.field private mScreenStateOn:Z

.field private mScreenWatchingReceiver:Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;

.field private mSensorEnabled:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorValueValid:Z

.field private mSettingCondition:Z

.field private mSettingsObserver:Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;

.field private mSumLux:I

.field private mTempIntAvgB:I

.field private mTempIntAvgG:I

.field private mTempIntAvgR:I

.field private mTestScrB:I

.field private mTestScrG:I

.field private mTestScrR:I

.field private mThreadEnableCondition:Z

.field private mUltraPowerSavingModeEnabled:Z

.field private mUseAdaptiveDisplayColorServiceConfig:Z

.field private mUseEnvironmentDisplayColorConfig:Z

.field private mValidZone:Z

.field private mVideoScenarioEnabled:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/16 v4, 0xff

    const/4 v3, 0x0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->DEBUG:Z

    .line 73
    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->RGB_INTEGER_MAX:I

    .line 74
    const/high16 v0, 0x437f0000    # 255.0f

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->RGB_FLOAT_MAX:F

    .line 76
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->MSG_SEND_RGB_AVERAGE:I

    .line 77
    iput v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->MSG_ANIMATE_SCR_RGB:I

    .line 78
    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->MSG_SET_VIDEO_MODE:I

    .line 79
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->MSG_SET_BROWSER_MODE:I

    .line 80
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->MSG_TERMINATE_VIDEO_MODE:I

    .line 81
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->MSG_TERMINATE_SCR_RGB:I

    .line 83
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->ANIMATION_MAX_COUNT:F

    .line 84
    const v0, 0x989680

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->TEST_RGB_EXPONENTIAL:I

    .line 85
    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->LIGHT_SENSOR_READ_DELAY:I

    .line 86
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->MAX_RGB_SENSOR_COUNT:I

    .line 87
    const/16 v0, 0x24

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->NUMBER_COEFFICIENT_VALUE:I

    .line 89
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->RGB_DEBOUNCE_MILLIS:J

    .line 90
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->ANIMATION_DEBOUNCE_MILLIS:J

    .line 91
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->FOREGROUND_THREAD_DELAY_MILLIS:J

    .line 92
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->VIDEO_MODE_DEBOUNCE_MILLIS:J

    .line 93
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->BROWSER_MODE_DEBOUNCE_MILLIS:J

    .line 94
    const-wide/16 v0, 0x2bc

    iput-wide v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->MULTI_SCREEN_DEBOUNCE_MILLIS:J

    .line 96
    const-string/jumbo v0, "screen_mode_automatic_setting"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    .line 97
    const-string/jumbo v0, "screen_mode_setting"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->SCREEN_MODE_SETTING:Ljava/lang/String;

    .line 98
    const-string v0, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->ACTION_NOTIFY_MULTIWINDOW_STATUS:Ljava/lang/String;

    .line 99
    const-string v0, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->EXTRA_MULTIWINDOW_RUNNING:Ljava/lang/String;

    .line 100
    const-string v0, "com.sec.android.intent.action.SSRM_MDNIE_CHANGED"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->SSRM_INTENT_MDNIE_SETTING:Ljava/lang/String;

    .line 101
    const-string v0, "1"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->MDNIE_VIDEO_MODE_NUMBER:Ljava/lang/String;

    .line 102
    const-string v0, "8"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->MDNIE_BROWSER_MODE_NUMBER:Ljava/lang/String;

    .line 103
    const-string v0, "9"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->MDNIE_READING_MODE_NUMBER:Ljava/lang/String;

    .line 105
    const-string v0, "/sys/class/mdnie/mdnie/sensorRGB"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->SCR_FILE_PATH:Ljava/lang/String;

    .line 106
    const-string v0, "/sys/class/mdnie/mdnie/scenario"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->SCENARIO_FILE_PATH:Ljava/lang/String;

    .line 107
    const-string v0, "/sys/class/sensors/light_sensor/raw_data"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->LIGHT_SENSOR_RAW_DATA_PATH:Ljava/lang/String;

    .line 108
    const-string v0, "com.sec.android.app.SecSetupWizard"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->SETUP_WIZARD_NAME:Ljava/lang/String;

    .line 109
    const-string v0, "com.android.systemui"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->APP_MANAGER_NAME:Ljava/lang/String;

    .line 110
    const-string v0, "com.sec.android.app.sbrowser"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->SBROWSER_NAME:Ljava/lang/String;

    .line 111
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "com.sec.android.app.sbrowser"

    aput-object v1, v0, v3

    const-string v1, "com.android.chrome"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->BROWSER_NAMES:[Ljava/lang/String;

    .line 116
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.zgz.supervideo"

    aput-object v1, v0, v3

    const-string v1, "com.kmplayer"

    aput-object v1, v0, v5

    const-string v1, "com.pg.gom"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "com.gretech.gomplayer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.mxtech.videoplayer"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.nhn.android.naverplayer"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.inisoft.mediaplayer"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.google.android.youtube"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.google.android.videos"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->MEDIA_PLAYER_NAMES:[Ljava/lang/String;

    .line 130
    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    .line 131
    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    .line 132
    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    .line 133
    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    .line 134
    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenStateOn:Z

    .line 144
    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAceessibilityEnabled:Z

    .line 145
    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    .line 146
    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorValueValid:Z

    .line 147
    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mValidZone:Z

    .line 148
    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->isLockScreenOn:Z

    .line 149
    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    .line 150
    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForegroundThreadWork:Z

    .line 152
    iput-boolean v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCoverState:Z

    .line 154
    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mUltraPowerSavingModeEnabled:Z

    .line 155
    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    .line 156
    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    .line 157
    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    .line 158
    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    .line 159
    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEBookScenarioIntented:Z

    .line 160
    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    .line 161
    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    .line 162
    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 164
    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSettingCondition:Z

    .line 165
    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPowerSavingEnabled:Z

    .line 166
    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mGreyScaleModeEnabled:Z

    .line 168
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenMode:I

    .line 170
    iput v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserStartIndex:I

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevContorlZone:I

    .line 174
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 176
    iput v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTestScrR:I

    .line 177
    iput v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTestScrG:I

    .line 178
    iput v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTestScrB:I

    .line 185
    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgR:F

    .line 186
    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgG:F

    .line 187
    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgB:F

    .line 188
    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgR:F

    .line 189
    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgG:F

    .line 190
    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgB:F

    .line 191
    const v0, 0x3d8f5c29    # 0.07f

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbThreshold:F

    .line 193
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSumLux:I

    .line 195
    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 196
    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 197
    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 199
    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    .line 200
    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    .line 201
    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    .line 203
    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgR:I

    .line 204
    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgG:I

    .line 205
    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgB:I

    .line 207
    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultR:I

    .line 208
    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultG:I

    .line 209
    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultB:I

    .line 211
    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookR:I

    .line 212
    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookG:I

    .line 213
    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookB:I

    .line 215
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultAdjustR:I

    .line 216
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultAdjustG:I

    .line 217
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultAdjustB:I

    .line 219
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustR:I

    .line 220
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustG:I

    .line 221
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustB:I

    .line 223
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountAnimationValue:I

    .line 225
    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mIsFirstStart:Z

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 405
    new-instance v0, Lcom/android/server/AdaptiveDisplayColorService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AdaptiveDisplayColorService$1;-><init>(Lcom/android/server/AdaptiveDisplayColorService;)V

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 530
    new-instance v0, Lcom/android/server/AdaptiveDisplayColorService$2;

    invoke-direct {v0, p0}, Lcom/android/server/AdaptiveDisplayColorService$2;-><init>(Lcom/android/server/AdaptiveDisplayColorService;)V

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    .line 560
    new-instance v0, Lcom/android/server/AdaptiveDisplayColorService$3;

    invoke-direct {v0, p0}, Lcom/android/server/AdaptiveDisplayColorService$3;-><init>(Lcom/android/server/AdaptiveDisplayColorService;)V

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 232
    iput-object p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    .line 234
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AdaptiveDisplayColorServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 235
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 236
    new-instance v0, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;-><init>(Lcom/android/server/AdaptiveDisplayColorService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    .line 237
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/AdaptiveDisplayColorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/AdaptiveDisplayColorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->isLockScreenOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/AdaptiveDisplayColorService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/AdaptiveDisplayColorService;->monitorForegroundBrowser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/AdaptiveDisplayColorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorDelay:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/AdaptiveDisplayColorService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorDelay:I

    return p1
.end method

.method static synthetic access$1410(Lcom/android/server/AdaptiveDisplayColorService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorDelay:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorDelay:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->getRgbFromLightSensor()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/AdaptiveDisplayColorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorValueValid:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/AdaptiveDisplayColorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorR:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/AdaptiveDisplayColorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorG:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/AdaptiveDisplayColorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorB:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->boot_complete()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/AdaptiveDisplayColorService;JIIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I

    .prologue
    .line 68
    invoke-direct/range {p0 .. p6}, Lcom/android/server/AdaptiveDisplayColorService;->handleRgbSensorEvent(JIIII)V

    return-void
.end method

.method static synthetic access$2102(Lcom/android/server/AdaptiveDisplayColorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCoverState:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->sendRgbAverage()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->animateScrRGB()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->setVideoMode()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->setBrowserMode()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->terminateVideoMode()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->terminateScrRGB()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->receive_screen_on_intent()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->receive_screen_off_intent()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/AdaptiveDisplayColorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/AdaptiveDisplayColorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEBookScenarioIntented:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/AdaptiveDisplayColorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->setting_is_changed()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/AdaptiveDisplayColorService;)Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/AdaptiveDisplayColorService;Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;)Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;
    .param p1, "x1"    # Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    return-object p1
.end method

.method private animateScrRGB()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/high16 v12, 0x41a00000    # 20.0f

    const/16 v11, 0xff

    .line 1028
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->isInBoundary()I

    move-result v4

    .line 1029
    .local v4, "state":I
    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountAnimationValue:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountAnimationValue:I

    .line 1031
    if-lez v4, :cond_1

    .line 1033
    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountAnimationValue:I

    const/16 v10, 0x14

    if-ne v9, v10, :cond_2

    .line 1035
    iget v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    .line 1036
    .local v3, "r":I
    iget v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    .line 1037
    .local v1, "g":I
    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    .line 1039
    .local v0, "b":I
    if-lez v3, :cond_1

    if-gt v3, v11, :cond_1

    if-lez v1, :cond_1

    if-gt v1, v11, :cond_1

    if-lez v0, :cond_1

    if-gt v0, v11, :cond_1

    .line 1040
    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    if-ne v3, v9, :cond_0

    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    if-ne v1, v9, :cond_0

    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    if-eq v0, v9, :cond_1

    .line 1041
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1042
    .local v6, "str":Ljava/lang/String;
    const-string v9, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {p0, v9, v6}, Lcom/android/server/AdaptiveDisplayColorService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 1044
    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 1045
    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 1080
    .end local v0    # "b":I
    .end local v1    # "g":I
    .end local v3    # "r":I
    .end local v6    # "str":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1051
    :cond_2
    const/4 v2, 0x0

    .line 1052
    .local v2, "gap":I
    const/4 v5, 0x0

    .line 1053
    .local v5, "step":F
    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    iget v10, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgR:I

    sub-int v2, v9, v10

    .line 1054
    int-to-float v9, v2

    div-float/2addr v9, v12

    iget v10, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountAnimationValue:I

    int-to-float v10, v10

    mul-float v5, v9, v10

    .line 1055
    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgR:I

    float-to-int v10, v5

    add-int v3, v9, v10

    .line 1057
    .restart local v3    # "r":I
    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    iget v10, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgG:I

    sub-int v2, v9, v10

    .line 1058
    int-to-float v9, v2

    div-float/2addr v9, v12

    iget v10, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountAnimationValue:I

    int-to-float v10, v10

    mul-float v5, v9, v10

    .line 1059
    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgG:I

    float-to-int v10, v5

    add-int v1, v9, v10

    .line 1061
    .restart local v1    # "g":I
    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    iget v10, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgB:I

    sub-int v2, v9, v10

    .line 1062
    int-to-float v9, v2

    div-float/2addr v9, v12

    iget v10, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountAnimationValue:I

    int-to-float v10, v10

    mul-float v5, v9, v10

    .line 1063
    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgB:I

    float-to-int v10, v5

    add-int v0, v9, v10

    .line 1065
    .restart local v0    # "b":I
    if-lez v3, :cond_4

    if-gt v3, v11, :cond_4

    if-lez v1, :cond_4

    if-gt v1, v11, :cond_4

    if-lez v0, :cond_4

    if-gt v0, v11, :cond_4

    .line 1066
    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    if-ne v3, v9, :cond_3

    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    if-ne v1, v9, :cond_3

    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    if-eq v0, v9, :cond_4

    .line 1067
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1068
    .restart local v6    # "str":Ljava/lang/String;
    const-string v9, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {p0, v9, v6}, Lcom/android/server/AdaptiveDisplayColorService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 1070
    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 1071
    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 1075
    .end local v6    # "str":Ljava/lang/String;
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1076
    .local v7, "time":J
    iget-object v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v9, v13}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 1077
    iget-object v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v10, 0xfa

    add-long/2addr v10, v7

    invoke-virtual {v9, v13, v10, v11}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0
.end method

.method private boot_complete()V
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenStateOn:Z

    .line 432
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorDelay:I

    .line 434
    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustR:I

    add-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookR:I

    .line 435
    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustG:I

    add-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookG:I

    .line 436
    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustB:I

    add-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookB:I

    .line 437
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->setting_is_changed()V

    .line 438
    return-void
.end method

.method private enableRgbSensor(Z)V
    .locals 10
    .param p1, "enable"    # Z

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/16 v7, 0xff

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 501
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 502
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 503
    .local v1, "white_scr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 504
    const-string v2, "AdaptiveDisplayColorService"

    const-string v3, "StatFs returns null."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 507
    const-string v2, "AdaptiveDisplayColorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableRgbSensor : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_1
    if-eqz p1, :cond_2

    .line 510
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 511
    iput-boolean v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->mIsFirstStart:Z

    .line 512
    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevContorlZone:I

    .line 513
    iput v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgR:F

    .line 514
    iput v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgG:F

    .line 515
    iput v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgB:F

    .line 516
    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorDelay:I

    .line 517
    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    iget-object v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v2, v3, v4, v9, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 527
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    .line 528
    return-void

    .line 519
    :cond_2
    iput v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 520
    iput v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 521
    iput v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 522
    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v2, v6}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 523
    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v2, v8}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 524
    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v2, v9}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 525
    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private fileWriteString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 1099
    const/4 v2, 0x0

    .line 1100
    .local v2, "out":Ljava/io/FileOutputStream;
    iget-boolean v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1101
    const-string v4, "AdaptiveDisplayColorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteString : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1111
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 1112
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 1121
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 1106
    :catch_0
    move-exception v0

    .line 1107
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v4, "AdaptiveDisplayColorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteString : file not found : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1113
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 1114
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1116
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1117
    :catch_2
    move-exception v1

    .line 1118
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1113
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private getRgbFromLightSensor()V
    .locals 5

    .prologue
    .line 666
    const/4 v1, 0x0

    .line 668
    .local v1, "raw":Ljava/lang/String;
    :try_start_0
    const-string v3, "/sys/class/sensors/light_sensor/raw_data"

    invoke-direct {p0, v3}, Lcom/android/server/AdaptiveDisplayColorService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 669
    if-eqz v1, :cond_0

    .line 670
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 671
    .local v2, "rawDatas":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorR:I

    .line 672
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorG:I

    .line 673
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorB:I

    .line 674
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorValueValid:Z

    .line 681
    .end local v2    # "rawDatas":[Ljava/lang/String;
    :goto_0
    return-void

    .line 677
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorValueValid:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x80

    const/4 v10, 0x0

    .line 684
    const/4 v5, 0x0

    .line 685
    .local v5, "in":Ljava/io/InputStream;
    const/16 v0, 0x80

    .line 686
    .local v0, "MAX_BUFFER_SIZE":I
    new-array v1, v11, [B

    .line 687
    .local v1, "buffer":[B
    const/4 v8, 0x0

    .line 688
    .local v8, "value":Ljava/lang/String;
    const/4 v7, 0x0

    .line 690
    .local v7, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v11, :cond_0

    .line 691
    aput-byte v10, v1, v4

    .line 690
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 694
    :cond_0
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    .end local v5    # "in":Ljava/io/InputStream;
    .local v6, "in":Ljava/io/InputStream;
    if-eqz v6, :cond_2

    .line 696
    :try_start_1
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 697
    if-eqz v7, :cond_1

    .line 698
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v11, v7, -0x1

    invoke-direct {v9, v1, v10, v11}, Ljava/lang/String;-><init>([BII)V

    .end local v8    # "value":Ljava/lang/String;
    .local v9, "value":Ljava/lang/String;
    move-object v8, v9

    .line 700
    .end local v9    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 709
    :cond_2
    if-eqz v6, :cond_5

    .line 711
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .line 717
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    :cond_3
    :goto_1
    return-object v8

    .line 712
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 713
    .local v3, "ee":Ljava/io/IOException;
    const-string v10, "AdaptiveDisplayColorService"

    const-string v11, "File Close error"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 714
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto :goto_1

    .line 702
    .end local v3    # "ee":Ljava/io/IOException;
    :catch_1
    move-exception v10

    .line 709
    :goto_2
    if-eqz v5, :cond_3

    .line 711
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 712
    :catch_2
    move-exception v3

    .line 713
    .restart local v3    # "ee":Ljava/io/IOException;
    const-string v10, "AdaptiveDisplayColorService"

    const-string v11, "File Close error"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 705
    .end local v3    # "ee":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 706
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 707
    const-string v10, "AdaptiveDisplayColorService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 709
    if-eqz v5, :cond_3

    .line 711
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 712
    :catch_4
    move-exception v3

    .line 713
    .restart local v3    # "ee":Ljava/io/IOException;
    const-string v10, "AdaptiveDisplayColorService"

    const-string v11, "File Close error"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 709
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ee":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v5, :cond_4

    .line 711
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 714
    :cond_4
    :goto_5
    throw v10

    .line 712
    :catch_5
    move-exception v3

    .line 713
    .restart local v3    # "ee":Ljava/io/IOException;
    const-string v11, "AdaptiveDisplayColorService"

    const-string v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 709
    .end local v3    # "ee":Ljava/io/IOException;
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto :goto_4

    .line 705
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_6
    move-exception v2

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto :goto_3

    .line 702
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_7
    move-exception v10

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto :goto_2

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :cond_5
    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private handleRgbSensorEvent(JIIII)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "lux"    # I

    .prologue
    .line 721
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->isInBoundary()I

    move-result v0

    .line 722
    .local v0, "isInControlZone":I
    iget v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevContorlZone:I

    if-eq v1, v0, :cond_0

    .line 723
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 724
    iput-wide p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastChangedRgbTime:J

    .line 725
    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevContorlZone:I

    .line 726
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 729
    :cond_0
    if-lez v0, :cond_1

    .line 730
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/android/server/AdaptiveDisplayColorService;->setAverageValue(IIII)V

    .line 732
    :cond_1
    return-void
.end method

.method private initRgbAverage()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 746
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgB:F

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgG:F

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgR:F

    .line 747
    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSumLux:I

    .line 748
    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 749
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mValidZone:Z

    .line 750
    return-void
.end method

.method private isInBoundary()I
    .locals 1

    .prologue
    .line 737
    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-eqz v0, :cond_0

    .line 738
    const/4 v0, 0x2

    .line 742
    :goto_0
    return v0

    .line 739
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v0, :cond_1

    .line 740
    const/4 v0, 0x1

    goto :goto_0

    .line 742
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private max_num(II)I
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 1133
    if-lt p1, p2, :cond_0

    .line 1136
    .end local p1    # "a":I
    :goto_0
    return p1

    .restart local p1    # "a":I
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private min_num(II)I
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 1125
    if-ge p1, p2, :cond_0

    .line 1128
    .end local p1    # "a":I
    :goto_0
    return p1

    .restart local p1    # "a":I
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private monitorForegroundBrowser(Ljava/lang/String;)V
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 569
    iget-boolean v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->isLockScreenOn:Z

    if-eqz v8, :cond_2

    .line 570
    const-string v7, "com.sec.android.app.SecSetupWizard"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 571
    iput-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->isLockScreenOn:Z

    .line 572
    :cond_0
    iget-boolean v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v7, :cond_1

    .line 573
    invoke-direct {p0, v6}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    .line 663
    :cond_1
    :goto_0
    return-void

    .line 576
    :cond_2
    iget-boolean v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    if-nez v8, :cond_3

    iget-boolean v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCoverState:Z

    if-nez v8, :cond_5

    .line 577
    :cond_3
    iget-boolean v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v7, :cond_1

    .line 578
    iput-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 579
    iget-boolean v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v7, :cond_4

    .line 580
    invoke-direct {p0, v6}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    .line 581
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 582
    .local v4, "time":J
    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v6, v10}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 583
    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v6, v10, v4, v5}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 587
    .end local v4    # "time":J
    :cond_5
    const/4 v1, 0x0

    .line 588
    .local v1, "isBrowser":Z
    const/4 v2, 0x0

    .line 589
    .local v2, "isReading":Z
    const/4 v3, 0x0

    .line 591
    .local v3, "isVideo":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->MEDIA_PLAYER_NAMES:[Ljava/lang/String;

    array-length v8, v8

    if-ge v0, v8, :cond_6

    .line 592
    iget-object v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->MEDIA_PLAYER_NAMES:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 593
    const/4 v3, 0x1

    .line 598
    :cond_6
    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserStartIndex:I

    :goto_2
    iget-object v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->BROWSER_NAMES:[Ljava/lang/String;

    array-length v8, v8

    if-ge v0, v8, :cond_9

    .line 599
    iget-object v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->BROWSER_NAMES:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 600
    const/4 v1, 0x1

    .line 598
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 591
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 604
    :cond_9
    const-string/jumbo v8, "sys.ssrm.mdnie"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "9"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 605
    iget-boolean v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEBookScenarioIntented:Z

    or-int/2addr v2, v8

    .line 607
    if-eqz v2, :cond_c

    .line 608
    iget-boolean v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-nez v8, :cond_1

    .line 609
    iput-boolean v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    .line 610
    iget-boolean v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    if-eqz v8, :cond_b

    iget-boolean v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    if-eqz v8, :cond_b

    iget-boolean v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-nez v8, :cond_a

    iget-boolean v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v8, :cond_b

    :cond_a
    move v6, v7

    :cond_b
    iput-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    .line 611
    iget-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-nez v6, :cond_1

    .line 612
    invoke-direct {p0, v7}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto/16 :goto_0

    .line 616
    :cond_c
    iget-boolean v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-eqz v8, :cond_d

    .line 617
    iput-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    .line 618
    iget-boolean v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v7, :cond_1

    .line 619
    invoke-direct {p0, v6}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto/16 :goto_0

    .line 622
    :cond_d
    if-eqz v3, :cond_e

    .line 623
    iget-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    if-nez v6, :cond_1

    .line 624
    iput-boolean v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    .line 625
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 626
    .restart local v4    # "time":J
    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v6, v11}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 627
    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v7, 0x1f4

    add-long/2addr v7, v4

    invoke-virtual {v6, v11, v7, v8}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 629
    .end local v4    # "time":J
    :cond_e
    if-eqz v1, :cond_12

    .line 630
    iget-boolean v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-nez v8, :cond_1

    .line 631
    iput-boolean v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 632
    iget-boolean v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    if-eqz v8, :cond_10

    iget-boolean v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    if-eqz v8, :cond_10

    iget-boolean v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-nez v8, :cond_f

    iget-boolean v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v8, :cond_10

    :cond_f
    move v6, v7

    :cond_10
    iput-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    .line 633
    iget-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    if-eqz v6, :cond_11

    iget-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-nez v6, :cond_11

    .line 634
    invoke-direct {p0, v7}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    .line 636
    :cond_11
    const/16 v6, 0x8

    invoke-static {v6}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    goto/16 :goto_0

    .line 639
    :cond_12
    iget-boolean v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    if-eqz v7, :cond_14

    .line 640
    iput-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    .line 641
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 642
    .restart local v4    # "time":J
    iget-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v7, v12}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 643
    iget-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v7, v12, v4, v5}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 656
    .end local v4    # "time":J
    :cond_13
    :goto_3
    iget-boolean v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v7, :cond_1

    .line 657
    invoke-direct {p0, v6}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto/16 :goto_0

    .line 644
    :cond_14
    iget-boolean v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v7, :cond_13

    .line 645
    iput-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 646
    const-string v7, "com.android.systemui"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 647
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 648
    .restart local v4    # "time":J
    iget-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v7, v10}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 649
    iget-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v8, 0x2bc

    add-long/2addr v8, v4

    invoke-virtual {v7, v10, v8, v9}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_3

    .line 651
    .end local v4    # "time":J
    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 652
    .restart local v4    # "time":J
    iget-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v7, v10}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 653
    iget-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v8, 0x12c

    add-long/2addr v8, v4

    invoke-virtual {v7, v10, v8, v9}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_3
.end method

.method private receive_screen_off_intent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 453
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenStateOn:Z

    .line 454
    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSettingCondition:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    .line 455
    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 456
    invoke-direct {p0, v1}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    invoke-virtual {v0}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    invoke-virtual {v0}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->interrupt()V

    .line 463
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 454
    goto :goto_0
.end method

.method private receive_screen_on_intent()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 441
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 442
    iput-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenStateOn:Z

    .line 443
    iget-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSettingCondition:Z

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    .line 444
    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;-><init>(Lcom/android/server/AdaptiveDisplayColorService;Lcom/android/server/AdaptiveDisplayColorService$1;)V

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    .line 447
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    invoke-virtual {v0}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->start()V

    .line 450
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 443
    goto :goto_0
.end method

.method private sendForcedRGB(IIII)V
    .locals 3
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "lux"    # I

    .prologue
    .line 753
    add-int v1, p1, p2

    add-int v0, v1, p3

    .line 755
    .local v0, "sumRGB":I
    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgR:F

    .line 756
    int-to-float v1, p2

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgG:F

    .line 757
    int-to-float v1, p3

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgB:F

    .line 758
    iput p4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSumLux:I

    .line 759
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 761
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->sendRgbAverage()V

    .line 762
    return-void
.end method

.method private sendRgbAverage()V
    .locals 31

    .prologue
    .line 834
    const/16 v22, 0x0

    .local v22, "scrR":I
    const/16 v21, 0x0

    .local v21, "scrG":I
    const/16 v19, 0x0

    .line 835
    .local v19, "scrB":I
    const/16 v18, 0x0

    .local v18, "scr400LuxR":I
    const/16 v17, 0x0

    .local v17, "scr400LuxG":I
    const/16 v16, 0x0

    .line 837
    .local v16, "scr400LuxB":I
    const/4 v5, 0x0

    .local v5, "adjustR":I
    const/4 v4, 0x0

    .local v4, "adjustG":I
    const/4 v3, 0x0

    .line 839
    .local v3, "adjustB":I
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    .line 840
    .local v11, "isEbookmode":Z
    const/16 v27, 0x0

    .line 842
    .local v27, "white_scr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    move/from16 v28, v0

    if-lez v28, :cond_7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 843
    .local v8, "count":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgR:F

    move/from16 v28, v0

    int-to-float v0, v8

    move/from16 v29, v0

    div-float v15, v28, v29

    .line 844
    .local v15, "r":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgG:F

    move/from16 v28, v0

    int-to-float v0, v8

    move/from16 v29, v0

    div-float v10, v28, v29

    .line 845
    .local v10, "g":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgB:F

    move/from16 v28, v0

    int-to-float v0, v8

    move/from16 v29, v0

    div-float v7, v28, v29

    .line 846
    .local v7, "b":F
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgR:F

    .line 847
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgG:F

    .line 848
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgB:F

    .line 849
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mSumLux:I

    move/from16 v28, v0

    div-int v6, v28, v8

    .line 851
    .local v6, "avgLux":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->DEBUG:Z

    move/from16 v28, v0

    if-eqz v28, :cond_0

    .line 852
    const-string v28, "AdaptiveDisplayColorService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "AvgR : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgR:F

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", AvgG : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgG:F

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", AvgB : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgB:F

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", avg lux : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 858
    :try_start_0
    const-string v28, "/sys/class/mdnie/mdnie/sensorRGB"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/AdaptiveDisplayColorService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 859
    if-eqz v27, :cond_1

    .line 860
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 861
    .local v20, "scrDatas":[Ljava/lang/String;
    const/16 v28, 0x0

    aget-object v28, v20, v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 862
    const/16 v28, 0x1

    aget-object v28, v20, v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 863
    const/16 v28, 0x2

    aget-object v28, v20, v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    .end local v20    # "scrDatas":[Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mIsFirstStart:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2

    .line 869
    const/16 v28, 0xff

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultR:I

    .line 870
    const/16 v28, 0xff

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultG:I

    .line 871
    const/16 v28, 0xff

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultB:I

    .line 875
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mIsFirstStart:Z

    move/from16 v28, v0

    if-eqz v28, :cond_3

    .line 876
    if-eqz v11, :cond_9

    .line 877
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookR:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 878
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookG:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 879
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookB:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 885
    :goto_2
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mIsFirstStart:Z

    .line 888
    :cond_3
    move v13, v6

    .line 889
    .local v13, "luxValue":I
    const/4 v12, -0x1

    .line 891
    .local v12, "log2Lux":I
    const/16 v28, 0x4

    move/from16 v0, v28

    if-ge v13, v0, :cond_b

    .line 892
    if-eqz v11, :cond_a

    .line 893
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookR:I

    move/from16 v22, v0

    .line 894
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookG:I

    move/from16 v21, v0

    .line 895
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookB:I

    move/from16 v19, v0

    .line 1007
    :goto_3
    if-eqz v22, :cond_6

    if-eqz v21, :cond_6

    if-eqz v19, :cond_6

    .line 1009
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    .line 1010
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    .line 1011
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    .line 1012
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mCountAnimationValue:I

    .line 1014
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->DEBUG:Z

    move/from16 v28, v0

    if-eqz v28, :cond_4

    .line 1015
    const-string v28, "AdaptiveDisplayColorService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "scrR : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", scrG : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", scrB : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    move/from16 v28, v0

    move/from16 v0, v22

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    move/from16 v28, v0

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    move/from16 v28, v0

    move/from16 v0, v19

    move/from16 v1, v28

    if-eq v0, v1, :cond_6

    .line 1018
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgR:I

    .line 1019
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgG:I

    .line 1020
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgB:I

    .line 1021
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AdaptiveDisplayColorService;->animateScrRGB()V

    .line 1024
    :cond_6
    return-void

    .line 842
    .end local v6    # "avgLux":I
    .end local v7    # "b":F
    .end local v8    # "count":I
    .end local v10    # "g":F
    .end local v12    # "log2Lux":I
    .end local v13    # "luxValue":I
    .end local v15    # "r":F
    :cond_7
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 865
    .restart local v6    # "avgLux":I
    .restart local v7    # "b":F
    .restart local v8    # "count":I
    .restart local v10    # "g":F
    .restart local v15    # "r":F
    :catch_0
    move-exception v9

    .line 866
    .local v9, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 868
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mIsFirstStart:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2

    .line 869
    const/16 v28, 0xff

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultR:I

    .line 870
    const/16 v28, 0xff

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultG:I

    .line 871
    const/16 v28, 0xff

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultB:I

    goto/16 :goto_1

    .line 868
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mIsFirstStart:Z

    move/from16 v29, v0

    if-eqz v29, :cond_8

    .line 869
    const/16 v29, 0xff

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultR:I

    .line 870
    const/16 v29, 0xff

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultG:I

    .line 871
    const/16 v29, 0xff

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultB:I

    :cond_8
    throw v28

    .line 881
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultR:I

    .line 882
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultG:I

    .line 883
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultB:I

    goto/16 :goto_2

    .line 897
    .restart local v12    # "log2Lux":I
    .restart local v13    # "luxValue":I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultR:I

    move/from16 v22, v0

    .line 898
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultG:I

    move/from16 v21, v0

    .line 899
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultB:I

    move/from16 v19, v0

    goto/16 :goto_3

    .line 903
    :cond_b
    :goto_4
    if-eqz v13, :cond_c

    .line 904
    shr-int/lit8 v13, v13, 0x1

    .line 905
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 908
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    move/from16 v28, v0

    if-nez v28, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    move/from16 v28, v0

    if-eqz v28, :cond_13

    .line 909
    :cond_d
    if-eqz v11, :cond_e

    .line 910
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustR:I

    .line 911
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustG:I

    .line 912
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustB:I

    .line 919
    :goto_5
    const v28, 0x4b189680    # 1.0E7f

    mul-float v28, v28, v15

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mTestScrR:I

    move/from16 v29, v0

    div-int v26, v28, v29

    .line 920
    .local v26, "testR":I
    const v28, 0x4b189680    # 1.0E7f

    mul-float v28, v28, v10

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mTestScrG:I

    move/from16 v29, v0

    div-int v25, v28, v29

    .line 921
    .local v25, "testG":I
    const v28, 0x4b189680    # 1.0E7f

    mul-float v28, v28, v7

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mTestScrB:I

    move/from16 v29, v0

    div-int v24, v28, v29

    .line 923
    .local v24, "testB":I
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v14

    .line 924
    .local v14, "maxValue":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v14, v1}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v14

    .line 926
    move/from16 v0, v26

    if-ne v14, v0, :cond_f

    .line 927
    const/16 v22, 0xff

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    mul-float v28, v28, v15

    mul-float v28, v28, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget v29, v29, v30

    mul-float v29, v29, v10

    mul-float v29, v29, v10

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x2

    aget v29, v29, v30

    mul-float v29, v29, v15

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x3

    aget v29, v29, v30

    mul-float v29, v29, v10

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x4

    aget v29, v29, v30

    mul-float v29, v29, v15

    mul-float v29, v29, v10

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x5

    aget v29, v29, v30

    add-float v23, v28, v29

    .line 931
    .local v23, "temp":F
    const/high16 v28, 0x437f0000    # 255.0f

    mul-float v28, v28, v23

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v21, v0

    .line 932
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v21

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v28, v0

    const/16 v29, 0x6

    aget v28, v28, v29

    mul-float v28, v28, v15

    mul-float v28, v28, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x7

    aget v29, v29, v30

    mul-float v29, v29, v7

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x8

    aget v29, v29, v30

    mul-float v29, v29, v15

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x9

    aget v29, v29, v30

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0xa

    aget v29, v29, v30

    mul-float v29, v29, v15

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0xb

    aget v29, v29, v30

    add-float v23, v28, v29

    .line 936
    const/high16 v28, 0x437f0000    # 255.0f

    mul-float v28, v28, v23

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v19, v0

    .line 937
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v19

    .line 966
    :goto_6
    add-int v18, v22, v5

    .line 967
    add-int v17, v21, v4

    .line 968
    add-int v16, v19, v3

    .line 970
    const/16 v28, 0x190

    move/from16 v0, v28

    if-ge v6, v0, :cond_12

    .line 972
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    move/from16 v28, v0

    if-eqz v28, :cond_11

    .line 973
    rsub-int/lit8 v28, v12, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookR:I

    move/from16 v29, v0

    mul-int v28, v28, v29

    mul-int v29, v12, v18

    add-int v28, v28, v29

    add-int/lit8 v28, v28, 0x4

    div-int/lit8 v22, v28, 0x8

    .line 974
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v22

    .line 976
    rsub-int/lit8 v28, v12, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookG:I

    move/from16 v29, v0

    mul-int v28, v28, v29

    mul-int v29, v12, v17

    add-int v28, v28, v29

    add-int/lit8 v28, v28, 0x4

    div-int/lit8 v21, v28, 0x8

    .line 977
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v21

    .line 979
    rsub-int/lit8 v28, v12, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookB:I

    move/from16 v29, v0

    mul-int v28, v28, v29

    mul-int v29, v12, v16

    add-int v28, v28, v29

    add-int/lit8 v28, v28, 0x4

    div-int/lit8 v19, v28, 0x8

    .line 980
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v19

    goto/16 :goto_3

    .line 914
    .end local v14    # "maxValue":I
    .end local v23    # "temp":F
    .end local v24    # "testB":I
    .end local v25    # "testG":I
    .end local v26    # "testR":I
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultR:I

    move/from16 v28, v0

    move/from16 v0, v28

    add-int/lit16 v5, v0, -0xff

    .line 915
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultG:I

    move/from16 v28, v0

    move/from16 v0, v28

    add-int/lit16 v4, v0, -0xff

    .line 916
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultB:I

    move/from16 v28, v0

    move/from16 v0, v28

    add-int/lit16 v3, v0, -0xff

    goto/16 :goto_5

    .line 939
    .restart local v14    # "maxValue":I
    .restart local v24    # "testB":I
    .restart local v25    # "testG":I
    .restart local v26    # "testR":I
    :cond_f
    move/from16 v0, v24

    if-ne v14, v0, :cond_10

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v28, v0

    const/16 v29, 0xc

    aget v28, v28, v29

    mul-float v28, v28, v15

    mul-float v28, v28, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0xd

    aget v29, v29, v30

    mul-float v29, v29, v7

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0xe

    aget v29, v29, v30

    mul-float v29, v29, v15

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0xf

    aget v29, v29, v30

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x10

    aget v29, v29, v30

    mul-float v29, v29, v15

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x11

    aget v29, v29, v30

    add-float v23, v28, v29

    .line 942
    .restart local v23    # "temp":F
    const/high16 v28, 0x437f0000    # 255.0f

    mul-float v28, v28, v23

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v22, v0

    .line 943
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v22

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v28, v0

    const/16 v29, 0x12

    aget v28, v28, v29

    mul-float v28, v28, v10

    mul-float v28, v28, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x13

    aget v29, v29, v30

    mul-float v29, v29, v7

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x14

    aget v29, v29, v30

    mul-float v29, v29, v10

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x15

    aget v29, v29, v30

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x16

    aget v29, v29, v30

    mul-float v29, v29, v10

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x17

    aget v29, v29, v30

    add-float v23, v28, v29

    .line 947
    const/high16 v28, 0x437f0000    # 255.0f

    mul-float v28, v28, v23

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v21, v0

    .line 948
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v21

    .line 950
    const/16 v19, 0xff

    goto/16 :goto_6

    .line 953
    .end local v23    # "temp":F
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v28, v0

    const/16 v29, 0x18

    aget v28, v28, v29

    mul-float v28, v28, v15

    mul-float v28, v28, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x19

    aget v29, v29, v30

    mul-float v29, v29, v10

    mul-float v29, v29, v10

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x1a

    aget v29, v29, v30

    mul-float v29, v29, v15

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x1b

    aget v29, v29, v30

    mul-float v29, v29, v10

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x1c

    aget v29, v29, v30

    mul-float v29, v29, v15

    mul-float v29, v29, v10

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x1d

    aget v29, v29, v30

    add-float v23, v28, v29

    .line 955
    .restart local v23    # "temp":F
    const/high16 v28, 0x437f0000    # 255.0f

    mul-float v28, v28, v23

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v22, v0

    .line 956
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v22

    .line 958
    const/16 v21, 0xff

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v28, v0

    const/16 v29, 0x1e

    aget v28, v28, v29

    mul-float v28, v28, v10

    mul-float v28, v28, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x1f

    aget v29, v29, v30

    mul-float v29, v29, v7

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x20

    aget v29, v29, v30

    mul-float v29, v29, v10

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x21

    aget v29, v29, v30

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x22

    aget v29, v29, v30

    mul-float v29, v29, v10

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x23

    aget v29, v29, v30

    add-float v23, v28, v29

    .line 962
    const/high16 v28, 0x437f0000    # 255.0f

    mul-float v28, v28, v23

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v19, v0

    .line 963
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v19

    goto/16 :goto_6

    .line 982
    :cond_11
    rsub-int/lit8 v28, v12, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultR:I

    move/from16 v29, v0

    mul-int v28, v28, v29

    mul-int v29, v12, v18

    add-int v28, v28, v29

    add-int/lit8 v28, v28, 0x4

    div-int/lit8 v22, v28, 0x8

    .line 983
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v22

    .line 985
    rsub-int/lit8 v28, v12, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultG:I

    move/from16 v29, v0

    mul-int v28, v28, v29

    mul-int v29, v12, v17

    add-int v28, v28, v29

    add-int/lit8 v28, v28, 0x4

    div-int/lit8 v21, v28, 0x8

    .line 986
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v21

    .line 988
    rsub-int/lit8 v28, v12, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultB:I

    move/from16 v29, v0

    mul-int v28, v28, v29

    mul-int v29, v12, v16

    add-int v28, v28, v29

    add-int/lit8 v28, v28, 0x4

    div-int/lit8 v19, v28, 0x8

    .line 989
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v19

    goto/16 :goto_3

    .line 994
    :cond_12
    move/from16 v22, v18

    .line 995
    move/from16 v21, v17

    .line 996
    move/from16 v19, v16

    goto/16 :goto_3

    .line 1001
    .end local v14    # "maxValue":I
    .end local v23    # "temp":F
    .end local v24    # "testB":I
    .end local v25    # "testG":I
    .end local v26    # "testR":I
    :cond_13
    const/16 v22, 0x0

    .line 1002
    const/16 v21, 0x0

    .line 1003
    const/16 v19, 0x0

    goto/16 :goto_3
.end method

.method private setAverageValue(IIII)V
    .locals 10
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "lux"    # I

    .prologue
    const/4 v9, 0x0

    .line 765
    add-int v6, p1, p2

    add-int v3, v6, p3

    .line 766
    .local v3, "sumRGB":I
    const/4 v2, 0x0

    .local v2, "ratioR":F
    const/4 v1, 0x0

    .local v1, "ratioG":F
    const/4 v0, 0x0

    .line 768
    .local v0, "ratioB":F
    int-to-float v6, p1

    int-to-float v7, v3

    div-float v2, v6, v7

    .line 769
    int-to-float v6, p2

    int-to-float v7, v3

    div-float v1, v6, v7

    .line 770
    int-to-float v6, p3

    int-to-float v7, v3

    div-float v0, v6, v7

    .line 772
    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgR:F

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgG:F

    sub-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgB:F

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 773
    :cond_0
    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgR:F

    add-float/2addr v6, v2

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgR:F

    .line 774
    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgG:F

    add-float/2addr v6, v1

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgG:F

    .line 775
    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgB:F

    add-float/2addr v6, v0

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgB:F

    .line 776
    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSumLux:I

    add-int/2addr v6, p4

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSumLux:I

    .line 777
    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 779
    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    const/16 v7, 0x14

    if-lt v6, v7, :cond_1

    .line 780
    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgR:F

    iget v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgR:F

    .line 781
    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgG:F

    iget v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgG:F

    .line 782
    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgB:F

    iget v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgB:F

    .line 784
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 787
    :cond_1
    iget-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mValidZone:Z

    if-nez v6, :cond_2

    .line 788
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 789
    .local v4, "time":J
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mValidZone:Z

    .line 790
    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v6, v9}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 791
    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v7, 0x1770

    add-long/2addr v7, v4

    invoke-virtual {v6, v9, v7, v8}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 798
    .end local v4    # "time":J
    :cond_2
    :goto_0
    return-void

    .line 795
    :cond_3
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 796
    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v6, v9}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    goto :goto_0
.end method

.method private setBrowserMode()V
    .locals 1

    .prologue
    .line 1087
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    .line 1088
    return-void
.end method

.method private setVideoMode()V
    .locals 1

    .prologue
    .line 1083
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    .line 1084
    return-void
.end method

.method private setting_is_changed()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 466
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 468
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "lcd_curtain"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    .line 469
    const-string v1, "high_contrast"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    .line 470
    const-string v1, "color_blind"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    .line 472
    const-string v1, "powersaving_switch"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPowerSavingEnabled:Z

    .line 476
    const-string/jumbo v1, "ultra_powersaving_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_6

    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mUltraPowerSavingModeEnabled:Z

    .line 477
    const-string/jumbo v1, "screen_mode_automatic_setting"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_7

    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    .line 478
    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mUltraPowerSavingModeEnabled:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPowerSavingEnabled:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    if-eqz v1, :cond_8

    move v1, v2

    :goto_6
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSettingCondition:Z

    .line 480
    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSettingCondition:Z

    if-eqz v1, :cond_9

    :goto_7
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    .line 482
    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    if-eqz v1, :cond_a

    .line 483
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_0

    .line 484
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    if-nez v1, :cond_1

    .line 486
    new-instance v1, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;-><init>(Lcom/android/server/AdaptiveDisplayColorService;Lcom/android/server/AdaptiveDisplayColorService$1;)V

    iput-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    .line 487
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    invoke-virtual {v1}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->start()V

    .line 498
    :cond_1
    :goto_8
    return-void

    :cond_2
    move v1, v3

    .line 468
    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 469
    goto :goto_1

    :cond_4
    move v1, v3

    .line 470
    goto :goto_2

    :cond_5
    move v1, v3

    .line 472
    goto :goto_3

    :cond_6
    move v1, v3

    .line 476
    goto :goto_4

    :cond_7
    move v1, v3

    .line 477
    goto :goto_5

    :cond_8
    move v1, v3

    .line 478
    goto :goto_6

    :cond_9
    move v2, v3

    .line 480
    goto :goto_7

    .line 490
    :cond_a
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_b

    .line 491
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 492
    :cond_b
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    if-eqz v1, :cond_1

    .line 493
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    invoke-virtual {v1}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 494
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    invoke-virtual {v1}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->interrupt()V

    goto :goto_8
.end method

.method private terminateScrRGB()V
    .locals 1

    .prologue
    .line 1095
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    .line 1096
    return-void
.end method

.method private terminateVideoMode()V
    .locals 1

    .prologue
    .line 1091
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    .line 1092
    return-void
.end method


# virtual methods
.method systemReady()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 241
    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x1110080

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    .line 244
    iget-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    if-eqz v6, :cond_0

    .line 245
    iput v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserStartIndex:I

    .line 247
    :cond_0
    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x1110081

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    .line 250
    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "screen_mode_automatic_setting"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_1

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    .line 251
    iget-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    if-eqz v6, :cond_2

    .line 253
    const/4 v6, 0x4

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenMode:I

    .line 259
    :goto_1
    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenMode:I

    invoke-static {v6}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 260
    invoke-static {v8}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    .line 262
    const-string/jumbo v6, "sys.adaptivedisplay.eadon"

    const-string v9, "false"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    new-instance v6, Landroid/hardware/SystemSensorManager;

    iget-object v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v10}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 267
    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    .line 269
    new-instance v6, Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;

    iget-object v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-direct {v6, p0, v9}, Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;-><init>(Lcom/android/server/AdaptiveDisplayColorService;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;

    .line 271
    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 273
    .local v4, "resolver":Landroid/content/ContentResolver;
    new-instance v6, Lcom/samsung/android/cover/CoverManager;

    iget-object v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 275
    const-string v6, "lcd_curtain"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v4, v6, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 277
    const-string v6, "high_contrast"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v4, v6, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 279
    const-string v6, "color_blind"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v4, v6, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 282
    const-string v6, "powersaving_switch"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v4, v6, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 288
    const-string/jumbo v6, "ultra_powersaving_mode"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v4, v6, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 290
    const-string/jumbo v6, "screen_mode_automatic_setting"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v4, v6, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 293
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 294
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string v6, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string v6, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    const-string v6, "com.sec.android.intent.action.SSRM_MDNIE_CHANGED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;-><init>(Lcom/android/server/AdaptiveDisplayColorService;Lcom/android/server/AdaptiveDisplayColorService$1;)V

    invoke-virtual {v6, v9, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 302
    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    iput-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mActivityManager:Landroid/app/ActivityManager;

    .line 304
    iget-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    if-eqz v6, :cond_4

    .line 305
    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x1070047

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 306
    .local v0, "adj_rgb":[I
    aget v6, v0, v8

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustR:I

    .line 307
    aget v6, v0, v7

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustG:I

    .line 308
    aget v6, v0, v11

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustB:I

    .line 310
    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x1070048

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 311
    .local v5, "test_rgb":[I
    aget v6, v5, v8

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTestScrR:I

    .line 312
    aget v6, v5, v7

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTestScrG:I

    .line 313
    aget v6, v5, v11

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTestScrB:I

    .line 315
    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070049

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "coefficientStringArray":[Ljava/lang/String;
    const/16 v6, 0x24

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    .line 319
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v6, v1

    if-ge v2, v6, :cond_3

    .line 320
    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    aget-object v7, v1, v2

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v6, v2

    .line 319
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0    # "adj_rgb":[I
    .end local v1    # "coefficientStringArray":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "test_rgb":[I
    :cond_1
    move v6, v8

    .line 250
    goto/16 :goto_0

    .line 257
    :cond_2
    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "screen_mode_setting"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenMode:I

    goto/16 :goto_1

    .line 322
    .restart local v0    # "adj_rgb":[I
    .restart local v1    # "coefficientStringArray":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "test_rgb":[I
    :cond_3
    const-string/jumbo v6, "sys.adaptivedisplay.eadon"

    const-string/jumbo v7, "true"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .end local v0    # "adj_rgb":[I
    .end local v1    # "coefficientStringArray":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v5    # "test_rgb":[I
    :cond_4
    return-void
.end method

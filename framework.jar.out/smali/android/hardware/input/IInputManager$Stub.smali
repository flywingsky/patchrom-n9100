.class public abstract Landroid/hardware/input/IInputManager$Stub;
.super Landroid/os/Binder;
.source "IInputManager.java"

# interfaces
.implements Landroid/hardware/input/IInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IInputManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IInputManager"

.field static final TRANSACTION_addKeyboardLayoutForInputDevice:I = 0xb

.field static final TRANSACTION_cancelVibrate:I = 0xf

.field static final TRANSACTION_coverEventFinished:I = 0x18

.field static final TRANSACTION_getCurrentKeyboardLayoutForInputDevice:I = 0x8

.field static final TRANSACTION_getCursorPosition:I = 0x12

.field static final TRANSACTION_getDoNotUseVelocity:I = 0x14

.field static final TRANSACTION_getInputDevice:I = 0x1

.field static final TRANSACTION_getInputDeviceIds:I = 0x2

.field static final TRANSACTION_getKeyboardLayout:I = 0x7

.field static final TRANSACTION_getKeyboardLayouts:I = 0x6

.field static final TRANSACTION_getKeyboardLayoutsForInputDevice:I = 0xa

.field static final TRANSACTION_getScanCodeState:I = 0x19

.field static final TRANSACTION_hasKeys:I = 0x3

.field static final TRANSACTION_injectInputEvent:I = 0x5

.field static final TRANSACTION_isShowHoveringPointer:I = 0x16

.field static final TRANSACTION_monitorInput:I = 0x1a

.field static final TRANSACTION_monitorInputEx:I = 0x1b

.field static final TRANSACTION_registerHoveringSpenCustomIcon:I = 0x1c

.field static final TRANSACTION_registerInputDevicesChangedListener:I = 0xd

.field static final TRANSACTION_registerMouseCustomIcon:I = 0x20

.field static final TRANSACTION_reloadMousePointerIcon:I = 0x22

.field static final TRANSACTION_reloadMousePointerIconForBitmap:I = 0x23

.field static final TRANSACTION_reloadPointerIcon:I = 0x1e

.field static final TRANSACTION_reloadPointerIconForBitmap:I = 0x1f

.field static final TRANSACTION_removeHoveringSpenCustomIcon:I = 0x1d

.field static final TRANSACTION_removeKeyboardLayoutForInputDevice:I = 0xc

.field static final TRANSACTION_removeMouseCustomIcon:I = 0x21

.field static final TRANSACTION_setCurrentKeyboardLayoutForInputDevice:I = 0x9

.field static final TRANSACTION_setDoNotUseVelocity:I = 0x13

.field static final TRANSACTION_setFlipCoverTouchEnabled:I = 0x17

.field static final TRANSACTION_setLedState:I = 0x11

.field static final TRANSACTION_setMonitorChannelFilter:I = 0x25

.field static final TRANSACTION_setPointerBounds:I = 0x15

.field static final TRANSACTION_setStartedShutdown:I = 0x10

.field static final TRANSACTION_setWakeKeyDynamically:I = 0x24

.field static final TRANSACTION_tryPointerSpeed:I = 0x4

.field static final TRANSACTION_vibrate:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/input/IInputManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.hardware.input.IInputManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/input/IInputManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/hardware/input/IInputManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/hardware/input/IInputManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 541
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 43
    :sswitch_0
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v7

    .line 52
    .local v7, "_result":Landroid/view/InputDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v7, :cond_0

    .line 54
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {v7, p3, v8}, Landroid/view/InputDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v1    # "_arg0":I
    .end local v7    # "_result":Landroid/view/InputDevice;
    :sswitch_2
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getInputDeviceIds()[I

    move-result-object v7

    .line 66
    .local v7, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 72
    .end local v7    # "_result":[I
    :sswitch_3
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 76
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 78
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 80
    .local v3, "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 81
    .local v6, "_arg3_length":I
    if-gez v6, :cond_2

    .line 82
    const/4 v4, 0x0

    .line 87
    .local v4, "_arg3":[Z
    :goto_1
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->hasKeys(II[I[Z)Z

    move-result v7

    .line 88
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v7, :cond_1

    move v0, v8

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto :goto_0

    .line 85
    .end local v4    # "_arg3":[Z
    .end local v7    # "_result":Z
    :cond_2
    new-array v4, v6, [Z

    .restart local v4    # "_arg3":[Z
    goto :goto_1

    .line 95
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":[Z
    .end local v6    # "_arg3_length":I
    :sswitch_4
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 98
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->tryPointerSpeed(I)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 104
    .end local v1    # "_arg0":I
    :sswitch_5
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    .line 107
    sget-object v9, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputEvent;

    .line 113
    .local v1, "_arg0":Landroid/view/InputEvent;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 114
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v7

    .line 115
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v7, :cond_3

    move v0, v8

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 110
    .end local v1    # "_arg0":Landroid/view/InputEvent;
    .end local v2    # "_arg1":I
    .end local v7    # "_result":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/view/InputEvent;
    goto :goto_2

    .line 121
    .end local v1    # "_arg0":Landroid/view/InputEvent;
    :sswitch_6
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    move-result-object v7

    .line 123
    .local v7, "_result":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 129
    .end local v7    # "_result":[Landroid/hardware/input/KeyboardLayout;
    :sswitch_7
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v7

    .line 133
    .local v7, "_result":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v7, :cond_5

    .line 135
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    invoke-virtual {v7, p3, v8}, Landroid/hardware/input/KeyboardLayout;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 139
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 145
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Landroid/hardware/input/KeyboardLayout;
    :sswitch_8
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 148
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->getCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_9
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 159
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->setCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 166
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_a
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutsForInputDevice(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 170
    .local v7, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":[Ljava/lang/String;
    :sswitch_b
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 180
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 181
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->addKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 187
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_c
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 191
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 192
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->removeKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 198
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_d
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IInputDevicesChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputDevicesChangedListener;

    move-result-object v1

    .line 201
    .local v1, "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 207
    .end local v1    # "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    :sswitch_e
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 211
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    .line 213
    .local v2, "_arg1":[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 215
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 216
    .local v4, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->vibrate(I[JILandroid/os/IBinder;)V

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 222
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[J
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/IBinder;
    :sswitch_f
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 226
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 227
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 233
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :sswitch_10
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6

    move v1, v8

    .line 236
    .local v1, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->setStartedShutdown(Z)V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_6
    move v1, v0

    .line 235
    goto :goto_3

    .line 242
    :sswitch_11
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7

    move v1, v8

    .line 245
    .restart local v1    # "_arg0":Z
    :goto_4
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->setLedState(Z)I

    move-result v7

    .line 246
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v7    # "_result":I
    :cond_7
    move v1, v0

    .line 244
    goto :goto_4

    .line 252
    :sswitch_12
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getCursorPosition()[F

    move-result-object v7

    .line 254
    .local v7, "_result":[F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto/16 :goto_0

    .line 260
    .end local v7    # "_result":[F
    :sswitch_13
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_8

    move v1, v8

    .line 263
    .restart local v1    # "_arg0":Z
    :goto_5
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->setDoNotUseVelocity(Z)I

    move-result v7

    .line 264
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v7    # "_result":I
    :cond_8
    move v1, v0

    .line 262
    goto :goto_5

    .line 270
    :sswitch_14
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getDoNotUseVelocity()Z

    move-result v7

    .line 272
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    if-eqz v7, :cond_9

    move v0, v8

    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 278
    .end local v7    # "_result":Z
    :sswitch_15
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 282
    .local v1, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 284
    .local v2, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 286
    .local v3, "_arg2":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 287
    .local v4, "_arg3":F
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->setPointerBounds(FFFF)V

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 293
    .end local v1    # "_arg0":F
    .end local v2    # "_arg1":F
    .end local v3    # "_arg2":F
    .end local v4    # "_arg3":F
    :sswitch_16
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->isShowHoveringPointer()Z

    move-result v7

    .line 295
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    if-eqz v7, :cond_a

    move v0, v8

    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 301
    .end local v7    # "_result":Z
    :sswitch_17
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_b

    move v1, v8

    .line 304
    .local v1, "_arg0":Z
    :goto_6
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->setFlipCoverTouchEnabled(Z)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_b
    move v1, v0

    .line 303
    goto :goto_6

    .line 310
    :sswitch_18
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->coverEventFinished()V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 317
    :sswitch_19
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 321
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 323
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 324
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->getScanCodeState(III)I

    move-result v7

    .line 325
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 331
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v7    # "_result":I
    :sswitch_1a
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v7

    .line 335
    .local v7, "_result":Landroid/view/InputChannel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    if-eqz v7, :cond_c

    .line 337
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    invoke-virtual {v7, p3, v8}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 341
    :cond_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 347
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Landroid/view/InputChannel;
    :sswitch_1b
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 351
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_d

    move v2, v8

    .line 352
    .local v2, "_arg1":Z
    :goto_7
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->monitorInputEx(Ljava/lang/String;Z)Landroid/view/InputChannel;

    move-result-object v7

    .line 353
    .restart local v7    # "_result":Landroid/view/InputChannel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    if-eqz v7, :cond_e

    .line 355
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    invoke-virtual {v7, p3, v8}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    .end local v7    # "_result":Landroid/view/InputChannel;
    :cond_d
    move v2, v0

    .line 351
    goto :goto_7

    .line 359
    .restart local v2    # "_arg1":Z
    .restart local v7    # "_result":Landroid/view/InputChannel;
    :cond_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 365
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v7    # "_result":Landroid/view/InputChannel;
    :sswitch_1c
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 368
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 373
    .local v1, "_arg0":Landroid/graphics/Bitmap;
    :goto_8
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->registerHoveringSpenCustomIcon(Landroid/graphics/Bitmap;)I

    move-result v7

    .line 374
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 371
    .end local v1    # "_arg0":Landroid/graphics/Bitmap;
    .end local v7    # "_result":I
    :cond_f
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_8

    .line 380
    .end local v1    # "_arg0":Landroid/graphics/Bitmap;
    :sswitch_1d
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 383
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->removeHoveringSpenCustomIcon(I)V

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 389
    .end local v1    # "_arg0":I
    :sswitch_1e
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 393
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 395
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 397
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 398
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 404
    .local v4, "_arg3":Landroid/graphics/Point;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 405
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/input/IInputManager$Stub;->reloadPointerIcon(IIILandroid/graphics/Point;I)V

    .line 406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 401
    .end local v4    # "_arg3":Landroid/graphics/Point;
    .end local v5    # "_arg4":I
    :cond_10
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/graphics/Point;
    goto :goto_9

    .line 411
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/graphics/Point;
    :sswitch_1f
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 415
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 417
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    .line 418
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 424
    .local v3, "_arg2":Landroid/graphics/Bitmap;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    .line 425
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 431
    .restart local v4    # "_arg3":Landroid/graphics/Point;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg4":I
    move-object v0, p0

    .line 432
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/input/IInputManager$Stub;->reloadPointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v7

    .line 433
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 421
    .end local v3    # "_arg2":Landroid/graphics/Bitmap;
    .end local v4    # "_arg3":Landroid/graphics/Point;
    .end local v5    # "_arg4":I
    .end local v7    # "_result":I
    :cond_11
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/graphics/Bitmap;
    goto :goto_a

    .line 428
    :cond_12
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/graphics/Point;
    goto :goto_b

    .line 439
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/graphics/Bitmap;
    .end local v4    # "_arg3":Landroid/graphics/Point;
    :sswitch_20
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 442
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 447
    .local v1, "_arg0":Landroid/graphics/Bitmap;
    :goto_c
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->registerMouseCustomIcon(Landroid/graphics/Bitmap;)I

    move-result v7

    .line 448
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 445
    .end local v1    # "_arg0":Landroid/graphics/Bitmap;
    .end local v7    # "_result":I
    :cond_13
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_c

    .line 454
    .end local v1    # "_arg0":Landroid/graphics/Bitmap;
    :sswitch_21
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 457
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->removeMouseCustomIcon(I)V

    .line 458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 463
    .end local v1    # "_arg0":I
    :sswitch_22
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 467
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 469
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 471
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    .line 472
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 478
    .restart local v4    # "_arg3":Landroid/graphics/Point;
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg4":I
    move-object v0, p0

    .line 479
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/input/IInputManager$Stub;->reloadMousePointerIcon(IIILandroid/graphics/Point;I)V

    .line 480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 475
    .end local v4    # "_arg3":Landroid/graphics/Point;
    .end local v5    # "_arg4":I
    :cond_14
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/graphics/Point;
    goto :goto_d

    .line 485
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/graphics/Point;
    :sswitch_23
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 489
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 491
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    .line 492
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 498
    .local v3, "_arg2":Landroid/graphics/Bitmap;
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    .line 499
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 505
    .restart local v4    # "_arg3":Landroid/graphics/Point;
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg4":I
    move-object v0, p0

    .line 506
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/input/IInputManager$Stub;->reloadMousePointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v7

    .line 507
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 495
    .end local v3    # "_arg2":Landroid/graphics/Bitmap;
    .end local v4    # "_arg3":Landroid/graphics/Point;
    .end local v5    # "_arg4":I
    .end local v7    # "_result":I
    :cond_15
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/graphics/Bitmap;
    goto :goto_e

    .line 502
    :cond_16
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/graphics/Point;
    goto :goto_f

    .line 513
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/graphics/Bitmap;
    .end local v4    # "_arg3":Landroid/graphics/Point;
    :sswitch_24
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_17

    move v2, v8

    .line 519
    .local v2, "_arg1":Z
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 520
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V

    .line 521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Ljava/lang/String;
    :cond_17
    move v2, v0

    .line 517
    goto :goto_10

    .line 526
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_25
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    .line 529
    sget-object v0, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputChannel;

    .line 535
    .local v1, "_arg0":Landroid/view/InputChannel;
    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 536
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->setMonitorChannelFilter(Landroid/view/InputChannel;I)V

    .line 537
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 532
    .end local v1    # "_arg0":Landroid/view/InputChannel;
    .end local v2    # "_arg1":I
    :cond_18
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/view/InputChannel;
    goto :goto_11

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

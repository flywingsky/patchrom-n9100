.class Landroid/opengl/GLSurfaceView$EglHelper;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EglHelper"
.end annotation


# instance fields
.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/opengl/GLSurfaceView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 995
    .local p1, "glSurfaceViewWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/opengl/GLSurfaceView;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 996
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 997
    return-void
.end method

.method private destroySurfaceImp()V
    .locals 6

    .prologue
    .line 1163
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_1

    .line 1164
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1167
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    .line 1168
    .local v0, "view":Landroid/opengl/GLSurfaceView;
    if-eqz v0, :cond_0

    .line 1169
    # getter for: Landroid/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v0}, Landroid/opengl/GLSurfaceView;->access$500(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v1

    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3, v4}, Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 1171
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1173
    .end local v0    # "view":Landroid/opengl/GLSurfaceView;
    :cond_1
    return-void
.end method

.method public static formatEglError(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "function"    # Ljava/lang/String;
    .param p1, "error"    # I

    .prologue
    .line 1210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/opengl/EGLLogWrapper;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "error"    # I

    .prologue
    .line 1206
    invoke-static {p1, p2}, Landroid/opengl/GLSurfaceView$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    return-void
.end method

.method private throwEglException(Ljava/lang/String;)V
    .locals 1
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 1193
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {p1, v0}, Landroid/opengl/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 1194
    return-void
.end method

.method public static throwEglException(Ljava/lang/String;I)V
    .locals 2
    .param p0, "function"    # Ljava/lang/String;
    .param p1, "error"    # I

    .prologue
    .line 1197
    invoke-static {p0, p1}, Landroid/opengl/GLSurfaceView$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1202
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method createGL()Ljavax/microedition/khronos/opengles/GL;
    .locals 5

    .prologue
    .line 1122
    iget-object v4, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v4}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 1123
    .local v1, "gl":Ljavax/microedition/khronos/opengles/GL;
    iget-object v4, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/opengl/GLSurfaceView;

    .line 1124
    .local v3, "view":Landroid/opengl/GLSurfaceView;
    if-eqz v3, :cond_3

    .line 1125
    # getter for: Landroid/opengl/GLSurfaceView;->mGLWrapper:Landroid/opengl/GLSurfaceView$GLWrapper;
    invoke-static {v3}, Landroid/opengl/GLSurfaceView;->access$600(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$GLWrapper;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1126
    # getter for: Landroid/opengl/GLSurfaceView;->mGLWrapper:Landroid/opengl/GLSurfaceView$GLWrapper;
    invoke-static {v3}, Landroid/opengl/GLSurfaceView;->access$600(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$GLWrapper;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/opengl/GLSurfaceView$GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 1129
    :cond_0
    # getter for: Landroid/opengl/GLSurfaceView;->mDebugFlags:I
    invoke-static {v3}, Landroid/opengl/GLSurfaceView;->access$700(Landroid/opengl/GLSurfaceView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    if-eqz v4, :cond_3

    .line 1130
    const/4 v0, 0x0

    .line 1131
    .local v0, "configFlags":I
    const/4 v2, 0x0

    .line 1132
    .local v2, "log":Ljava/io/Writer;
    # getter for: Landroid/opengl/GLSurfaceView;->mDebugFlags:I
    invoke-static {v3}, Landroid/opengl/GLSurfaceView;->access$700(Landroid/opengl/GLSurfaceView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 1133
    or-int/lit8 v0, v0, 0x1

    .line 1135
    :cond_1
    # getter for: Landroid/opengl/GLSurfaceView;->mDebugFlags:I
    invoke-static {v3}, Landroid/opengl/GLSurfaceView;->access$700(Landroid/opengl/GLSurfaceView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 1136
    new-instance v2, Landroid/opengl/GLSurfaceView$LogWriter;

    .end local v2    # "log":Ljava/io/Writer;
    invoke-direct {v2}, Landroid/opengl/GLSurfaceView$LogWriter;-><init>()V

    .line 1138
    .restart local v2    # "log":Ljava/io/Writer;
    :cond_2
    invoke-static {v1, v0, v2}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 1141
    .end local v0    # "configFlags":I
    .end local v2    # "log":Ljava/io/Writer;
    :cond_3
    return-object v1
.end method

.method public createSurface()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1065
    iget-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v3, :cond_0

    .line 1066
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "egl not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1068
    :cond_0
    iget-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v3, :cond_1

    .line 1069
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglDisplay not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1071
    :cond_1
    iget-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v3, :cond_2

    .line 1072
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "mEglConfig not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1079
    :cond_2
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$EglHelper;->destroySurfaceImp()V

    .line 1084
    iget-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/opengl/GLSurfaceView;

    .line 1085
    .local v1, "view":Landroid/opengl/GLSurfaceView;
    if-eqz v1, :cond_5

    .line 1086
    # getter for: Landroid/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v1}, Landroid/opengl/GLSurfaceView;->access$500(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v3

    iget-object v4, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v7

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    iput-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1092
    :goto_0
    iget-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v3, v4, :cond_6

    .line 1093
    :cond_3
    iget-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1094
    .local v0, "error":I
    const/16 v3, 0x300b

    if-ne v0, v3, :cond_4

    .line 1095
    const-string v3, "EglHelper"

    const-string v4, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    .end local v0    # "error":I
    :cond_4
    :goto_1
    return v2

    .line 1089
    :cond_5
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_0

    .line 1104
    :cond_6
    iget-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v7, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1109
    const-string v3, "EGLHelper"

    const-string v4, "eglMakeCurrent"

    iget-object v5, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/opengl/GLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 1113
    :cond_7
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public destroySurface()V
    .locals 0

    .prologue
    .line 1159
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$EglHelper;->destroySurfaceImp()V

    .line 1160
    return-void
.end method

.method public finish()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1179
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_1

    .line 1180
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    .line 1181
    .local v0, "view":Landroid/opengl/GLSurfaceView;
    if-eqz v0, :cond_0

    .line 1182
    # getter for: Landroid/opengl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;
    invoke-static {v0}, Landroid/opengl/GLSurfaceView;->access$400(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLContextFactory;

    move-result-object v1

    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4}, Landroid/opengl/GLSurfaceView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1184
    :cond_0
    iput-object v5, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1186
    .end local v0    # "view":Landroid/opengl/GLSurfaceView;
    :cond_1
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v1, :cond_2

    .line 1187
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1188
    iput-object v5, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1190
    :cond_2
    return-void
.end method

.method public start()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1010
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 1015
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iput-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1017
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v3, :cond_0

    .line 1018
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglGetDisplay failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1024
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 1025
    .local v0, "version":[I
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1026
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglInitialize failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1028
    :cond_1
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/opengl/GLSurfaceView;

    .line 1029
    .local v1, "view":Landroid/opengl/GLSurfaceView;
    if-nez v1, :cond_4

    .line 1030
    iput-object v6, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1031
    iput-object v6, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1041
    :goto_0
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v2, v3, :cond_3

    .line 1042
    :cond_2
    iput-object v6, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1043
    const-string v2, "createContext"

    invoke-direct {p0, v2}, Landroid/opengl/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 1049
    :cond_3
    iput-object v6, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1050
    return-void

    .line 1033
    :cond_4
    # getter for: Landroid/opengl/GLSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;
    invoke-static {v1}, Landroid/opengl/GLSurfaceView;->access$300(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v2

    iget-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v4}, Landroid/opengl/GLSurfaceView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    iput-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1039
    # getter for: Landroid/opengl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;
    invoke-static {v1}, Landroid/opengl/GLSurfaceView;->access$400(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLContextFactory;

    move-result-object v2

    iget-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v3, v4, v5}, Landroid/opengl/GLSurfaceView$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_0
.end method

.method public swap()I
    .locals 3

    .prologue
    .line 1149
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1150
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1152
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3000

    goto :goto_0
.end method

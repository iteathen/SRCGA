.class public Lcom/sun/glass/ui/monocle/AcceleratedScreen;
.super Ljava/lang/Object;
.source "AcceleratedScreen.java"


# static fields
.field private static eglLibraryHandle:J

.field private static glesLibraryHandle:J

.field private static initialized:Z

.field protected static final ls:Lcom/sun/glass/ui/monocle/LinuxSystem;


# instance fields
.field private egl:Lcom/sun/glass/ui/monocle/EGL;

.field eglConfigs:[J

.field private eglContext:J

.field private eglDisplay:J

.field private eglSurface:J

.field private nativeWindow:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->initialized:Z

    .line 40
    invoke-static {}, Lcom/sun/glass/ui/monocle/LinuxSystem;->getLinuxSystem()Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-result-object v0

    sput-object v0, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->ls:Lcom/sun/glass/ui/monocle/LinuxSystem;

    return-void
.end method

.method constructor <init>([I)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/glass/ui/monocle/GLException;,
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .prologue
    .line 66
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AcceleratedScreen;
    move-object/from16 v1, p1

    .local v1, "attributes":[I
    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v8, v0

    const/4 v9, 0x1

    new-array v9, v9, [J

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    aput-wide v12, v10, v11

    iput-object v9, v8, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglConfigs:[J

    .line 67
    move-object v8, v0

    invoke-static {}, Lcom/sun/glass/ui/monocle/EGL;->getEGL()Lcom/sun/glass/ui/monocle/EGL;

    move-result-object v9

    iput-object v9, v8, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->egl:Lcom/sun/glass/ui/monocle/EGL;

    .line 68
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->initPlatformLibraries()Z

    move-result v8

    .line 70
    const/4 v8, 0x1

    new-array v8, v8, [I

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    move-object v2, v8

    .local v2, "major":[I
    const/4 v8, 0x1

    new-array v8, v8, [I

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    move-object v3, v8

    .line 71
    .local v3, "minor":[I
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->platformGetNativeDisplay()J

    move-result-wide v8

    move-wide v4, v8

    .line 72
    .local v4, "nativeDisplay":J
    move-object v8, v0

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->platformGetNativeWindow()J

    move-result-wide v9

    iput-wide v9, v8, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->nativeWindow:J

    .line 74
    move-wide v8, v4

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 75
    new-instance v8, Lcom/sun/glass/ui/monocle/GLException;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/4 v10, 0x0

    const-string v11, "Could not get native display"

    invoke-direct {v9, v10, v11}, Lcom/sun/glass/ui/monocle/GLException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 77
    :cond_0
    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->nativeWindow:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 78
    new-instance v8, Lcom/sun/glass/ui/monocle/GLException;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/4 v10, 0x0

    const-string v11, "Could not get native window"

    invoke-direct {v9, v10, v11}, Lcom/sun/glass/ui/monocle/GLException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 81
    :cond_1
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->egl:Lcom/sun/glass/ui/monocle/EGL;

    move-wide v10, v4

    .line 82
    invoke-virtual {v9, v10, v11}, Lcom/sun/glass/ui/monocle/EGL;->eglGetDisplay(J)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglDisplay:J

    .line 83
    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglDisplay:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 84
    new-instance v8, Lcom/sun/glass/ui/monocle/GLException;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->egl:Lcom/sun/glass/ui/monocle/EGL;

    invoke-virtual {v10}, Lcom/sun/glass/ui/monocle/EGL;->eglGetError()I

    move-result v10

    const-string v11, "Could not get EGL display"

    invoke-direct {v9, v10, v11}, Lcom/sun/glass/ui/monocle/GLException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 88
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->egl:Lcom/sun/glass/ui/monocle/EGL;

    move-object v9, v0

    iget-wide v9, v9, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglDisplay:J

    move-object v11, v2

    move-object v12, v3

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sun/glass/ui/monocle/EGL;->eglInitialize(J[I[I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 89
    new-instance v8, Lcom/sun/glass/ui/monocle/GLException;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->egl:Lcom/sun/glass/ui/monocle/EGL;

    invoke-virtual {v10}, Lcom/sun/glass/ui/monocle/EGL;->eglGetError()I

    move-result v10

    const-string v11, "Error initializing EGL"

    invoke-direct {v9, v10, v11}, Lcom/sun/glass/ui/monocle/GLException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 93
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->egl:Lcom/sun/glass/ui/monocle/EGL;

    const/16 v9, 0x30a0

    invoke-virtual {v8, v9}, Lcom/sun/glass/ui/monocle/EGL;->eglBindAPI(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 94
    new-instance v8, Lcom/sun/glass/ui/monocle/GLException;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->egl:Lcom/sun/glass/ui/monocle/EGL;

    invoke-virtual {v10}, Lcom/sun/glass/ui/monocle/EGL;->eglGetError()I

    move-result v10

    const-string v11, "Error binding OPENGL API"

    invoke-direct {v9, v10, v11}, Lcom/sun/glass/ui/monocle/GLException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 98
    :cond_4
    const/4 v8, 0x1

    new-array v8, v8, [I

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    move-object v6, v8

    .line 100
    .local v6, "configCount":[I
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->egl:Lcom/sun/glass/ui/monocle/EGL;

    move-object v9, v0

    iget-wide v9, v9, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglDisplay:J

    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglConfigs:[J

    const/4 v13, 0x1

    move-object v14, v6

    invoke-virtual/range {v8 .. v14}, Lcom/sun/glass/ui/monocle/EGL;->eglChooseConfig(J[I[JI[I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 102
    new-instance v8, Lcom/sun/glass/ui/monocle/GLException;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->egl:Lcom/sun/glass/ui/monocle/EGL;

    invoke-virtual {v10}, Lcom/sun/glass/ui/monocle/EGL;->eglGetError()I

    move-result v10

    const-string v11, "Error choosing EGL config"

    invoke-direct {v9, v10, v11}, Lcom/sun/glass/ui/monocle/GLException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 106
    :cond_5
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->egl:Lcom/sun/glass/ui/monocle/EGL;

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglDisplay:J

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglConfigs:[J

    const/4 v13, 0x0

    aget-wide v12, v12, v13

    move-object v14, v0

    iget-wide v14, v14, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->nativeWindow:J

    const/16 v16, 0x0

    .line 107
    invoke-virtual/range {v9 .. v16}, Lcom/sun/glass/ui/monocle/EGL;->eglCreateWindowSurface(JJJ[I)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglSurface:J

    .line 109
    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglSurface:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    .line 110
    new-instance v8, Lcom/sun/glass/ui/monocle/GLException;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->egl:Lcom/sun/glass/ui/monocle/EGL;

    invoke-virtual {v10}, Lcom/sun/glass/ui/monocle/EGL;->eglGetError()I

    move-result v10

    const-string v11, "Could not get EGL surface"

    invoke-direct {v9, v10, v11}, Lcom/sun/glass/ui/monocle/GLException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 114
    :cond_6
    const/4 v8, 0x0

    new-array v8, v8, [I

    move-object v7, v8

    .line 115
    .local v7, "emptyAttrArray":[I
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->egl:Lcom/sun/glass/ui/monocle/EGL;

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglDisplay:J

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglConfigs:[J

    const/4 v13, 0x0

    aget-wide v12, v12, v13

    const-wide/16 v14, 0x0

    move-object/from16 v16, v7

    invoke-virtual/range {v9 .. v16}, Lcom/sun/glass/ui/monocle/EGL;->eglCreateContext(JJJ[I)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglContext:J

    .line 117
    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglContext:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    .line 118
    new-instance v8, Lcom/sun/glass/ui/monocle/GLException;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->egl:Lcom/sun/glass/ui/monocle/EGL;

    invoke-virtual {v10}, Lcom/sun/glass/ui/monocle/EGL;->eglGetError()I

    move-result v10

    const-string v11, "Could not get EGL context"

    invoke-direct {v9, v10, v11}, Lcom/sun/glass/ui/monocle/GLException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 121
    :cond_7
    return-void
.end method


# virtual methods
.method protected createSurface()V
    .locals 11

    .prologue
    .line 124
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/AcceleratedScreen;
    move-object v2, v1

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->platformGetNativeWindow()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->nativeWindow:J

    .line 125
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->nativeWindow:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 126
    move-object v2, v1

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->egl:Lcom/sun/glass/ui/monocle/EGL;

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglDisplay:J

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglConfigs:[J

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->nativeWindow:J

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/sun/glass/ui/monocle/EGL;->_eglCreateWindowSurface(JJJ[I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglSurface:J

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "[AcceleratedScreen] Can\'t create surface when we have no native Window"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableRendering(Z)V
    .locals 12

    .prologue
    .line 140
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/AcceleratedScreen;
    move v2, p1

    .local v2, "flag":Z
    move v3, v2

    if-eqz v3, :cond_0

    .line 141
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->egl:Lcom/sun/glass/ui/monocle/EGL;

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglDisplay:J

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglSurface:J

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglSurface:J

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglContext:J

    invoke-virtual/range {v3 .. v11}, Lcom/sun/glass/ui/monocle/EGL;->eglMakeCurrent(JJJJ)Z

    move-result v3

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->egl:Lcom/sun/glass/ui/monocle/EGL;

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglDisplay:J

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglContext:J

    invoke-virtual/range {v3 .. v11}, Lcom/sun/glass/ui/monocle/EGL;->eglMakeCurrent(JJJJ)Z

    move-result v3

    goto :goto_0
.end method

.method protected getEGLHandle()J
    .locals 3

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AcceleratedScreen;
    sget-wide v1, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglLibraryHandle:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AcceleratedScreen;
    return-wide v0
.end method

.method public getGLHandle()J
    .locals 3

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AcceleratedScreen;
    sget-wide v1, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->glesLibraryHandle:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AcceleratedScreen;
    return-wide v0
.end method

.method initPlatformLibraries()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .prologue
    .line 154
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/AcceleratedScreen;
    sget-boolean v2, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->initialized:Z

    if-nez v2, :cond_2

    .line 155
    sget-object v2, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->ls:Lcom/sun/glass/ui/monocle/LinuxSystem;

    const-string v3, "libGLESv2.so"

    const/16 v4, 0x101

    invoke-virtual {v2, v3, v4}, Lcom/sun/glass/ui/monocle/LinuxSystem;->dlopen(Ljava/lang/String;I)J

    move-result-wide v2

    sput-wide v2, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->glesLibraryHandle:J

    .line 157
    sget-wide v2, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->glesLibraryHandle:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 158
    new-instance v2, Ljava/lang/UnsatisfiedLinkError;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Error loading libGLESv2.so"

    invoke-direct {v3, v4}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :cond_0
    sget-object v2, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->ls:Lcom/sun/glass/ui/monocle/LinuxSystem;

    const-string v3, "libEGL.so"

    const/16 v4, 0x101

    invoke-virtual {v2, v3, v4}, Lcom/sun/glass/ui/monocle/LinuxSystem;->dlopen(Ljava/lang/String;I)J

    move-result-wide v2

    sput-wide v2, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglLibraryHandle:J

    .line 162
    sget-wide v2, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglLibraryHandle:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 163
    new-instance v2, Ljava/lang/UnsatisfiedLinkError;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Error loading libEGL.so"

    invoke-direct {v3, v4}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    :cond_1
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->initialized:Z

    .line 167
    :cond_2
    const/4 v2, 0x1

    move v1, v2

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/AcceleratedScreen;
    return v1
.end method

.method protected platformGetNativeDisplay()J
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AcceleratedScreen;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AcceleratedScreen;
    return-wide v0
.end method

.method protected platformGetNativeWindow()J
    .locals 3

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AcceleratedScreen;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AcceleratedScreen;
    return-wide v0
.end method

.method public swapBuffers()Z
    .locals 11

    .prologue
    .line 187
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/AcceleratedScreen;
    const/4 v5, 0x0

    move v2, v5

    .line 188
    .local v2, "result":Z
    sget-object v5, Lcom/sun/glass/ui/monocle/NativeScreen;->framebufferSwapLock:Ljava/lang/Object;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v3, v6

    monitor-enter v5

    .line 189
    move-object v5, v1

    :try_start_0
    iget-object v5, v5, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->egl:Lcom/sun/glass/ui/monocle/EGL;

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglDisplay:J

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglSurface:J

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/glass/ui/monocle/EGL;->eglSwapBuffers(JJ)Z

    move-result v5

    move v2, v5

    .line 191
    move v5, v2

    if-nez v5, :cond_0

    .line 192
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[WARNING] this shouldn\'t happen. swapBuffers failed with eglSurface "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglSurface:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", recreate surface and try again."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->createSurface()V

    .line 194
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->egl:Lcom/sun/glass/ui/monocle/EGL;

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglDisplay:J

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->eglSurface:J

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/glass/ui/monocle/EGL;->eglSwapBuffers(JJ)Z

    move-result v5

    move v2, v5

    .line 196
    :cond_0
    move-object v5, v3

    monitor-exit v5

    .line 197
    move v5, v2

    move v1, v5

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/AcceleratedScreen;
    return v1

    .line 196
    .restart local v1    # "this":Lcom/sun/glass/ui/monocle/AcceleratedScreen;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

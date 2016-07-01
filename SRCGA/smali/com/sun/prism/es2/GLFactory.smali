.class abstract Lcom/sun/prism/es2/GLFactory;
.super Ljava/lang/Object;
.source "GLFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/prism/es2/GLFactory$FactoryLoader;
    }
.end annotation


# static fields
.field private static final platformFactory:Lcom/sun/prism/es2/GLFactory;


# instance fields
.field gl2:Z

.field nativeCtxInfo:J

.field private shareCtx:Lcom/sun/prism/es2/GLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 65
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isUnix()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 66
    const-string v1, "eglx11"

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->getEmbeddedType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    const-string v1, "com.sun.prism.es2.EGLX11GLFactory"

    move-object v0, v1

    .line 93
    .local v0, "factoryClassName":Ljava/lang/String;
    :goto_0
    sget-boolean v1, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v1, :cond_0

    .line 94
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLFactory using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    :cond_0
    move-object v1, v0

    if-nez v1, :cond_b

    const/4 v1, 0x0

    .line 97
    :goto_1
    sput-object v1, Lcom/sun/prism/es2/GLFactory;->platformFactory:Lcom/sun/prism/es2/GLFactory;

    .line 98
    return-void

    .line 68
    .end local v0    # "factoryClassName":Ljava/lang/String;
    :cond_1
    const-string v1, "eglfb"

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->getEmbeddedType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    const-string v1, "com.sun.prism.es2.EGLFBGLFactory"

    move-object v0, v1

    .restart local v0    # "factoryClassName":Ljava/lang/String;
    goto :goto_0

    .line 70
    .end local v0    # "factoryClassName":Ljava/lang/String;
    :cond_2
    const-string v1, "monocle"

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->getEmbeddedType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    const-string v1, "com.sun.prism.es2.MonocleGLFactory"

    move-object v0, v1

    .restart local v0    # "factoryClassName":Ljava/lang/String;
    goto :goto_0

    .line 73
    .end local v0    # "factoryClassName":Ljava/lang/String;
    :cond_3
    const-string v1, "com.sun.prism.es2.X11GLFactory"

    move-object v0, v1

    .restart local v0    # "factoryClassName":Ljava/lang/String;
    goto :goto_0

    .line 74
    .end local v0    # "factoryClassName":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isWindows()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 75
    const-string v1, "com.sun.prism.es2.WinGLFactory"

    move-object v0, v1

    .restart local v0    # "factoryClassName":Ljava/lang/String;
    goto :goto_0

    .line 76
    .end local v0    # "factoryClassName":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 77
    const-string v1, "com.sun.prism.es2.MacGLFactory"

    move-object v0, v1

    .restart local v0    # "factoryClassName":Ljava/lang/String;
    goto :goto_0

    .line 78
    .end local v0    # "factoryClassName":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isIOS()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 79
    const-string v1, "com.sun.prism.es2.IOSGLFactory"

    move-object v0, v1

    .restart local v0    # "factoryClassName":Ljava/lang/String;
    goto :goto_0

    .line 80
    .end local v0    # "factoryClassName":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isAndroid()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 81
    const-string v1, "eglfb"

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->getEmbeddedType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 82
    const-string v1, "com.sun.prism.es2.EGLFBGLFactory"

    move-object v0, v1

    .restart local v0    # "factoryClassName":Ljava/lang/String;
    goto :goto_0

    .line 83
    .end local v0    # "factoryClassName":Ljava/lang/String;
    :cond_8
    const-string v1, "monocle"

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->getEmbeddedType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 84
    const-string v1, "com.sun.prism.es2.MonocleGLFactory"

    move-object v0, v1

    .restart local v0    # "factoryClassName":Ljava/lang/String;
    goto/16 :goto_0

    .line 86
    .end local v0    # "factoryClassName":Ljava/lang/String;
    :cond_9
    const/4 v1, 0x0

    move-object v0, v1

    .line 87
    .restart local v0    # "factoryClassName":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "GLFactory.static - Only eglfb supported for Android!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    .end local v0    # "factoryClassName":Ljava/lang/String;
    :cond_a
    const/4 v1, 0x0

    move-object v0, v1

    .line 91
    .restart local v0    # "factoryClassName":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLFactory.static - No Platform Factory for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "os.name"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    :cond_b
    new-instance v1, Lcom/sun/prism/es2/GLFactory$FactoryLoader;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/prism/es2/GLFactory$FactoryLoader;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/prism/es2/GLFactory;

    goto/16 :goto_1
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/prism/es2/GLFactory;->gl2:Z

    .line 50
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/prism/es2/GLFactory;->shareCtx:Lcom/sun/prism/es2/GLContext;

    .line 57
    return-void
.end method

.method static getFactory()Lcom/sun/prism/es2/GLFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    sget-object v1, Lcom/sun/prism/es2/GLFactory;->platformFactory:Lcom/sun/prism/es2/GLFactory;

    if-eq v0, v1, :cond_0

    .line 125
    sget-object v0, Lcom/sun/prism/es2/GLFactory;->platformFactory:Lcom/sun/prism/es2/GLFactory;

    return-object v0

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "No native platform GLFactory available."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private inBlackList(Lcom/sun/prism/es2/GLGPUInfo;)Z
    .locals 4

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLFactory;
    move-object v1, p1

    .local v1, "gpuInfo":Lcom/sun/prism/es2/GLGPUInfo;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/prism/es2/GLFactory;->getBlackList()[Lcom/sun/prism/es2/GLGPUInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sun/prism/es2/GLFactory;->matches(Lcom/sun/prism/es2/GLGPUInfo;[Lcom/sun/prism/es2/GLGPUInfo;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/GLFactory;
    return v0
.end method

.method private inPreQualificationFilter(Lcom/sun/prism/es2/GLGPUInfo;)Z
    .locals 5

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLFactory;
    move-object v1, p1

    .local v1, "gpuInfo":Lcom/sun/prism/es2/GLGPUInfo;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/prism/es2/GLFactory;->getPreQualificationFilter()[Lcom/sun/prism/es2/GLGPUInfo;

    move-result-object v3

    move-object v2, v3

    .line 157
    .local v2, "preQualificationFilter":[Lcom/sun/prism/es2/GLGPUInfo;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 159
    const/4 v3, 0x1

    move v0, v3

    .line 161
    .end local v0    # "this":Lcom/sun/prism/es2/GLFactory;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/prism/es2/GLFactory;
    :cond_0
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/sun/prism/es2/GLFactory;->matches(Lcom/sun/prism/es2/GLGPUInfo;[Lcom/sun/prism/es2/GLGPUInfo;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method private static matches(Lcom/sun/prism/es2/GLGPUInfo;[Lcom/sun/prism/es2/GLGPUInfo;)Z
    .locals 6

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "gpuInfo":Lcom/sun/prism/es2/GLGPUInfo;
    move-object v1, p1

    .local v1, "gpuInfoArr":[Lcom/sun/prism/es2/GLGPUInfo;
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 146
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v1

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 147
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/sun/prism/es2/GLGPUInfo;->matches(Lcom/sun/prism/es2/GLGPUInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    const/4 v3, 0x1

    move v0, v3

    .line 152
    .end local v0    # "gpuInfo":Lcom/sun/prism/es2/GLGPUInfo;
    .end local v2    # "i":I
    :goto_1
    return v0

    .line 146
    .restart local v0    # "gpuInfo":Lcom/sun/prism/es2/GLGPUInfo;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    .end local v2    # "i":I
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method private static native nGetGLRenderer(J)Ljava/lang/String;
.end method

.method private static native nGetGLVendor(J)Ljava/lang/String;
.end method

.method private static native nGetGLVersion(J)Ljava/lang/String;
.end method

.method private static native nIsGLExtensionSupported(JLjava/lang/String;)Z
.end method

.method private static readGPUInfo(J)Lcom/sun/prism/es2/GLGPUInfo;
    .locals 10

    .prologue
    .line 138
    move-wide v0, p0

    .local v0, "nativeCtxInfo":J
    move-wide v4, v0

    invoke-static {v4, v5}, Lcom/sun/prism/es2/GLFactory;->nGetGLVendor(J)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 139
    .local v2, "glVendor":Ljava/lang/String;
    move-wide v4, v0

    invoke-static {v4, v5}, Lcom/sun/prism/es2/GLFactory;->nGetGLRenderer(J)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 140
    .local v3, "glRenderer":Ljava/lang/String;
    new-instance v4, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    .line 141
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .end local v0    # "nativeCtxInfo":J
    return-object v0
.end method


# virtual methods
.method abstract createDummyGLDrawable(Lcom/sun/prism/es2/GLPixelFormat;)Lcom/sun/prism/es2/GLDrawable;
.end method

.method abstract createGLContext(J)Lcom/sun/prism/es2/GLContext;
.end method

.method abstract createGLContext(Lcom/sun/prism/es2/GLDrawable;Lcom/sun/prism/es2/GLPixelFormat;Lcom/sun/prism/es2/GLContext;Z)Lcom/sun/prism/es2/GLContext;
.end method

.method abstract createGLDrawable(JLcom/sun/prism/es2/GLPixelFormat;)Lcom/sun/prism/es2/GLDrawable;
.end method

.method abstract createGLPixelFormat(JLcom/sun/prism/es2/GLPixelFormat$Attributes;)Lcom/sun/prism/es2/GLPixelFormat;
.end method

.method abstract getAdapterCount()I
.end method

.method abstract getAdapterOrdinal(J)I
.end method

.method abstract getBlackList()[Lcom/sun/prism/es2/GLGPUInfo;
.end method

.method abstract getPreQualificationFilter()[Lcom/sun/prism/es2/GLGPUInfo;
.end method

.method getShareContext()Lcom/sun/prism/es2/GLContext;
    .locals 6

    .prologue
    .line 203
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLFactory;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/prism/es2/GLFactory;->shareCtx:Lcom/sun/prism/es2/GLContext;

    if-nez v2, :cond_0

    .line 204
    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/prism/es2/GLFactory;->nativeCtxInfo:J

    invoke-virtual {v3, v4, v5}, Lcom/sun/prism/es2/GLFactory;->createGLContext(J)Lcom/sun/prism/es2/GLContext;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/prism/es2/GLFactory;->shareCtx:Lcom/sun/prism/es2/GLContext;

    .line 206
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/prism/es2/GLFactory;->shareCtx:Lcom/sun/prism/es2/GLContext;

    move-object v1, v2

    .end local v1    # "this":Lcom/sun/prism/es2/GLFactory;
    return-object v1
.end method

.method abstract initialize(Ljava/lang/Class;Lcom/sun/prism/es2/GLPixelFormat$Attributes;)Z
.end method

.method isGL2()Z
    .locals 2

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLFactory;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/es2/GLFactory;->gl2:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/GLFactory;
    return v0
.end method

.method isGLExtensionSupported(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLFactory;
    move-object v1, p1

    .local v1, "sglExtStr":Ljava/lang/String;
    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/prism/es2/GLFactory;->nativeCtxInfo:J

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/sun/prism/es2/GLFactory;->nIsGLExtensionSupported(JLjava/lang/String;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/GLFactory;
    return v0
.end method

.method isGLGPUQualify()Z
    .locals 4

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLFactory;
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/prism/es2/GLFactory;->nativeCtxInfo:J

    invoke-virtual {v1, v2, v3}, Lcom/sun/prism/es2/GLFactory;->isQualified(J)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/GLFactory;
    return v0
.end method

.method isNPOTSupported()Z
    .locals 3

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLFactory;
    move-object v1, v0

    const-string v2, "GL_ARB_texture_non_power_of_two"

    invoke-virtual {v1, v2}, Lcom/sun/prism/es2/GLFactory;->isGLExtensionSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    const-string v2, "GL_OES_texture_npot"

    .line 220
    invoke-virtual {v1, v2}, Lcom/sun/prism/es2/GLFactory;->isGLExtensionSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/GLFactory;
    return v0

    .restart local v0    # "this":Lcom/sun/prism/es2/GLFactory;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isQualified(J)Z
    .locals 7

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLFactory;
    move-wide v1, p1

    .local v1, "nativeCtxInfo":J
    move-wide v4, v1

    invoke-static {v4, v5}, Lcom/sun/prism/es2/GLFactory;->readGPUInfo(J)Lcom/sun/prism/es2/GLGPUInfo;

    move-result-object v4

    move-object v3, v4

    .line 174
    .local v3, "gpuInfo":Lcom/sun/prism/es2/GLGPUInfo;
    move-object v4, v3

    iget-object v4, v4, Lcom/sun/prism/es2/GLGPUInfo;->vendor:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v4, v3

    iget-object v4, v4, Lcom/sun/prism/es2/GLGPUInfo;->model:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v4, v3

    iget-object v4, v4, Lcom/sun/prism/es2/GLGPUInfo;->vendor:Ljava/lang/String;

    const-string v5, "unknown"

    .line 175
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v3

    iget-object v4, v4, Lcom/sun/prism/es2/GLGPUInfo;->model:Ljava/lang/String;

    const-string v5, "unknown"

    .line 176
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 179
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    .line 182
    .end local v0    # "this":Lcom/sun/prism/es2/GLFactory;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/prism/es2/GLFactory;
    :cond_1
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lcom/sun/prism/es2/GLFactory;->inPreQualificationFilter(Lcom/sun/prism/es2/GLGPUInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lcom/sun/prism/es2/GLFactory;->inBlackList(Lcom/sun/prism/es2/GLGPUInfo;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method printDriverInformation(I)V
    .locals 7

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLFactory;
    move v1, p1

    .local v1, "adapter":I
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Graphics Vendor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/prism/es2/GLFactory;->nativeCtxInfo:J

    invoke-static {v4, v5}, Lcom/sun/prism/es2/GLFactory;->nGetGLVendor(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 232
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "       Renderer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/prism/es2/GLFactory;->nativeCtxInfo:J

    invoke-static {v4, v5}, Lcom/sun/prism/es2/GLFactory;->nGetGLRenderer(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 233
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "        Version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/prism/es2/GLFactory;->nativeCtxInfo:J

    invoke-static {v4, v5}, Lcom/sun/prism/es2/GLFactory;->nGetGLVersion(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method abstract updateDeviceDetails(Ljava/util/HashMap;)V
.end method

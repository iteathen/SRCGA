.class public abstract Lcom/sun/glass/ui/monocle/NativePlatformFactory;
.super Ljava/lang/Object;
.source "NativePlatformFactory.java"


# static fields
.field private static final majorVersion:I = 0x1

.field private static final minorVersion:I

.field private static platform:Lcom/sun/glass/ui/monocle/NativePlatform;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/NativePlatformFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->lambda$getNativePlatform$86()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;
    .locals 13

    .prologue
    .line 83
    const-class v11, Lcom/sun/glass/ui/monocle/NativePlatformFactory;

    monitor-enter v11

    :try_start_0
    sget-object v6, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->platform:Lcom/sun/glass/ui/monocle/NativePlatform;

    if-nez v6, :cond_6

    .line 84
    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v6

    .line 85
    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v0, v6

    .line 87
    .local v0, "platformFactoryProperty":Ljava/lang/String;
    move-object v6, v0

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 88
    .local v1, "platformFactories":[Ljava/lang/String;
    const/4 v6, 0x0

    move v2, v6

    .local v2, "i":I
    :goto_0
    move v6, v2

    move-object v7, v1

    array-length v7, v7

    if-ge v6, v7, :cond_5

    .line 89
    move-object v6, v1

    move v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 91
    .local v3, "factoryName":Ljava/lang/String;
    move-object v6, v3

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 92
    move-object v6, v3

    move-object v4, v6

    .line 97
    .local v4, "factoryClassName":Ljava/lang/String;
    :goto_1
    sget-object v6, Lcom/sun/glass/ui/monocle/MonocleSettings;->settings:Lcom/sun/glass/ui/monocle/MonocleSettings;

    iget-boolean v6, v6, Lcom/sun/glass/ui/monocle/MonocleSettings;->tracePlatformConfig:Z

    if-eqz v6, :cond_0

    .line 98
    const-string v6, "Trying platform %s with class %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-object v10, v3

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x1

    move-object v10, v4

    aput-object v10, v8, v9

    invoke-static {v6, v7}, Lcom/sun/glass/ui/monocle/MonocleTrace;->traceConfig(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_0
    move-object v6, v4

    .line 103
    :try_start_1
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 104
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/glass/ui/monocle/NativePlatformFactory;

    move-object v5, v6

    .line 105
    .local v5, "npf":Lcom/sun/glass/ui/monocle/NativePlatformFactory;
    move-object v6, v5

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->matches()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v5

    .line 106
    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getMajorVersion()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    move-object v6, v5

    .line 107
    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getMinorVersion()I

    move-result v6

    if-nez v6, :cond_3

    .line 108
    move-object v6, v5

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->createNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v6

    sput-object v6, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->platform:Lcom/sun/glass/ui/monocle/NativePlatform;

    .line 109
    sget-object v6, Lcom/sun/glass/ui/monocle/MonocleSettings;->settings:Lcom/sun/glass/ui/monocle/MonocleSettings;

    iget-boolean v6, v6, Lcom/sun/glass/ui/monocle/MonocleSettings;->tracePlatformConfig:Z

    if-eqz v6, :cond_1

    .line 110
    const-string v6, "Matched %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-object v10, v3

    aput-object v10, v8, v9

    invoke-static {v6, v7}, Lcom/sun/glass/ui/monocle/MonocleTrace;->traceConfig(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    :cond_1
    sget-object v6, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->platform:Lcom/sun/glass/ui/monocle/NativePlatform;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    .line 126
    .end local v0    # "platformFactoryProperty":Ljava/lang/String;
    .end local v1    # "platformFactories":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "factoryName":Ljava/lang/String;
    .end local v4    # "factoryClassName":Ljava/lang/String;
    .end local v5    # "npf":Lcom/sun/glass/ui/monocle/NativePlatformFactory;
    :goto_2
    monitor-exit v11

    return-object v0

    .line 94
    .restart local v0    # "platformFactoryProperty":Ljava/lang/String;
    .restart local v1    # "platformFactories":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "factoryName":Ljava/lang/String;
    :cond_2
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.sun.glass.ui.monocle."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "PlatformFactory"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .restart local v4    # "factoryClassName":Ljava/lang/String;
    goto :goto_1

    .line 120
    .line 88
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 114
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 115
    .local v5, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/sun/glass/ui/monocle/MonocleSettings;->settings:Lcom/sun/glass/ui/monocle/MonocleSettings;

    iget-boolean v6, v6, Lcom/sun/glass/ui/monocle/MonocleSettings;->tracePlatformConfig:Z

    if-eqz v6, :cond_4

    .line 116
    const-string v6, "Failed to create platform %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-object v10, v4

    aput-object v10, v8, v9

    invoke-static {v6, v7}, Lcom/sun/glass/ui/monocle/MonocleTrace;->traceConfig(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    :cond_4
    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 83
    .end local v1    # "platformFactories":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "factoryName":Ljava/lang/String;
    .end local v4    # "factoryClassName":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v11

    .end local v0    # "platformFactoryProperty":Ljava/lang/String;
    throw v0

    .line 122
    .restart local v0    # "platformFactoryProperty":Ljava/lang/String;
    .restart local v1    # "platformFactories":[Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_5
    :try_start_3
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot load a native platform from: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 126
    .end local v0    # "platformFactoryProperty":Ljava/lang/String;
    .end local v1    # "platformFactories":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_6
    sget-object v6, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->platform:Lcom/sun/glass/ui/monocle/NativePlatform;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v6

    goto :goto_2
.end method

.method private static synthetic lambda$getNativePlatform$86()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    const-string v0, "monocle.platform"

    const-string v1, "MX6,OMAP,Dispman,Android,X11,Linux,Headless"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract createNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;
.end method

.method protected abstract getMajorVersion()I
.end method

.method protected abstract getMinorVersion()I
.end method

.method protected abstract matches()Z
.end method

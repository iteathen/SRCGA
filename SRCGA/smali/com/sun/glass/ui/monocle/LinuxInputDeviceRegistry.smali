.class Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;
.super Lcom/sun/glass/ui/monocle/InputDeviceRegistry;
.source "LinuxInputDeviceRegistry.java"


# direct methods
.method constructor <init>(Z)V
    .locals 7

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;
    move v1, p1

    .local v1, "headless":Z
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/glass/ui/monocle/InputDeviceRegistry;-><init>()V

    .line 38
    move v4, v1

    if-eqz v4, :cond_0

    .line 40
    .line 75
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v2, v4

    .line 43
    .local v2, "deviceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Lcom/sun/glass/ui/monocle/LinuxInputDevice;>;"
    move-object v4, v0

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry$$Lambda$1;->lambdaFactory$(Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;Ljava/util/Map;)Lcom/sun/glass/ui/monocle/UdevListener;

    move-result-object v4

    move-object v3, v4

    .line 72
    .local v3, "udevListener":Lcom/sun/glass/ui/monocle/UdevListener;
    invoke-static {}, Lcom/sun/glass/ui/monocle/Udev;->getInstance()Lcom/sun/glass/ui/monocle/Udev;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/Udev;->addListener(Lcom/sun/glass/ui/monocle/UdevListener;)V

    .line 74
    const-string v4, "input"

    invoke-static {v4}, Lcom/sun/glass/ui/monocle/SysFS;->triggerUdevNotification(Ljava/lang/String;)V

    .line 75
    goto :goto_0
.end method

.method static synthetic access$lambda$0(Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;->lambda$new$96(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private addDeviceInternal(Lcom/sun/glass/ui/monocle/LinuxInputDevice;Ljava/lang/String;)Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    .locals 9

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;
    move-object v1, p1

    .local v1, "device":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;->createInputProcessor(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)Lcom/sun/glass/ui/monocle/LinuxInputProcessor;

    move-result-object v5

    move-object v3, v5

    .line 96
    .local v3, "processor":Lcom/sun/glass/ui/monocle/LinuxInputProcessor;
    move-object v5, v3

    if-nez v5, :cond_0

    .line 97
    const/4 v5, 0x0

    move-object v0, v5

    .line 105
    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;
    :goto_0
    return-object v0

    .line 99
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;
    :cond_0
    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->setInputProcessor(Lcom/sun/glass/ui/monocle/LinuxInputProcessor;)V

    .line 100
    new-instance v5, Ljava/lang/Thread;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object v4, v5

    .line 101
    .local v4, "thread":Ljava/lang/Thread;
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 102
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 103
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 104
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;->devices:Ljavafx/collections/ObservableSet;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableSet;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 105
    move-object v5, v1

    move-object v0, v5

    goto :goto_0
.end method

.method private createDevice(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sun/glass/ui/monocle/LinuxInputDevice;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;
    move-object v1, p1

    .local v1, "devNode":Ljava/io/File;
    move-object v2, p2

    .local v2, "sysPath":Ljava/io/File;
    move-object v3, p3

    .local v3, "udevManifest":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lcom/sun/glass/ui/monocle/LinuxInputDevice;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;-><init>(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)V

    move-object v4, v5

    .line 83
    .local v4, "device":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v5, v0

    move-object v6, v4

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Linux input: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;->addDeviceInternal(Lcom/sun/glass/ui/monocle/LinuxInputDevice;Ljava/lang/String;)Lcom/sun/glass/ui/monocle/LinuxInputDevice;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;
    return-object v0
.end method

.method private createInputProcessor(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)Lcom/sun/glass/ui/monocle/LinuxInputProcessor;
    .locals 8

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;
    move-object v1, p1

    .local v1, "device":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->isTouch()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 119
    move-object v4, v1

    const-string v5, "abs"

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->getCapability(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v4

    move-object v2, v4

    .line 120
    .local v2, "absCaps":Ljava/util/BitSet;
    move-object v4, v2

    const/16 v5, 0x35

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    const/16 v5, 0x36

    .line 121
    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 122
    .local v3, "isMT":Z
    move v4, v3

    if-eqz v4, :cond_2

    .line 123
    move-object v4, v2

    const/16 v5, 0x39

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 124
    new-instance v4, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/glass/ui/monocle/LinuxStatefulMultiTouchProcessor;-><init>(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)V

    move-object v0, v4

    .line 138
    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;
    .end local v2    # "absCaps":Ljava/util/BitSet;
    .end local v3    # "isMT":Z
    :goto_1
    return-object v0

    .line 121
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;
    .restart local v2    # "absCaps":Ljava/util/BitSet;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 126
    .restart local v3    # "isMT":Z
    :cond_1
    new-instance v4, Lcom/sun/glass/ui/monocle/LinuxStatelessMultiTouchProcessor;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/glass/ui/monocle/LinuxStatelessMultiTouchProcessor;-><init>(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)V

    move-object v0, v4

    goto :goto_1

    .line 129
    :cond_2
    new-instance v4, Lcom/sun/glass/ui/monocle/LinuxSimpleTouchProcessor;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/glass/ui/monocle/LinuxSimpleTouchProcessor;-><init>(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)V

    move-object v0, v4

    goto :goto_1

    .line 131
    .end local v2    # "absCaps":Ljava/util/BitSet;
    .end local v3    # "isMT":Z
    :cond_3
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->isRelative()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 132
    new-instance v4, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lcom/sun/glass/ui/monocle/LinuxMouseProcessor;-><init>()V

    move-object v0, v4

    goto :goto_1

    .line 134
    :cond_4
    move-object v4, v1

    const-string v5, "key"

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->getCapability(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v4

    move-object v2, v4

    .line 135
    .local v2, "keyCaps":Ljava/util/BitSet;
    move-object v4, v2

    if-eqz v4, :cond_5

    move-object v4, v2

    invoke-virtual {v4}, Ljava/util/BitSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 136
    new-instance v4, Lcom/sun/glass/ui/monocle/LinuxKeyProcessor;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lcom/sun/glass/ui/monocle/LinuxKeyProcessor;-><init>()V

    move-object v0, v4

    goto :goto_1

    .line 138
    :cond_5
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method private synthetic lambda$new$96(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 15

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;
    move-object/from16 v1, p1

    .local v1, "deviceMap":Ljava/util/Map;
    move-object/from16 v2, p2

    .local v2, "action":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "event":Ljava/util/Map;
    move-object v10, v3

    const-string v11, "SUBSYSTEM"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v4, v10

    .line 45
    .local v4, "subsystem":Ljava/lang/String;
    move-object v10, v3

    const-string v11, "DEVPATH"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v5, v10

    .line 46
    .local v5, "devPath":Ljava/lang/String;
    move-object v10, v3

    const-string v11, "DEVNAME"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v6, v10

    .line 47
    .local v6, "devName":Ljava/lang/String;
    move-object v10, v4

    if-eqz v10, :cond_1

    move-object v10, v4

    const-string v11, "input"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v5

    if-eqz v10, :cond_1

    move-object v10, v6

    if-eqz v10, :cond_1

    .line 50
    :try_start_0
    new-instance v10, Ljava/io/File;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string v12, "/sys"

    move-object v13, v5

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v10

    .line 51
    .local v7, "sysPath":Ljava/io/File;
    move-object v10, v2

    const-string v11, "add"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    move-object v10, v2

    const-string v11, "change"

    .line 52
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v1

    move-object v11, v7

    .line 53
    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 54
    :cond_0
    new-instance v10, Ljava/io/File;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v6

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v10

    .line 55
    .local v8, "devNode":Ljava/io/File;
    move-object v10, v0

    move-object v11, v8

    move-object v12, v7

    move-object v13, v3

    invoke-direct {v10, v11, v12, v13}, Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;->createDevice(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)Lcom/sun/glass/ui/monocle/LinuxInputDevice;

    move-result-object v10

    move-object v9, v10

    .line 57
    .local v9, "device":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v10, v9

    if-eqz v10, :cond_1

    .line 58
    move-object v10, v1

    move-object v11, v7

    move-object v12, v9

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 60
    .line 69
    .line 71
    .end local v7    # "sysPath":Ljava/io/File;
    .end local v8    # "devNode":Ljava/io/File;
    .end local v9    # "device":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    :cond_1
    :goto_0
    return-void

    .line 60
    .restart local v7    # "sysPath":Ljava/io/File;
    :cond_2
    move-object v10, v2

    const-string v11, "remove"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 61
    move-object v10, v1

    move-object v11, v7

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/glass/ui/monocle/LinuxInputDevice;

    move-object v8, v10

    .line 62
    .local v8, "device":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v10, v1

    move-object v11, v7

    invoke-interface {v10, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 63
    move-object v10, v8

    if-eqz v10, :cond_1

    .line 64
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;->devices:Ljavafx/collections/ObservableSet;

    move-object v11, v8

    invoke-interface {v10, v11}, Ljavafx/collections/ObservableSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    goto :goto_0

    .line 67
    .end local v7    # "sysPath":Ljava/io/File;
    .end local v8    # "device":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    :catch_0
    move-exception v10

    move-object v7, v10

    .line 68
    .local v7, "e":Ljava/io/IOException;
    move-object v10, v7

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method addDevice(Lcom/sun/glass/ui/monocle/LinuxInputDevice;Ljava/lang/String;)Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    .locals 8

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;
    move-object v1, p1

    .local v1, "device":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    move-object v3, v4

    .line 88
    .local v3, "security":Ljava/lang/SecurityManager;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 89
    move-object v4, v3

    new-instance v5, Ljava/security/AllPermission;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/security/AllPermission;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 91
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;->addDeviceInternal(Lcom/sun/glass/ui/monocle/LinuxInputDevice;Ljava/lang/String;)Lcom/sun/glass/ui/monocle/LinuxInputDevice;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;
    return-object v0
.end method

.method removeDevice(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)V
    .locals 7

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;
    move-object v1, p1

    .local v1, "device":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    move-object v2, v3

    .line 111
    .local v2, "security":Ljava/lang/SecurityManager;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 112
    move-object v3, v2

    new-instance v4, Ljava/security/AllPermission;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/security/AllPermission;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 114
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;->devices:Ljavafx/collections/ObservableSet;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 115
    return-void
.end method

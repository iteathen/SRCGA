.class Lcom/sun/glass/ui/monocle/GetEvent;
.super Ljava/lang/Object;
.source "GetEvent.java"


# static fields
.field private static devices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static udevListener:Lcom/sun/glass/ui/monocle/UdevListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashSet;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sun/glass/ui/monocle/GetEvent;->devices:Ljava/util/Set;

    .line 44
    invoke-static {}, Lcom/sun/glass/ui/monocle/GetEvent$$Lambda$1;->lambdaFactory$()Lcom/sun/glass/ui/monocle/UdevListener;

    move-result-object v0

    sput-object v0, Lcom/sun/glass/ui/monocle/GetEvent;->udevListener:Lcom/sun/glass/ui/monocle/UdevListener;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/GetEvent;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/glass/ui/monocle/GetEvent;->lambda$static$93(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static synthetic lambda$static$93(Ljava/lang/String;Ljava/util/Map;)V
    .locals 20

    .prologue
    .line 45
    move-object/from16 v0, p0

    .local v0, "action":Ljava/lang/String;
    move-object/from16 v1, p1

    .local v1, "event":Ljava/util/Map;
    move-object v12, v1

    const-string v13, "SUBSYSTEM"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v2, v12

    .line 46
    .local v2, "subsystem":Ljava/lang/String;
    move-object v12, v1

    const-string v13, "DEVPATH"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v3, v12

    .line 47
    .local v3, "devPath":Ljava/lang/String;
    move-object v12, v2

    if-eqz v12, :cond_5

    move-object v12, v2

    const-string v13, "input"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    move-object v12, v3

    if-eqz v12, :cond_5

    .line 51
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "%1$ts.%1$tL Received UEVENT:\n"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x0

    new-instance v17, Ljava/util/Date;

    move-object/from16 v19, v17

    move-object/from16 v17, v19

    move-object/from16 v18, v19

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    aput-object v17, v15, v16

    invoke-virtual {v12, v13, v14}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v12

    .line 53
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v14, v1

    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v4, v12

    .line 54
    .local v4, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v12, v4

    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 55
    move-object v12, v4

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v5, v12

    :goto_0
    move-object v12, v5

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    move-object v12, v5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v6, v12

    .line 56
    .local v6, "key":Ljava/lang/String;
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "  %s=\'%s\'\n"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x0

    move-object/from16 v17, v6

    aput-object v17, v15, v16

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x1

    move-object/from16 v17, v1

    move-object/from16 v18, v6

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v12, v13, v14}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v12

    .line 57
    goto :goto_0

    .line 61
    .end local v6    # "key":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v12, Ljava/io/File;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const-string v14, "/sys"

    move-object v15, v3

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v12

    .line 62
    .local v5, "sysPath":Ljava/io/File;
    move-object v12, v1

    const-string v13, "DEVNAME"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v6, v12

    .line 63
    .local v6, "devNode":Ljava/lang/String;
    move-object v12, v6

    if-nez v12, :cond_1

    .line 64
    .line 110
    .end local v4    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "sysPath":Ljava/io/File;
    .end local v6    # "devNode":Ljava/lang/String;
    :goto_1
    return-void

    .line 66
    .restart local v4    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "sysPath":Ljava/io/File;
    .restart local v6    # "devNode":Ljava/lang/String;
    :cond_1
    move-object v12, v0

    const-string v13, "add"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    move-object v12, v0

    const-string v13, "change"

    .line 67
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    sget-object v12, Lcom/sun/glass/ui/monocle/GetEvent;->devices:Ljava/util/Set;

    move-object v13, v5

    .line 68
    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 69
    :cond_2
    new-instance v12, Lcom/sun/glass/ui/monocle/LinuxInputDevice;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    new-instance v14, Ljava/io/File;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v6

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v15, v5

    move-object/from16 v16, v1

    invoke-direct/range {v13 .. v16}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;-><init>(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)V

    move-object v7, v12

    .line 71
    .local v7, "device":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v12, v7

    new-instance v13, Lcom/sun/glass/ui/monocle/LinuxInputProcessor$Logger;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Lcom/sun/glass/ui/monocle/LinuxInputProcessor$Logger;-><init>()V

    invoke-virtual {v12, v13}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->setInputProcessor(Lcom/sun/glass/ui/monocle/LinuxInputProcessor;)V

    .line 72
    new-instance v12, Ljava/lang/Thread;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v14, v7

    invoke-direct {v13, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object v8, v12

    .line 73
    .local v8, "thread":Ljava/lang/Thread;
    move-object v12, v8

    move-object v13, v6

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 74
    move-object v12, v8

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 75
    move-object v12, v8

    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 76
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Added device "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v6

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  touch="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v7

    invoke-virtual {v14}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->isTouch()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  multiTouch="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v7

    invoke-virtual {v14}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->isMultiTouch()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  relative="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v7

    invoke-virtual {v14}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->isRelative()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  5-way="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v7

    invoke-virtual {v14}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->is5Way()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  fullKeyboard="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v7

    invoke-virtual {v14}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->isFullKeyboard()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  PRODUCT="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v7

    invoke-virtual {v14}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->getProduct()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 83
    const/4 v12, 0x0

    move v9, v12

    .local v9, "axis":S
    :goto_2
    move v12, v9

    const/16 v13, 0x3f

    if-ge v12, v13, :cond_4

    .line 84
    move-object v12, v7

    move v13, v9

    .line 85
    invoke-virtual {v12, v13}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->getAbsoluteInputCapabilities(I)Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;

    move-result-object v12

    move-object v10, v12

    .line 86
    .local v10, "caps":Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;
    move-object v12, v10

    if-eqz v12, :cond_3

    .line 87
    const-string v12, "EV_ABS"

    move v13, v9

    invoke-static {v12, v13}, Lcom/sun/glass/ui/monocle/LinuxInput;->codeToString(Ljava/lang/String;S)Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    .line 88
    .local v11, "axisName":Ljava/lang/String;
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "  ABSVAL %s %d\n"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x0

    move-object/from16 v17, v11

    aput-object v17, v15, v16

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x1

    move-object/from16 v17, v10

    .line 89
    invoke-virtual/range {v17 .. v17}, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;->getValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    .line 88
    invoke-virtual {v12, v13, v14}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v12

    .line 90
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "  ABSMIN %s %d\n"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x0

    move-object/from16 v17, v11

    aput-object v17, v15, v16

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x1

    move-object/from16 v17, v10

    .line 91
    invoke-virtual/range {v17 .. v17}, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;->getMinimum()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    .line 90
    invoke-virtual {v12, v13, v14}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v12

    .line 92
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "  ABSMAX %s %d\n"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x0

    move-object/from16 v17, v11

    aput-object v17, v15, v16

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x1

    move-object/from16 v17, v10

    .line 93
    invoke-virtual/range {v17 .. v17}, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;->getMaximum()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    .line 92
    invoke-virtual {v12, v13, v14}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v12

    .line 94
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "  ABSFUZZ %s %d\n"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x0

    move-object/from16 v17, v11

    aput-object v17, v15, v16

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x1

    move-object/from16 v17, v10

    .line 95
    invoke-virtual/range {v17 .. v17}, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;->getFuzz()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    .line 94
    invoke-virtual {v12, v13, v14}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v12

    .line 96
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "  ABSFLAT %s %d\n"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x0

    move-object/from16 v17, v11

    aput-object v17, v15, v16

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x1

    move-object/from16 v17, v10

    .line 97
    invoke-virtual/range {v17 .. v17}, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;->getFlat()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    .line 96
    invoke-virtual {v12, v13, v14}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v12

    .line 98
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "  ABSRES %s %d\n"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x0

    move-object/from16 v17, v11

    aput-object v17, v15, v16

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x1

    move-object/from16 v17, v10

    .line 99
    invoke-virtual/range {v17 .. v17}, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;->getResolution()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    .line 98
    invoke-virtual {v12, v13, v14}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v12

    .line 83
    .end local v11    # "axisName":Ljava/lang/String;
    :cond_3
    move v12, v9

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    int-to-short v12, v12

    move v9, v12

    goto/16 :goto_2

    .line 102
    .end local v10    # "caps":Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;
    :cond_4
    sget-object v12, Lcom/sun/glass/ui/monocle/GetEvent;->devices:Ljava/util/Set;

    move-object v13, v5

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 103
    .line 108
    .line 110
    .end local v4    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "sysPath":Ljava/io/File;
    .end local v6    # "devNode":Ljava/lang/String;
    .end local v7    # "device":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    .end local v8    # "thread":Ljava/lang/Thread;
    .end local v9    # "axis":S
    :cond_5
    :goto_3
    goto/16 :goto_1

    .line 103
    .restart local v4    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "sysPath":Ljava/io/File;
    .restart local v6    # "devNode":Ljava/lang/String;
    :cond_6
    move-object v12, v0

    const-string v13, "remove"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 104
    sget-object v12, Lcom/sun/glass/ui/monocle/GetEvent;->devices:Ljava/util/Set;

    move-object v13, v3

    invoke-interface {v12, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v12

    goto :goto_3

    .line 106
    .end local v5    # "sysPath":Ljava/io/File;
    .end local v6    # "devNode":Ljava/lang/String;
    :catch_0
    move-exception v12

    :goto_4
    move-object v5, v12

    .line 107
    .local v5, "e":Ljava/lang/Exception;
    move-object v12, v5

    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 106
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v12

    goto :goto_4
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "argv":[Ljava/lang/String;
    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v2

    move-object v1, v2

    .line 114
    .local v1, "platform":Lcom/sun/glass/ui/monocle/NativePlatform;
    invoke-static {}, Lcom/sun/glass/ui/monocle/Udev;->getInstance()Lcom/sun/glass/ui/monocle/Udev;

    move-result-object v2

    sget-object v3, Lcom/sun/glass/ui/monocle/GetEvent;->udevListener:Lcom/sun/glass/ui/monocle/UdevListener;

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/Udev;->addListener(Lcom/sun/glass/ui/monocle/UdevListener;)V

    .line 116
    const-string v2, "input"

    invoke-static {v2}, Lcom/sun/glass/ui/monocle/SysFS;->triggerUdevNotification(Ljava/lang/String;)V

    .line 117
    new-instance v2, Ljava/lang/Thread;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/NativePlatform;->getRunnableProcessor()Lcom/sun/glass/ui/monocle/RunnableProcessor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 118
    return-void
.end method

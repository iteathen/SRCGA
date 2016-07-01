.class Lcom/sun/glass/ui/monocle/LinuxTouchTransform;
.super Ljava/lang/Object;
.source "LinuxTouchTransform.java"


# instance fields
.field private axes:[I

.field private device:Lcom/sun/glass/ui/monocle/LinuxInputDevice;

.field private flipXY:Z

.field private maxs:[I

.field private mins:[I

.field private scalars:[D

.field private translates:[D


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)V
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxTouchTransform;
    move-object v1, p1

    .local v1, "device":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->axes:[I

    .line 49
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [D

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->translates:[D

    .line 50
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [D

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->scalars:[D

    .line 52
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->mins:[I

    .line 53
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->maxs:[I

    .line 56
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->device:Lcom/sun/glass/ui/monocle/LinuxInputDevice;

    .line 57
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->axes:[I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 58
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->getProduct()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 59
    .local v2, "product":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/sun/glass/ui/monocle/LinuxTouchTransform$$Lambda$1;->lambdaFactory$(Lcom/sun/glass/ui/monocle/LinuxTouchTransform;Ljava/lang/String;)Ljava/security/PrivilegedAction;

    move-result-object v3

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    .line 64
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/glass/ui/monocle/LinuxTouchTransform;Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->lambda$new$103(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/sun/glass/ui/monocle/LinuxTouchTransform;Ljava/lang/String;Ljava/lang/String;Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;ID)Ljava/lang/Void;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move v11, v4

    move-wide v12, v5

    invoke-direct/range {v7 .. v13}, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->lambda$initTransform$104(Ljava/lang/String;Ljava/lang/String;Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;ID)Ljava/lang/Void;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method private initTransform(II)V
    .locals 15

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxTouchTransform;
    move/from16 v1, p1

    .local v1, "axis":I
    move/from16 v2, p2

    .local v2, "index":I
    move v8, v1

    sparse-switch v8, :sswitch_data_0

    .line 135
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->translates:[D

    move v9, v2

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v9

    .line 136
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->scalars:[D

    move v9, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    aput-wide v10, v8, v9

    .line 137
    .line 152
    :goto_0
    return-void

    .line 122
    :sswitch_0
    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v8

    .line 123
    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/NativePlatform;->getScreen()Lcom/sun/glass/ui/monocle/NativeScreen;

    move-result-object v8

    invoke-interface {v8}, Lcom/sun/glass/ui/monocle/NativeScreen;->getWidth()I

    move-result v8

    int-to-double v8, v8

    move-wide v3, v8

    .line 124
    .local v3, "range":D
    const-string v8, "X"

    move-object v5, v8

    .line 139
    .local v5, "axisName":Ljava/lang/String;
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->device:Lcom/sun/glass/ui/monocle/LinuxInputDevice;

    move v9, v1

    invoke-virtual {v8, v9}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->getAbsoluteInputCapabilities(I)Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;

    move-result-object v8

    move-object v6, v8

    .line 140
    .local v6, "caps":Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->device:Lcom/sun/glass/ui/monocle/LinuxInputDevice;

    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->getProduct()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 141
    .local v7, "product":Ljava/lang/String;
    move-object v8, v0

    move-object v9, v7

    move-object v10, v5

    move-object v11, v6

    move v12, v2

    move-wide v13, v3

    invoke-static/range {v8 .. v14}, Lcom/sun/glass/ui/monocle/LinuxTouchTransform$$Lambda$2;->lambdaFactory$(Lcom/sun/glass/ui/monocle/LinuxTouchTransform;Ljava/lang/String;Ljava/lang/String;Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;ID)Ljava/security/PrivilegedAction;

    move-result-object v8

    invoke-static {v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v8

    .line 152
    goto :goto_0

    .line 128
    .end local v3    # "range":D
    .end local v5    # "axisName":Ljava/lang/String;
    .end local v6    # "caps":Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;
    .end local v7    # "product":Ljava/lang/String;
    :sswitch_1
    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v8

    .line 129
    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/NativePlatform;->getScreen()Lcom/sun/glass/ui/monocle/NativeScreen;

    move-result-object v8

    invoke-interface {v8}, Lcom/sun/glass/ui/monocle/NativeScreen;->getHeight()I

    move-result v8

    int-to-double v8, v8

    move-wide v3, v8

    .line 130
    .restart local v3    # "range":D
    const-string v8, "Y"

    move-object v5, v8

    .line 131
    .restart local v5    # "axisName":Ljava/lang/String;
    goto :goto_1

    .line 119
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x35 -> :sswitch_0
        0x36 -> :sswitch_1
    .end sparse-switch
.end method

.method private synthetic lambda$initTransform$104(Ljava/lang/String;Ljava/lang/String;Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;ID)Ljava/lang/Void;
    .locals 17

    .prologue
    .line 142
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/LinuxTouchTransform;
    move-object/from16 v2, p1

    .local v2, "product":Ljava/lang/String;
    move-object/from16 v3, p2

    .local v3, "axisName":Ljava/lang/String;
    move-object/from16 v4, p3

    .local v4, "caps":Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;
    move/from16 v5, p4

    .local v5, "index":I
    move-wide/from16 v6, p5

    .local v6, "range":D
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "monocle.input."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".min"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v11, v4

    .line 144
    invoke-virtual {v11}, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;->getMinimum()I

    move-result v11

    .line 142
    invoke-static {v10, v11}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move v8, v10

    .line 145
    .local v8, "minimum":I
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "monocle.input."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".max"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v11, v4

    .line 147
    invoke-virtual {v11}, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;->getMaximum()I

    move-result v11

    .line 145
    invoke-static {v10, v11}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move v9, v10

    .line 148
    .local v9, "maximum":I
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->translates:[D

    move v11, v5

    move v12, v8

    neg-int v12, v12

    int-to-double v12, v12

    aput-wide v12, v10, v11

    .line 149
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->scalars:[D

    move v11, v5

    move-wide v12, v6

    move v14, v9

    move v15, v8

    sub-int/2addr v14, v15

    int-to-double v14, v14

    div-double/2addr v12, v14

    aput-wide v12, v10, v11

    .line 150
    const/4 v10, 0x0

    move-object v1, v10

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/LinuxTouchTransform;
    return-object v1
.end method

.method private synthetic lambda$new$103(Ljava/lang/String;)Ljava/lang/Void;
    .locals 6

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxTouchTransform;
    move-object v1, p1

    .local v1, "product":Ljava/lang/String;
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "monocle.input."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".flipXY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->flipXY:Z

    .line 62
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxTouchTransform;
    return-object v0
.end method

.method private transform(II)I
    .locals 8

    .prologue
    .line 155
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/LinuxTouchTransform;
    move v2, p1

    .local v2, "index":I
    move v3, p2

    .local v3, "value":I
    move v4, v3

    int-to-double v4, v4

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->translates:[D

    move v7, v2

    aget-wide v6, v6, v7

    add-double/2addr v4, v6

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->scalars:[D

    move v7, v2

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    move v1, v4

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/LinuxTouchTransform;
    return v1
.end method


# virtual methods
.method getAxis(Lcom/sun/glass/ui/monocle/LinuxEventBuffer;)I
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxTouchTransform;
    move-object v1, p1

    .local v1, "buffer":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventCode()S

    move-result v3

    move v2, v3

    .line 102
    .local v2, "axis":I
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->flipXY:Z

    if-eqz v3, :cond_0

    .line 103
    move v3, v2

    sparse-switch v3, :sswitch_data_0

    .line 109
    move v3, v2

    move v0, v3

    .line 112
    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxTouchTransform;
    :goto_0
    return v0

    .line 104
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxTouchTransform;
    :sswitch_0
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 105
    :sswitch_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 106
    :sswitch_2
    const/16 v3, 0x36

    move v0, v3

    goto :goto_0

    .line 107
    :sswitch_3
    const/16 v3, 0x35

    move v0, v3

    goto :goto_0

    .line 112
    :cond_0
    move v3, v2

    move v0, v3

    goto :goto_0

    .line 103
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x35 -> :sswitch_2
        0x36 -> :sswitch_3
    .end sparse-switch
.end method

.method getValue(Lcom/sun/glass/ui/monocle/LinuxEventBuffer;)I
    .locals 9

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxTouchTransform;
    move-object v1, p1

    .local v1, "buffer":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventCode()S

    move-result v5

    move v2, v5

    .line 74
    .local v2, "axis":I
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventValue()I

    move-result v5

    move v3, v5

    .line 76
    .local v3, "value":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->axes:[I

    array-length v6, v6

    if-ge v5, v6, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->axes:[I

    move v6, v4

    aget v5, v5, v6

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 77
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->axes:[I

    move v6, v4

    aget v5, v5, v6

    move v6, v2

    if-ne v5, v6, :cond_0

    .line 78
    move-object v5, v0

    move v6, v4

    move v7, v3

    invoke-direct {v5, v6, v7}, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->transform(II)I

    move-result v5

    move v0, v5

    .line 90
    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxTouchTransform;
    :goto_1
    return v0

    .line 76
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxTouchTransform;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    :cond_1
    move v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->axes:[I

    array-length v6, v6

    if-ne v5, v6, :cond_2

    .line 82
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->axes:[I

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->axes:[I

    array-length v7, v7

    const/4 v8, 0x2

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    iput-object v6, v5, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->axes:[I

    .line 83
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->axes:[I

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->axes:[I

    array-length v7, v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Ljava/util/Arrays;->fill([IIII)V

    .line 84
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->translates:[D

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->translates:[D

    array-length v7, v7

    const/4 v8, 0x2

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v6

    iput-object v6, v5, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->translates:[D

    .line 85
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->scalars:[D

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->scalars:[D

    array-length v7, v7

    const/4 v8, 0x2

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v6

    iput-object v6, v5, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->scalars:[D

    .line 86
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->mins:[I

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->mins:[I

    array-length v7, v7

    const/4 v8, 0x2

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    iput-object v6, v5, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->mins:[I

    .line 87
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->maxs:[I

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->maxs:[I

    array-length v7, v7

    const/4 v8, 0x2

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    iput-object v6, v5, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->maxs:[I

    .line 89
    :cond_2
    move-object v5, v0

    move v6, v2

    move v7, v4

    invoke-direct {v5, v6, v7}, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->initTransform(II)V

    .line 90
    move-object v5, v0

    move v6, v4

    move v7, v3

    invoke-direct {v5, v6, v7}, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->transform(II)I

    move-result v5

    move v0, v5

    goto :goto_1
.end method

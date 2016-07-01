.class Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;
.super Ljava/lang/Object;
.source "LinuxAbsoluteInputCapabilities.java"


# instance fields
.field private flat:I

.field private fuzz:I

.field private maximum:I

.field private minimum:I

.field private resolution:I

.field private value:I


# direct methods
.method constructor <init>(IIIIII)V
    .locals 9

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;
    move v1, p1

    .local v1, "value":I
    move v2, p2

    .local v2, "maximum":I
    move v3, p3

    .local v3, "minimum":I
    move v4, p4

    .local v4, "fuzz":I
    move v5, p5

    .local v5, "flat":I
    move v6, p6

    .local v6, "resolution":I
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 47
    move-object v7, v0

    move v8, v1

    iput v8, v7, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;->value:I

    .line 48
    move-object v7, v0

    move v8, v2

    iput v8, v7, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;->maximum:I

    .line 49
    move-object v7, v0

    move v8, v3

    iput v8, v7, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;->minimum:I

    .line 50
    move-object v7, v0

    move v8, v4

    iput v8, v7, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;->fuzz:I

    .line 51
    move-object v7, v0

    move v8, v5

    iput v8, v7, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;->flat:I

    .line 52
    move-object v7, v0

    move v8, v6

    iput v8, v7, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;->resolution:I

    .line 53
    return-void
.end method

.method private constructor <init>(Lcom/sun/glass/ui/monocle/LinuxSystem;Lcom/sun/glass/ui/monocle/LinuxSystem$InputAbsInfo;JI)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;
    move-object v2, p1

    .local v2, "system":Lcom/sun/glass/ui/monocle/LinuxSystem;
    move-object v3, p2

    .local v3, "info":Lcom/sun/glass/ui/monocle/LinuxSystem$InputAbsInfo;
    move-wide/from16 v4, p3

    .local v4, "fd":J
    move/from16 v6, p5

    .local v6, "axis":I
    move-object v7, v1

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 58
    move-object v7, v2

    move-wide v8, v4

    move-object v10, v2

    move v11, v6

    invoke-virtual {v10, v11}, Lcom/sun/glass/ui/monocle/LinuxSystem;->EVIOCGABS(I)I

    move-result v10

    move-object v11, v3

    iget-wide v11, v11, Lcom/sun/glass/ui/monocle/LinuxSystem$InputAbsInfo;->p:J

    invoke-virtual/range {v7 .. v12}, Lcom/sun/glass/ui/monocle/LinuxSystem;->ioctl(JIJ)I

    move-result v7

    .line 59
    move-object v7, v1

    move-object v8, v3

    iget-wide v8, v8, Lcom/sun/glass/ui/monocle/LinuxSystem$InputAbsInfo;->p:J

    invoke-static {v8, v9}, Lcom/sun/glass/ui/monocle/LinuxSystem$InputAbsInfo;->getValue(J)I

    move-result v8

    iput v8, v7, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;->value:I

    .line 60
    move-object v7, v1

    move-object v8, v3

    iget-wide v8, v8, Lcom/sun/glass/ui/monocle/LinuxSystem$InputAbsInfo;->p:J

    invoke-static {v8, v9}, Lcom/sun/glass/ui/monocle/LinuxSystem$InputAbsInfo;->getMinimum(J)I

    move-result v8

    iput v8, v7, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;->minimum:I

    .line 61
    move-object v7, v1

    move-object v8, v3

    iget-wide v8, v8, Lcom/sun/glass/ui/monocle/LinuxSystem$InputAbsInfo;->p:J

    invoke-static {v8, v9}, Lcom/sun/glass/ui/monocle/LinuxSystem$InputAbsInfo;->getMaximum(J)I

    move-result v8

    iput v8, v7, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;->maximum:I

    .line 62
    move-object v7, v1

    move-object v8, v3

    iget-wide v8, v8, Lcom/sun/glass/ui/monocle/LinuxSystem$InputAbsInfo;->p:J

    invoke-static {v8, v9}, Lcom/sun/glass/ui/monocle/LinuxSystem$InputAbsInfo;->getFuzz(J)I

    move-result v8

    iput v8, v7, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;->fuzz:I

    .line 63
    move-object v7, v1

    move-object v8, v3

    iget-wide v8, v8, Lcom/sun/glass/ui/monocle/LinuxSystem$InputAbsInfo;->p:J

    invoke-static {v8, v9}, Lcom/sun/glass/ui/monocle/LinuxSystem$InputAbsInfo;->getFlat(J)I

    move-result v8

    iput v8, v7, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;->flat:I

    .line 64
    move-object v7, v1

    move-object v8, v3

    iget-wide v8, v8, Lcom/sun/glass/ui/monocle/LinuxSystem$InputAbsInfo;->p:J

    invoke-static {v8, v9}, Lcom/sun/glass/ui/monocle/LinuxSystem$InputAbsInfo;->getResolution(J)I

    move-result v8

    iput v8, v7, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;->resolution:I

    .line 65
    return-void
.end method

.method static getCapabilities(Ljava/io/File;Ljava/util/BitSet;)Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/BitSet;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    move-object/from16 v0, p0

    .local v0, "devNode":Ljava/io/File;
    move-object/from16 v1, p1

    .local v1, "axes":Ljava/util/BitSet;
    move-object v8, v1

    if-eqz v8, :cond_0

    move-object v8, v1

    invoke-virtual {v8}, Ljava/util/BitSet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 76
    :cond_0
    const/4 v8, 0x0

    move-object v0, v8

    .line 90
    .end local v0    # "devNode":Ljava/io/File;
    :goto_0
    return-object v0

    .line 78
    .restart local v0    # "devNode":Ljava/io/File;
    :cond_1
    invoke-static {}, Lcom/sun/glass/ui/monocle/LinuxSystem;->getLinuxSystem()Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-result-object v8

    move-object v2, v8

    .line 79
    .local v2, "system":Lcom/sun/glass/ui/monocle/LinuxSystem;
    new-instance v8, Lcom/sun/glass/ui/monocle/LinuxSystem$InputAbsInfo;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    invoke-direct {v9}, Lcom/sun/glass/ui/monocle/LinuxSystem$InputAbsInfo;-><init>()V

    move-object v3, v8

    .line 80
    .local v3, "info":Lcom/sun/glass/ui/monocle/LinuxSystem$InputAbsInfo;
    move-object v8, v2

    move-object v9, v0

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sun/glass/ui/monocle/LinuxSystem;->open(Ljava/lang/String;I)J

    move-result-wide v8

    move-wide v4, v8

    .line 81
    .local v4, "fd":J
    move-wide v8, v4

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 82
    new-instance v8, Ljava/io/IOException;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/glass/ui/monocle/LinuxSystem;->getErrorMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 84
    :cond_2
    new-instance v8, Ljava/util/HashMap;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object v6, v8

    .line 86
    .local v6, "caps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;>;"
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_1
    move-object v8, v1

    move v9, v7

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v8

    move/from16 v17, v8

    move/from16 v8, v17

    move/from16 v9, v17

    move v7, v9

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 87
    move-object v8, v6

    move v9, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v2

    move-object v13, v3

    move-wide v14, v4

    move/from16 v16, v7

    invoke-direct/range {v11 .. v16}, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;-><init>(Lcom/sun/glass/ui/monocle/LinuxSystem;Lcom/sun/glass/ui/monocle/LinuxSystem$InputAbsInfo;JI)V

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 86
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 89
    :cond_3
    move-object v8, v2

    move-wide v9, v4

    invoke-virtual {v8, v9, v10}, Lcom/sun/glass/ui/monocle/LinuxSystem;->close(J)I

    move-result v8

    .line 90
    move-object v8, v6

    move-object v0, v8

    goto :goto_0
.end method


# virtual methods
.method getFlat()I
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;->flat:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;
    return v0
.end method

.method getFuzz()I
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;->fuzz:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;
    return v0
.end method

.method getMaximum()I
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;->maximum:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;
    return v0
.end method

.method getMinimum()I
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;->minimum:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;
    return v0
.end method

.method getResolution()I
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;->resolution:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;
    return v0
.end method

.method getValue()I
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;->value:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;
    return v0
.end method

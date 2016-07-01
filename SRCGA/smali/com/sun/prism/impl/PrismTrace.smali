.class public Lcom/sun/prism/impl/PrismTrace;
.super Ljava/lang/Object;
.source "PrismTrace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/prism/impl/PrismTrace$SummaryType;
    }
.end annotation


# static fields
.field private static final enabled:Z

.field private static rttBytes:J

.field private static rttData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static texBytes:J

.field private static texData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 33
    sget-boolean v0, Lcom/sun/prism/impl/PrismSettings;->printAllocs:Z

    sput-boolean v0, Lcom/sun/prism/impl/PrismTrace;->enabled:Z

    .line 41
    sget-boolean v0, Lcom/sun/prism/impl/PrismTrace;->enabled:Z

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Ljava/util/HashMap;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sun/prism/impl/PrismTrace;->texData:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sun/prism/impl/PrismTrace;->rttData:Ljava/util/Map;

    .line 44
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Lcom/sun/prism/impl/PrismTrace$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "RTT printAlloc shutdown hook"

    invoke-direct {v2, v3}, Lcom/sun/prism/impl/PrismTrace$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 54
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/PrismTrace;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/sun/prism/impl/PrismTrace$SummaryType;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/PrismTrace$SummaryType;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/prism/impl/PrismTrace;->summary(Lcom/sun/prism/impl/PrismTrace$SummaryType;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/prism/impl/PrismTrace$SummaryType;
    return-object v0
.end method

.method private static computeSize(III)J
    .locals 10

    .prologue
    .line 74
    move v1, p0

    .local v1, "w":I
    move v2, p1

    .local v2, "h":I
    move v3, p2

    .local v3, "bpp":I
    move v6, v1

    int-to-long v6, v6

    move-wide v4, v6

    .line 75
    .local v4, "size":J
    move-wide v6, v4

    move v8, v2

    int-to-long v8, v8

    mul-long/2addr v6, v8

    move-wide v4, v6

    .line 76
    move-wide v6, v4

    move v8, v3

    int-to-long v8, v8

    mul-long/2addr v6, v8

    move-wide v4, v6

    .line 77
    move-wide v6, v4

    move-wide v1, v6

    .end local v1    # "w":I
    return-wide v1
.end method

.method public static rttCreated(JIII)V
    .locals 14

    .prologue
    .line 131
    move-wide v1, p0

    .local v1, "id":J
    move/from16 v3, p2

    .local v3, "w":I
    move/from16 v4, p3

    .local v4, "h":I
    move/from16 v5, p4

    .local v5, "bytesPerPixel":I
    sget-boolean v8, Lcom/sun/prism/impl/PrismTrace;->enabled:Z

    if-nez v8, :cond_0

    .line 140
    :goto_0
    return-void

    .line 133
    :cond_0
    move v8, v3

    move v9, v4

    move v10, v5

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismTrace;->computeSize(III)J

    move-result-wide v8

    move-wide v6, v8

    .line 134
    .local v6, "size":J
    sget-object v8, Lcom/sun/prism/impl/PrismTrace;->rttData:Ljava/util/Map;

    move-wide v9, v1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-wide v10, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 135
    sget-wide v8, Lcom/sun/prism/impl/PrismTrace;->rttBytes:J

    move-wide v10, v6

    add-long/2addr v8, v10

    sput-wide v8, Lcom/sun/prism/impl/PrismTrace;->rttBytes:J

    .line 136
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Created RTTexture: id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide v10, v1

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pixels, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/sun/prism/impl/PrismTrace$SummaryType;->TYPE_RTT:Lcom/sun/prism/impl/PrismTrace$SummaryType;

    .line 138
    invoke-static {v10}, Lcom/sun/prism/impl/PrismTrace;->summary(Lcom/sun/prism/impl/PrismTrace$SummaryType;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/sun/prism/impl/PrismTrace$SummaryType;->TYPE_ALL:Lcom/sun/prism/impl/PrismTrace$SummaryType;

    .line 139
    invoke-static {v10}, Lcom/sun/prism/impl/PrismTrace;->summary(Lcom/sun/prism/impl/PrismTrace$SummaryType;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 136
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    goto :goto_0
.end method

.method public static rttCreated(JIIJ)V
    .locals 12

    .prologue
    .line 120
    move-wide v0, p0

    .local v0, "id":J
    move v2, p2

    .local v2, "w":I
    move v3, p3

    .local v3, "h":I
    move-wide/from16 v4, p4

    .local v4, "size":J
    sget-boolean v6, Lcom/sun/prism/impl/PrismTrace;->enabled:Z

    if-nez v6, :cond_0

    .line 128
    :goto_0
    return-void

    .line 122
    :cond_0
    sget-object v6, Lcom/sun/prism/impl/PrismTrace;->rttData:Ljava/util/Map;

    move-wide v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-wide v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 123
    sget-wide v6, Lcom/sun/prism/impl/PrismTrace;->rttBytes:J

    move-wide v8, v4

    add-long/2addr v6, v8

    sput-wide v6, Lcom/sun/prism/impl/PrismTrace;->rttBytes:J

    .line 124
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Created RTTexture: id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pixels, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sun/prism/impl/PrismTrace$SummaryType;->TYPE_RTT:Lcom/sun/prism/impl/PrismTrace$SummaryType;

    .line 126
    invoke-static {v8}, Lcom/sun/prism/impl/PrismTrace;->summary(Lcom/sun/prism/impl/PrismTrace$SummaryType;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sun/prism/impl/PrismTrace$SummaryType;->TYPE_ALL:Lcom/sun/prism/impl/PrismTrace$SummaryType;

    .line 127
    invoke-static {v8}, Lcom/sun/prism/impl/PrismTrace;->summary(Lcom/sun/prism/impl/PrismTrace$SummaryType;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 124
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    goto :goto_0
.end method

.method public static rttDisposed(J)V
    .locals 10

    .prologue
    .line 143
    move-wide v0, p0

    .local v0, "id":J
    sget-boolean v3, Lcom/sun/prism/impl/PrismTrace;->enabled:Z

    if-nez v3, :cond_0

    .line 154
    :goto_0
    return-void

    .line 145
    :cond_0
    sget-object v3, Lcom/sun/prism/impl/PrismTrace;->rttData:Ljava/util/Map;

    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    move-object v2, v3

    .line 146
    .local v2, "size":Ljava/lang/Long;
    move-object v3, v2

    if-nez v3, :cond_1

    .line 147
    new-instance v3, Ljava/lang/InternalError;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disposing unknown RTTexture "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 149
    :cond_1
    sget-wide v3, Lcom/sun/prism/impl/PrismTrace;->rttBytes:J

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sput-wide v3, Lcom/sun/prism/impl/PrismTrace;->rttBytes:J

    .line 150
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disposed RTTexture: id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sun/prism/impl/PrismTrace$SummaryType;->TYPE_RTT:Lcom/sun/prism/impl/PrismTrace$SummaryType;

    .line 152
    invoke-static {v5}, Lcom/sun/prism/impl/PrismTrace;->summary(Lcom/sun/prism/impl/PrismTrace$SummaryType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sun/prism/impl/PrismTrace$SummaryType;->TYPE_ALL:Lcom/sun/prism/impl/PrismTrace$SummaryType;

    .line 153
    invoke-static {v5}, Lcom/sun/prism/impl/PrismTrace;->summary(Lcom/sun/prism/impl/PrismTrace$SummaryType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 150
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    goto :goto_0
.end method

.method private static summary(JJLjava/lang/String;)Ljava/lang/String;
    .locals 14

    .prologue
    .line 58
    move-wide v1, p0

    .local v1, "count":J
    move-wide/from16 v3, p2

    .local v3, "size":J
    move-object/from16 v5, p4

    .local v5, "label":Ljava/lang/String;
    const-string v6, "%s=%d@%,dKB"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    move-object v10, v5

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    move-wide v10, v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x2

    move-wide v10, v3

    const/16 v12, 0xa

    shr-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .end local v1    # "count":J
    return-object v1
.end method

.method private static summary(Lcom/sun/prism/impl/PrismTrace$SummaryType;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 61
    move-object v1, p0

    .local v1, "type":Lcom/sun/prism/impl/PrismTrace$SummaryType;
    sget-object v2, Lcom/sun/prism/impl/PrismTrace$2;->$SwitchMap$com$sun$prism$impl$PrismTrace$SummaryType:[I

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/prism/impl/PrismTrace$SummaryType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 70
    const-string v2, "ERROR"

    move-object v1, v2

    .end local v1    # "type":Lcom/sun/prism/impl/PrismTrace$SummaryType;
    :goto_0
    return-object v1

    .line 63
    .restart local v1    # "type":Lcom/sun/prism/impl/PrismTrace$SummaryType;
    :pswitch_0
    sget-object v2, Lcom/sun/prism/impl/PrismTrace;->texData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    int-to-long v2, v2

    sget-wide v4, Lcom/sun/prism/impl/PrismTrace;->texBytes:J

    const-string v6, " tex"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/sun/prism/impl/PrismTrace;->summary(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 65
    :pswitch_1
    sget-object v2, Lcom/sun/prism/impl/PrismTrace;->rttData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    int-to-long v2, v2

    sget-wide v4, Lcom/sun/prism/impl/PrismTrace;->rttBytes:J

    const-string v6, " rtt"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/sun/prism/impl/PrismTrace;->summary(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 67
    :pswitch_2
    sget-object v2, Lcom/sun/prism/impl/PrismTrace;->texData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    sget-object v3, Lcom/sun/prism/impl/PrismTrace;->rttData:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lcom/sun/prism/impl/PrismTrace;->texBytes:J

    sget-wide v6, Lcom/sun/prism/impl/PrismTrace;->rttBytes:J

    add-long/2addr v4, v6

    const-string v6, " combined"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/sun/prism/impl/PrismTrace;->summary(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static textureCreated(JIII)V
    .locals 14

    .prologue
    .line 93
    move-wide v1, p0

    .local v1, "id":J
    move/from16 v3, p2

    .local v3, "w":I
    move/from16 v4, p3

    .local v4, "h":I
    move/from16 v5, p4

    .local v5, "bytesPerPixel":I
    sget-boolean v8, Lcom/sun/prism/impl/PrismTrace;->enabled:Z

    if-nez v8, :cond_0

    .line 103
    :goto_0
    return-void

    .line 95
    :cond_0
    move v8, v3

    move v9, v4

    move v10, v5

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismTrace;->computeSize(III)J

    move-result-wide v8

    move-wide v6, v8

    .line 96
    .local v6, "size":J
    sget-object v8, Lcom/sun/prism/impl/PrismTrace;->texData:Ljava/util/Map;

    move-wide v9, v1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-wide v10, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 97
    sget-wide v8, Lcom/sun/prism/impl/PrismTrace;->texBytes:J

    move-wide v10, v6

    add-long/2addr v8, v10

    sput-wide v8, Lcom/sun/prism/impl/PrismTrace;->texBytes:J

    .line 98
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Created Texture: id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide v10, v1

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pixels, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/sun/prism/impl/PrismTrace$SummaryType;->TYPE_TEX:Lcom/sun/prism/impl/PrismTrace$SummaryType;

    .line 100
    invoke-static {v10}, Lcom/sun/prism/impl/PrismTrace;->summary(Lcom/sun/prism/impl/PrismTrace$SummaryType;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/sun/prism/impl/PrismTrace$SummaryType;->TYPE_ALL:Lcom/sun/prism/impl/PrismTrace$SummaryType;

    .line 101
    invoke-static {v10}, Lcom/sun/prism/impl/PrismTrace;->summary(Lcom/sun/prism/impl/PrismTrace$SummaryType;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 98
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    goto :goto_0
.end method

.method public static textureCreated(JIIJ)V
    .locals 12

    .prologue
    .line 81
    move-wide v0, p0

    .local v0, "id":J
    move v2, p2

    .local v2, "w":I
    move v3, p3

    .local v3, "h":I
    move-wide/from16 v4, p4

    .local v4, "size":J
    sget-boolean v6, Lcom/sun/prism/impl/PrismTrace;->enabled:Z

    if-nez v6, :cond_0

    .line 90
    :goto_0
    return-void

    .line 83
    :cond_0
    sget-object v6, Lcom/sun/prism/impl/PrismTrace;->texData:Ljava/util/Map;

    move-wide v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-wide v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 84
    sget-wide v6, Lcom/sun/prism/impl/PrismTrace;->texBytes:J

    move-wide v8, v4

    add-long/2addr v6, v8

    sput-wide v6, Lcom/sun/prism/impl/PrismTrace;->texBytes:J

    .line 85
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Created Texture: id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pixels, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sun/prism/impl/PrismTrace$SummaryType;->TYPE_TEX:Lcom/sun/prism/impl/PrismTrace$SummaryType;

    .line 87
    invoke-static {v8}, Lcom/sun/prism/impl/PrismTrace;->summary(Lcom/sun/prism/impl/PrismTrace$SummaryType;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sun/prism/impl/PrismTrace$SummaryType;->TYPE_ALL:Lcom/sun/prism/impl/PrismTrace$SummaryType;

    .line 88
    invoke-static {v8}, Lcom/sun/prism/impl/PrismTrace;->summary(Lcom/sun/prism/impl/PrismTrace$SummaryType;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 85
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    goto :goto_0
.end method

.method public static textureDisposed(J)V
    .locals 10

    .prologue
    .line 106
    move-wide v0, p0

    .local v0, "id":J
    sget-boolean v3, Lcom/sun/prism/impl/PrismTrace;->enabled:Z

    if-nez v3, :cond_0

    .line 117
    :goto_0
    return-void

    .line 108
    :cond_0
    sget-object v3, Lcom/sun/prism/impl/PrismTrace;->texData:Ljava/util/Map;

    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    move-object v2, v3

    .line 109
    .local v2, "size":Ljava/lang/Long;
    move-object v3, v2

    if-nez v3, :cond_1

    .line 110
    new-instance v3, Ljava/lang/InternalError;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disposing unknown Texture "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 112
    :cond_1
    sget-wide v3, Lcom/sun/prism/impl/PrismTrace;->texBytes:J

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sput-wide v3, Lcom/sun/prism/impl/PrismTrace;->texBytes:J

    .line 113
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disposed Texture: id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sun/prism/impl/PrismTrace$SummaryType;->TYPE_TEX:Lcom/sun/prism/impl/PrismTrace$SummaryType;

    .line 115
    invoke-static {v5}, Lcom/sun/prism/impl/PrismTrace;->summary(Lcom/sun/prism/impl/PrismTrace$SummaryType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sun/prism/impl/PrismTrace$SummaryType;->TYPE_ALL:Lcom/sun/prism/impl/PrismTrace$SummaryType;

    .line 116
    invoke-static {v5}, Lcom/sun/prism/impl/PrismTrace;->summary(Lcom/sun/prism/impl/PrismTrace$SummaryType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    goto :goto_0
.end method

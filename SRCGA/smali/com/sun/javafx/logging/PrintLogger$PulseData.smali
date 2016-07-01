.class final Lcom/sun/javafx/logging/PrintLogger$PulseData;
.super Ljava/lang/Object;
.source "PrintLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/logging/PrintLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PulseData"
.end annotation


# instance fields
.field counters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/javafx/logging/PrintLogger$Counter;",
            ">;"
        }
    .end annotation
.end field

.field interval:J

.field message:Ljava/lang/StringBuffer;

.field next:Lcom/sun/javafx/logging/PrintLogger$PulseData;

.field pulseCount:I

.field pushedRender:Z

.field startTime:J

.field volatile state:I

.field final synthetic this$0:Lcom/sun/javafx/logging/PrintLogger;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/logging/PrintLogger;)V
    .locals 6

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/logging/PrintLogger$PulseData;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/logging/PrintLogger$PulseData;->this$0:Lcom/sun/javafx/logging/PrintLogger;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 351
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/logging/PrintLogger$PulseData;->state:I

    .line 356
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/logging/PrintLogger$PulseData;->message:Ljava/lang/StringBuffer;

    .line 357
    move-object v2, v0

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/logging/PrintLogger$PulseData;->counters:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/logging/PrintLogger;Lcom/sun/javafx/logging/PrintLogger$1;)V
    .locals 5

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/logging/PrintLogger$PulseData;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/logging/PrintLogger;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/javafx/logging/PrintLogger$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/logging/PrintLogger$PulseData;-><init>(Lcom/sun/javafx/logging/PrintLogger;)V

    return-void
.end method

.method static synthetic access$lambda$0(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/logging/PrintLogger$PulseData;->lambda$printAndReset$24(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method private static synthetic lambda$printAndReset$24(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 4

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "a":Ljava/util/Map$Entry;
    move-object v1, p1

    .local v1, "b":Ljava/util/Map$Entry;
    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    .end local v0    # "a":Ljava/util/Map$Entry;
    return v0
.end method


# virtual methods
.method init(I)V
    .locals 6

    .prologue
    .line 360
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/logging/PrintLogger$PulseData;
    move v2, p1

    .local v2, "n":I
    move-object v3, v1

    const/4 v4, 0x1

    iput v4, v3, Lcom/sun/javafx/logging/PrintLogger$PulseData;->state:I

    .line 361
    move-object v3, v1

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/logging/PrintLogger$PulseData;->pulseCount:I

    .line 362
    move-object v3, v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/logging/PrintLogger$PulseData;->startTime:J

    .line 363
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/logging/PrintLogger$PulseData;->interval:J

    .line 364
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/logging/PrintLogger$PulseData;->pushedRender:Z

    .line 365
    return-void
.end method

.method printAndReset()V
    .locals 13

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/logging/PrintLogger$PulseData;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    move-wide v1, v8

    .line 369
    .local v1, "endTime":J
    move-wide v8, v1

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/logging/PrintLogger$PulseData;->startTime:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    move-wide v3, v8

    .line 371
    .local v3, "totalTime":J
    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/logging/PrintLogger$PulseData;->state:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    .line 372
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "\nWARNING: logging incomplete state"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 375
    :cond_0
    move-wide v8, v3

    # getter for: Lcom/sun/javafx/logging/PrintLogger;->THRESHOLD:J
    invoke-static {}, Lcom/sun/javafx/logging/PrintLogger;->access$200()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gtz v8, :cond_4

    .line 377
    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/logging/PrintLogger$PulseData;->pulseCount:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 378
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/logging/PrintLogger$PulseData;->this$0:Lcom/sun/javafx/logging/PrintLogger;

    invoke-static {v10}, Lcom/sun/javafx/logging/PrintLogger;->access$308(Lcom/sun/javafx/logging/PrintLogger;)I

    move-result v10

    const/16 v11, 0xa

    rem-int/lit8 v10, v10, 0xa

    if-nez v10, :cond_3

    const-string v10, "\n["

    :goto_0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/logging/PrintLogger$PulseData;->pulseCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/logging/PrintLogger$PulseData;->interval:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide v10, v3

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 406
    :cond_1
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/logging/PrintLogger$PulseData;->message:Ljava/lang/StringBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 407
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/logging/PrintLogger$PulseData;->counters:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 408
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Lcom/sun/javafx/logging/PrintLogger$PulseData;->state:I

    .line 409
    # getter for: Lcom/sun/javafx/logging/PrintLogger;->EXIT_ON_PULSE:I
    invoke-static {}, Lcom/sun/javafx/logging/PrintLogger;->access$400()I

    move-result v8

    if-lez v8, :cond_2

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/logging/PrintLogger$PulseData;->pulseCount:I

    # getter for: Lcom/sun/javafx/logging/PrintLogger;->EXIT_ON_PULSE:I
    invoke-static {}, Lcom/sun/javafx/logging/PrintLogger;->access$400()I

    move-result v9

    if-lt v8, v9, :cond_2

    .line 410
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exiting after pulse #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/logging/PrintLogger$PulseData;->pulseCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 411
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    .line 413
    :cond_2
    return-void

    .line 378
    :cond_3
    const-string v10, "["

    goto :goto_0

    .line 382
    :cond_4
    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/logging/PrintLogger$PulseData;->pulseCount:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    .line 383
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "\n\nINTER PULSE LOG DATA"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 393
    :goto_2
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/logging/PrintLogger$PulseData;->message:Ljava/lang/StringBuffer;

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 394
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/logging/PrintLogger$PulseData;->counters:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 395
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Counters:"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 396
    new-instance v8, Ljava/util/ArrayList;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/logging/PrintLogger$PulseData;->counters:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v8

    .line 397
    .local v5, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sun/javafx/logging/PrintLogger$Counter;>;>;"
    move-object v8, v5

    invoke-static {}, Lcom/sun/javafx/logging/PrintLogger$PulseData$$Lambda$1;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 398
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    :goto_3
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v7, v8

    .line 399
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sun/javafx/logging/PrintLogger$Counter;>;"
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v7

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v7

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/logging/PrintLogger$Counter;

    iget v10, v10, Lcom/sun/javafx/logging/PrintLogger$Counter;->value:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 400
    goto :goto_3

    .line 386
    .end local v5    # "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sun/javafx/logging/PrintLogger$Counter;>;>;"
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sun/javafx/logging/PrintLogger$Counter;>;"
    :cond_5
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n\nPULSE: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/logging/PrintLogger$PulseData;->pulseCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/logging/PrintLogger$PulseData;->interval:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide v10, v3

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 388
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/javafx/logging/PrintLogger$PulseData;->pushedRender:Z

    if-nez v8, :cond_6

    .line 389
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, " Required No Rendering"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 391
    :cond_6
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v8}, Ljava/io/PrintStream;->println()V

    goto/16 :goto_2

    .line 402
    :cond_7
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/logging/PrintLogger$PulseData;->this$0:Lcom/sun/javafx/logging/PrintLogger;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/sun/javafx/logging/PrintLogger;->access$302(Lcom/sun/javafx/logging/PrintLogger;I)I

    move-result v8

    goto/16 :goto_1
.end method

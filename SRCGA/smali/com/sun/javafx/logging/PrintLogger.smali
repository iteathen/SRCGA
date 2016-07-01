.class Lcom/sun/javafx/logging/PrintLogger;
.super Lcom/sun/javafx/logging/Logger;
.source "PrintLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/logging/PrintLogger$PulseData;,
        Lcom/sun/javafx/logging/PrintLogger$Counter;,
        Lcom/sun/javafx/logging/PrintLogger$ThreadLocalData;
    }
.end annotation


# static fields
.field private static final AVAILABLE:I = 0x0

.field private static final COMPLETE:I = 0x2

.field private static final EXIT_ON_PULSE:I

.field private static final INCOMPLETE:I = 0x1

.field private static final INTER_PULSE_DATA:I = -0x1

.field private static THRESHOLD:J

.field private static printLogger:Lcom/sun/javafx/logging/PrintLogger;


# instance fields
.field private active:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile fxData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

.field private fxThread:Ljava/lang/Thread;

.field private head:Lcom/sun/javafx/logging/PrintLogger$PulseData;

.field private lastPulseStartTime:J

.field private final phaseData:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/sun/javafx/logging/PrintLogger$ThreadLocalData;",
            ">;"
        }
    .end annotation
.end field

.field private pulseCount:I

.field private volatile renderData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

.field private tail:Lcom/sun/javafx/logging/PrintLogger$PulseData;

.field private volatile wrapCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/sun/javafx/logging/PrintLogger$$Lambda$2;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    .line 64
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/sun/javafx/logging/PrintLogger;->THRESHOLD:J

    .line 69
    invoke-static {}, Lcom/sun/javafx/logging/PrintLogger$$Lambda$3;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    .line 70
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/sun/javafx/logging/PrintLogger;->EXIT_ON_PULSE:I

    .line 69
    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/logging/PrintLogger;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/logging/Logger;-><init>()V

    .line 76
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Lcom/sun/javafx/logging/PrintLogger;->pulseCount:I

    .line 92
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/logging/PrintLogger;->wrapCount:I

    .line 111
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/logging/PrintLogger$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/logging/PrintLogger$1;-><init>(Lcom/sun/javafx/logging/PrintLogger;)V

    iput-object v2, v1, Lcom/sun/javafx/logging/PrintLogger;->phaseData:Ljava/lang/ThreadLocal;

    .line 145
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/logging/PrintLogger$PulseData;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/logging/PrintLogger$PulseData;-><init>(Lcom/sun/javafx/logging/PrintLogger;Lcom/sun/javafx/logging/PrintLogger$1;)V

    iput-object v2, v1, Lcom/sun/javafx/logging/PrintLogger;->head:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    .line 146
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/logging/PrintLogger$PulseData;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/logging/PrintLogger$PulseData;-><init>(Lcom/sun/javafx/logging/PrintLogger;Lcom/sun/javafx/logging/PrintLogger$1;)V

    iput-object v2, v1, Lcom/sun/javafx/logging/PrintLogger;->tail:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    .line 147
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/logging/PrintLogger;->head:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/logging/PrintLogger;->tail:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    iput-object v2, v1, Lcom/sun/javafx/logging/PrintLogger$PulseData;->next:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    .line 148
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, v1, Lcom/sun/javafx/logging/PrintLogger;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 149
    return-void
.end method

.method static synthetic access$200()J
    .locals 2

    .prologue
    .line 50
    sget-wide v0, Lcom/sun/javafx/logging/PrintLogger;->THRESHOLD:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/sun/javafx/logging/PrintLogger;I)I
    .locals 7

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/logging/PrintLogger;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/javafx/logging/PrintLogger;->wrapCount:I

    move v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/logging/PrintLogger;
    return v0
.end method

.method static synthetic access$308(Lcom/sun/javafx/logging/PrintLogger;)I
    .locals 7

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/logging/PrintLogger;
    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget v2, v2, Lcom/sun/javafx/logging/PrintLogger;->wrapCount:I

    move-object v5, v1

    move v6, v2

    move v1, v6

    move-object v2, v5

    move v3, v6

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/javafx/logging/PrintLogger;->wrapCount:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/logging/PrintLogger;
    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/sun/javafx/logging/PrintLogger;->EXIT_ON_PULSE:I

    return v0
.end method

.method static synthetic access$lambda$0()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/logging/PrintLogger;->lambda$getInstance$23()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/logging/PrintLogger;->lambda$static$21()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$2()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/logging/PrintLogger;->lambda$static$22()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private allocate(I)Lcom/sun/javafx/logging/PrintLogger$PulseData;
    .locals 8

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/logging/PrintLogger;
    move v1, p1

    .local v1, "n":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/logging/PrintLogger;->head:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/logging/PrintLogger;->tail:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/logging/PrintLogger;->head:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    iget v3, v3, Lcom/sun/javafx/logging/PrintLogger$PulseData;->state:I

    if-nez v3, :cond_0

    .line 167
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/logging/PrintLogger;->head:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    move-object v2, v3

    .line 168
    .local v2, "res":Lcom/sun/javafx/logging/PrintLogger$PulseData;
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/logging/PrintLogger;->head:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    iget-object v4, v4, Lcom/sun/javafx/logging/PrintLogger$PulseData;->next:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    iput-object v4, v3, Lcom/sun/javafx/logging/PrintLogger;->head:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    .line 169
    move-object v3, v2

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/logging/PrintLogger$PulseData;->next:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    .line 174
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/logging/PrintLogger;->tail:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/logging/PrintLogger$PulseData;->next:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    .line 175
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/logging/PrintLogger;->tail:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    .line 176
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/logging/PrintLogger$PulseData;->init(I)V

    .line 177
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/logging/PrintLogger;
    return-object v0

    .line 172
    .end local v2    # "res":Lcom/sun/javafx/logging/PrintLogger$PulseData;
    .restart local v0    # "this":Lcom/sun/javafx/logging/PrintLogger;
    :cond_0
    new-instance v3, Lcom/sun/javafx/logging/PrintLogger$PulseData;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/logging/PrintLogger$PulseData;-><init>(Lcom/sun/javafx/logging/PrintLogger;Lcom/sun/javafx/logging/PrintLogger$1;)V

    move-object v2, v3

    .restart local v2    # "res":Lcom/sun/javafx/logging/PrintLogger$PulseData;
    goto :goto_0
.end method

.method public static getInstance()Lcom/sun/javafx/logging/Logger;
    .locals 4

    .prologue
    .line 152
    sget-object v1, Lcom/sun/javafx/logging/PrintLogger;->printLogger:Lcom/sun/javafx/logging/PrintLogger;

    if-nez v1, :cond_0

    .line 153
    invoke-static {}, Lcom/sun/javafx/logging/PrintLogger$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v1

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .line 154
    .local v0, "enabled":Z
    move v1, v0

    if-eqz v1, :cond_0

    .line 155
    new-instance v1, Lcom/sun/javafx/logging/PrintLogger;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/logging/PrintLogger;-><init>()V

    sput-object v1, Lcom/sun/javafx/logging/PrintLogger;->printLogger:Lcom/sun/javafx/logging/PrintLogger;

    .line 158
    :cond_0
    sget-object v1, Lcom/sun/javafx/logging/PrintLogger;->printLogger:Lcom/sun/javafx/logging/PrintLogger;

    move-object v0, v1

    .end local v0    # "enabled":Z
    return-object v0
.end method

.method private static synthetic lambda$getInstance$23()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 153
    const-string v0, "javafx.pulseLogger"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$21()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 64
    const-string v0, "javafx.pulseLogger.threshold"

    const/16 v1, 0x11

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$22()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 70
    const-string v0, "javafx.pulseLogger.exitOnPulse"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/logging/PrintLogger;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/logging/PrintLogger;->fxThread:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/logging/PrintLogger;->fxThread:Ljava/lang/Thread;

    if-ne v3, v4, :cond_2

    .line 268
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/logging/PrintLogger;->fxData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    if-nez v3, :cond_1

    .line 269
    move-object v3, v0

    move-object v4, v0

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Lcom/sun/javafx/logging/PrintLogger;->allocate(I)Lcom/sun/javafx/logging/PrintLogger$PulseData;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/logging/PrintLogger;->fxData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    .line 271
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/logging/PrintLogger;->fxData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    move-object v2, v3

    .line 276
    .local v2, "pulseData":Lcom/sun/javafx/logging/PrintLogger$PulseData;
    :goto_0
    move-object v3, v2

    if-nez v3, :cond_3

    .line 277
    .line 285
    :goto_1
    return-void

    .line 274
    .end local v2    # "pulseData":Lcom/sun/javafx/logging/PrintLogger$PulseData;
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/logging/PrintLogger;->renderData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    move-object v2, v3

    .restart local v2    # "pulseData":Lcom/sun/javafx/logging/PrintLogger$PulseData;
    goto :goto_0

    .line 279
    :cond_3
    move-object v3, v2

    iget-object v3, v3, Lcom/sun/javafx/logging/PrintLogger$PulseData;->message:Ljava/lang/StringBuffer;

    const-string v4, "T"

    .line 280
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 281
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " : "

    .line 282
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object v4, v1

    .line 283
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    .line 284
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 285
    goto :goto_1
.end method

.method public incrementCounter(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/logging/PrintLogger;
    move-object v1, p1

    .local v1, "counter":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/logging/PrintLogger;->fxThread:Ljava/lang/Thread;

    if-eqz v5, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/logging/PrintLogger;->fxThread:Ljava/lang/Thread;

    if-ne v5, v6, :cond_2

    .line 295
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/logging/PrintLogger;->fxData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    if-nez v5, :cond_1

    .line 296
    move-object v5, v0

    move-object v6, v0

    const/4 v7, -0x1

    invoke-direct {v6, v7}, Lcom/sun/javafx/logging/PrintLogger;->allocate(I)Lcom/sun/javafx/logging/PrintLogger$PulseData;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/logging/PrintLogger;->fxData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    .line 298
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/logging/PrintLogger;->fxData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    move-object v2, v5

    .line 303
    .local v2, "pulseData":Lcom/sun/javafx/logging/PrintLogger$PulseData;
    :goto_0
    move-object v5, v2

    if-nez v5, :cond_3

    .line 304
    .line 313
    :goto_1
    return-void

    .line 301
    .end local v2    # "pulseData":Lcom/sun/javafx/logging/PrintLogger$PulseData;
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/logging/PrintLogger;->renderData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    move-object v2, v5

    .restart local v2    # "pulseData":Lcom/sun/javafx/logging/PrintLogger$PulseData;
    goto :goto_0

    .line 306
    :cond_3
    move-object v5, v2

    iget-object v5, v5, Lcom/sun/javafx/logging/PrintLogger$PulseData;->counters:Ljava/util/Map;

    move-object v3, v5

    .line 307
    .local v3, "counters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sun/javafx/logging/PrintLogger$Counter;>;"
    move-object v5, v3

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/logging/PrintLogger$Counter;

    move-object v4, v5

    .line 308
    .local v4, "cval":Lcom/sun/javafx/logging/PrintLogger$Counter;
    move-object v5, v4

    if-nez v5, :cond_4

    .line 309
    new-instance v5, Lcom/sun/javafx/logging/PrintLogger$Counter;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/sun/javafx/logging/PrintLogger$Counter;-><init>(Lcom/sun/javafx/logging/PrintLogger$1;)V

    move-object v4, v5

    .line 310
    move-object v5, v3

    move-object v6, v1

    move-object v7, v4

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 312
    :cond_4
    move-object v5, v4

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Lcom/sun/javafx/logging/PrintLogger$Counter;->value:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/logging/PrintLogger$Counter;->value:I

    .line 313
    goto :goto_1
.end method

.method public newPhase(Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 317
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/logging/PrintLogger;
    move-object v2, p1

    .local v2, "name":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    move-wide v3, v7

    .line 319
    .local v3, "curTime":J
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/logging/PrintLogger;->phaseData:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/logging/PrintLogger$ThreadLocalData;

    move-object v5, v7

    .line 320
    .local v5, "curPhase":Lcom/sun/javafx/logging/PrintLogger$ThreadLocalData;
    move-object v7, v5

    iget-object v7, v7, Lcom/sun/javafx/logging/PrintLogger$ThreadLocalData;->phaseName:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 321
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/logging/PrintLogger;->fxThread:Ljava/lang/Thread;

    if-ne v7, v8, :cond_1

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/logging/PrintLogger;->fxData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    :goto_0
    move-object v6, v7

    .line 322
    .local v6, "pulseData":Lcom/sun/javafx/logging/PrintLogger$PulseData;
    move-object v7, v6

    if-eqz v7, :cond_0

    .line 323
    move-object v7, v6

    iget-object v7, v7, Lcom/sun/javafx/logging/PrintLogger$PulseData;->message:Ljava/lang/StringBuffer;

    const-string v8, "T"

    .line 324
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 325
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " ("

    .line 326
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v5

    iget-wide v8, v8, Lcom/sun/javafx/logging/PrintLogger$ThreadLocalData;->phaseStart:J

    move-object v10, v6

    iget-wide v10, v10, Lcom/sun/javafx/logging/PrintLogger$PulseData;->startTime:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " +"

    .line 327
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-wide v8, v3

    move-object v10, v5

    iget-wide v10, v10, Lcom/sun/javafx/logging/PrintLogger$ThreadLocalData;->phaseStart:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "ms): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v5

    iget-object v8, v8, Lcom/sun/javafx/logging/PrintLogger$ThreadLocalData;->phaseName:Ljava/lang/String;

    .line 328
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\n"

    .line 329
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 332
    .end local v6    # "pulseData":Lcom/sun/javafx/logging/PrintLogger$PulseData;
    :cond_0
    move-object v7, v5

    move-object v8, v2

    iput-object v8, v7, Lcom/sun/javafx/logging/PrintLogger$ThreadLocalData;->phaseName:Ljava/lang/String;

    .line 333
    move-object v7, v5

    move-wide v8, v3

    iput-wide v8, v7, Lcom/sun/javafx/logging/PrintLogger$ThreadLocalData;->phaseStart:J

    .line 334
    return-void

    .line 321
    :cond_1
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/logging/PrintLogger;->renderData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    goto :goto_0
.end method

.method public pulseEnd()V
    .locals 3

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/logging/PrintLogger;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/logging/PrintLogger;->fxData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/logging/PrintLogger;->fxData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    iget-boolean v1, v1, Lcom/sun/javafx/logging/PrintLogger$PulseData;->pushedRender:Z

    if-nez v1, :cond_0

    .line 232
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/logging/PrintLogger;->fxData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    const/4 v2, 0x2

    iput v2, v1, Lcom/sun/javafx/logging/PrintLogger$PulseData;->state:I

    .line 233
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/logging/PrintLogger;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 234
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/logging/PrintLogger;->fxData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    invoke-virtual {v1}, Lcom/sun/javafx/logging/PrintLogger$PulseData;->printAndReset()V

    .line 235
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/logging/PrintLogger;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    .line 238
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/logging/PrintLogger;->fxData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    .line 239
    return-void
.end method

.method public pulseStart()V
    .locals 9

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/logging/PrintLogger;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/logging/PrintLogger;->fxThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 188
    move-object v1, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/logging/PrintLogger;->fxThread:Ljava/lang/Thread;

    .line 190
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/logging/PrintLogger;->fxData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    if-eqz v1, :cond_1

    .line 192
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/logging/PrintLogger;->fxData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    const/4 v2, 0x2

    iput v2, v1, Lcom/sun/javafx/logging/PrintLogger$PulseData;->state:I

    .line 193
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/logging/PrintLogger;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 194
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/logging/PrintLogger;->fxData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    invoke-virtual {v1}, Lcom/sun/javafx/logging/PrintLogger$PulseData;->printAndReset()V

    .line 195
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/logging/PrintLogger;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    .line 198
    :cond_1
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/javafx/logging/PrintLogger;->pulseCount:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/logging/PrintLogger;->pulseCount:I

    invoke-direct {v2, v3}, Lcom/sun/javafx/logging/PrintLogger;->allocate(I)Lcom/sun/javafx/logging/PrintLogger$PulseData;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/logging/PrintLogger;->fxData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    .line 199
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/logging/PrintLogger;->lastPulseStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 200
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/logging/PrintLogger;->fxData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/logging/PrintLogger;->fxData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    iget-wide v2, v2, Lcom/sun/javafx/logging/PrintLogger$PulseData;->startTime:J

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/logging/PrintLogger;->lastPulseStartTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    iput-wide v2, v1, Lcom/sun/javafx/logging/PrintLogger$PulseData;->interval:J

    .line 202
    :cond_2
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/logging/PrintLogger;->fxData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    iget-wide v2, v2, Lcom/sun/javafx/logging/PrintLogger$PulseData;->startTime:J

    iput-wide v2, v1, Lcom/sun/javafx/logging/PrintLogger;->lastPulseStartTime:J

    .line 203
    return-void
.end method

.method public renderEnd()V
    .locals 3

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/logging/PrintLogger;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/logging/PrintLogger;->newPhase(Ljava/lang/String;)V

    .line 249
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/logging/PrintLogger;->renderData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    const/4 v2, 0x2

    iput v2, v1, Lcom/sun/javafx/logging/PrintLogger$PulseData;->state:I

    .line 251
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/logging/PrintLogger;->renderData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    invoke-virtual {v1}, Lcom/sun/javafx/logging/PrintLogger$PulseData;->printAndReset()V

    .line 252
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/logging/PrintLogger;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_0

    .line 253
    .line 257
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/logging/PrintLogger;->renderData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    .line 258
    return-void

    .line 255
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/logging/PrintLogger;->renderData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    iget-object v2, v2, Lcom/sun/javafx/logging/PrintLogger$PulseData;->next:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    iput-object v2, v1, Lcom/sun/javafx/logging/PrintLogger;->renderData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    goto :goto_0
.end method

.method public renderStart()V
    .locals 3

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/logging/PrintLogger;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/logging/PrintLogger;->newPhase(Ljava/lang/String;)V

    .line 217
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/logging/PrintLogger;->fxData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/logging/PrintLogger$PulseData;->pushedRender:Z

    .line 218
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/logging/PrintLogger;->fxData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    iput-object v2, v1, Lcom/sun/javafx/logging/PrintLogger;->renderData:Lcom/sun/javafx/logging/PrintLogger$PulseData;

    .line 219
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/logging/PrintLogger;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 220
    return-void
.end method

.class Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory;
.super Ljava/lang/Object;
.source "QuantumRenderer.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/tk/quantum/QuantumRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuantumThreadFactory"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/tk/quantum/QuantumRenderer;

.field final threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    const-class v0, Lcom/sun/javafx/tk/quantum/QuantumRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/sun/javafx/tk/quantum/QuantumRenderer;)V
    .locals 7

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory;->this$0:Lcom/sun/javafx/tk/quantum/QuantumRenderer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 133
    move-object v2, v0

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/tk/quantum/QuantumRenderer;Lcom/sun/javafx/tk/quantum/QuantumRenderer$1;)V
    .locals 5

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/tk/quantum/QuantumRenderer;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/javafx/tk/quantum/QuantumRenderer$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory;-><init>(Lcom/sun/javafx/tk/quantum/QuantumRenderer;)V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory;Lcom/sun/javafx/tk/quantum/QuantumRenderer$PipelineRunnable;)Ljava/lang/Thread;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory;->lambda$newThread$396(Lcom/sun/javafx/tk/quantum/QuantumRenderer$PipelineRunnable;)Ljava/lang/Thread;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$1(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory;->lambda$null$395(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$newThread$396(Lcom/sun/javafx/tk/quantum/QuantumRenderer$PipelineRunnable;)Ljava/lang/Thread;
    .locals 7

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory;
    move-object v1, p1

    .local v1, "pipeline":Lcom/sun/javafx/tk/quantum/QuantumRenderer$PipelineRunnable;
    new-instance v3, Ljava/lang/Thread;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object v2, v3

    .line 140
    .local v2, "th":Ljava/lang/Thread;
    move-object v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QuantumRenderer-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 141
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 142
    move-object v3, v2

    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory$$Lambda$2;->lambdaFactory$()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 146
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory;
    return-object v0
.end method

.method private static synthetic lambda$null$395(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "t":Ljava/lang/Thread;
    move-object v1, p1

    .local v1, "thr":Ljava/lang/Throwable;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uncaught: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 8

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory;
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    new-instance v3, Lcom/sun/javafx/tk/quantum/QuantumRenderer$PipelineRunnable;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory;->this$0:Lcom/sun/javafx/tk/quantum/QuantumRenderer;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/tk/quantum/QuantumRenderer$PipelineRunnable;-><init>(Lcom/sun/javafx/tk/quantum/QuantumRenderer;Ljava/lang/Runnable;)V

    move-object v2, v3

    .line 137
    .local v2, "pipeline":Lcom/sun/javafx/tk/quantum/QuantumRenderer$PipelineRunnable;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory;->this$0:Lcom/sun/javafx/tk/quantum/QuantumRenderer;

    move-object v4, v0

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory;Lcom/sun/javafx/tk/quantum/QuantumRenderer$PipelineRunnable;)Ljava/security/PrivilegedAction;

    move-result-object v4

    .line 138
    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    .line 137
    invoke-static {v3, v4}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->access$302(Lcom/sun/javafx/tk/quantum/QuantumRenderer;Ljava/lang/Thread;)Ljava/lang/Thread;

    move-result-object v3

    .line 149
    sget-boolean v3, Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 151
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory;->this$0:Lcom/sun/javafx/tk/quantum/QuantumRenderer;

    invoke-static {v3}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->access$300(Lcom/sun/javafx/tk/quantum/QuantumRenderer;)Ljava/lang/Thread;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory;
    return-object v0
.end method
